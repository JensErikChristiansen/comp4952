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
        int monthlyInvestment = int.Parse(dropdownMonthlyInvestment.SelectedValue);
        float interestRate = float.Parse(textBoxInterestRate.Text.ToString()) / 100;
        int numYears = int.Parse(textBoxYears.Text.ToString());
        float result = monthlyInvestment * interestRate * 12 * numYears;
        labelResult.Text = result.ToString();
    }

    protected void buttonClearClick(object sender, EventArgs e)
    {
        Page.Response.Redirect(Request.RawUrl);
    }
}