using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dropdownMonthlyInvestment.Items.Add(new ListItem("50", "50"));
            dropdownMonthlyInvestment.Items.Add(new ListItem("100", "100"));
            dropdownMonthlyInvestment.Items.Add(new ListItem("200", "200"));

        }
    }

    protected void buttonCalculateClick(object sender, EventArgs e)
    {
        int a = int.Parse(dropdownMonthlyInvestment.SelectedValue);
        float b = float.Parse(textBoxInterestRate.Text.ToString());
        int c = int.Parse(textBoxYears.Text.ToString());
        var i = (b / 100) / 12;
        var n = c * 12;
        var v = 1 / (1 + i);

        var z = Math.Pow((1 + i), n);
        var w = Math.Pow(v, n);

        var totala = a * ((1 - w) / i) * (1 + i) * z;
        var totalamt = a * n;
        var totalint = totala - totalamt;
        labelResult.Text = (totala).ToString();
    }

    protected void buttonClearClick(object sender, EventArgs e)
    {
        Page.Response.Redirect(Request.RawUrl);
    }
}