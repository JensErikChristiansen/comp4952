<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #logo {
            height: 200px;
            width: 200px;
            margin: 25px auto;
        }
        #logo img {
            width: 100%;
        }
        table {
            width: 75% !important;
            margin: 0 auto !important;
        }
        table td {
            padding: 1.5em !important;
            margin: 1.5em !important;
        }
        table td:first-child {
            text-align: right;
        }
        .error-message {
            position: absolute;
            margin-left: 10px;
            color: red;
            font-weight: bold;
        }

    </style>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
    <div id="logo">
        <img src="Images/logo.png" />
    </div>
    <form id="form1" runat="server">
    <div class="container"">
    
        <table class="table">
            <tr>
                <td>Monthly Investment</td>
                <td>
                    <asp:DropDownList ID="dropdownMonthlyInvestment" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Annual Interest Rate</td>
                <td>
                    <asp:TextBox ID="textBoxInterestRate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="interestRateRequiredValidator"
                        ControlToValidate="textBoxInterestRate"
                        Display="Dynamic"
                        ErrorMessage="Please enter an interest rate."
                        runat="server"
                        class="error-message"/> 
                    <asp:RangeValidator id="interestRangeValidator"
                       ControlToValidate="textBoxInterestRate"
                       MinimumValue="1"
                       MaximumValue="100"
                       Display="Dynamic"
                       ErrorMessage="The interest rate must be from 1 to 100!"
                       runat="server"
                       class="error-message" Type="Double"/>
                </td>
            </tr>
            <tr>
                <td>Number of Years</td>
                <td>
                    <asp:TextBox ID="textBoxYears" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="yearsRequiredValidator"
                        ControlToValidate="textBoxYears"
                        Display="Dynamic"
                        ErrorMessage="Please enter the number of years."
                        runat="server"
                        class="error-message"/> 
                    <asp:RangeValidator id="yearsRangeValidator"
                       ControlToValidate="textBoxYears"
                       MinimumValue="1"
                       MaximumValue="45"
                       Type="Integer"
                       Display="Dynamic"
                       ErrorMessage="The year must be from 1 to 45!"
                       runat="server"
                        
                       class="error-message"/>
                </td>
            </tr>
            <tr>
                <td>Future Value</td>
                <td>
                    <asp:Label ID="labelResult" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button Class="btn btn-primary btn-lg btn-block" ID="buttonCalculate" runat="server" Text="Calculate" OnClick="buttonCalculateClick" />
                </td>
                <td>
                    <asp:Button Class="btn btn-warning btn-lg" ID="buttonClear" runat="server" Text="Clear" OnClick="buttonClearClick" CausesValidation="false"/>
                </td>
            </tr>
            
        </table>
    
    </div>

    </form>
    
</body>
</html>
