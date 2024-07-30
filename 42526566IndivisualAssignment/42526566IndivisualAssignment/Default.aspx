<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_42526566IndivisualAssignment.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #808080; background-image: url('TheOne.jpg');">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {            height: 46px;
        }
        .auto-style4 {
            width: 76%;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            font-size: xx-large;
            text-decoration: underline;
            color: #333300;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            text-align: center;
            height: 23px;
        }
        .auto-style15 {
            height: 23px;
        }
        .auto-style16 {
            text-align: left;
            height: 40px;
        }
        .auto-style17 {
            height: 40px;
        }
        .auto-style18 {
            font-size: x-large;
            font-style: italic;
            text-decoration: underline;
        }
        .auto-style19 {
            font-size: x-large;
        }
        .auto-style20 {
            height: 26px;
            text-align: center;
        }
        .auto-style21 {
            text-align: center;
            height: 40px;
        }
        .auto-style22 {
            height: 46px;
            text-align: center;
        }
        .auto-style23 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Exam study schedular" CssClass="auto-style8" ForeColor="#333300"></asp:Label>
                    </td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style18" ForeColor="#333300" Text="Studying made easy by organsing your study sessions!!"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Username:" CssClass="auto-style19"></asp:Label>
                        </strong>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="auto-style7" Width="118px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Email:" CssClass="auto-style19"></asp:Label>
                        </strong>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style7" Width="116px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invaild email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        
                        <asp:RadioButton ID="rdb1" runat="server" Text="1st Semester" CssClass="auto-style19" />
                        <br />
                        <asp:RadioButton ID="rdb2" runat="server" Text="2nd Semester" CssClass="auto-style19" />
                        
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <strong>
                        <asp:Label ID="lblMessage" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Button ID="btnCreateSchedule" runat="server" Text="Create schedule" OnClick="btnCreateSchedule_Click" ForeColor="White" BackColor="#666633" BorderColor="Black" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
