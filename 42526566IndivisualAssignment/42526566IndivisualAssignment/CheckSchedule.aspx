<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckSchedule.aspx.cs" Inherits="_42526566IndivisualAssignment.CheckSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-position: 50px 0px; background-color: #808080; background-image: none; background-repeat: no-repeat;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            height: 67px;
            margin-right: 27px;
        }
        .auto-style2 {
            width: 409px;
        }
        .auto-style6 {
            height: 23px;
            text-align: left;
        }
        .auto-style9 {
            height: 137px;
        }
        .auto-style19 {
            width: 409px;
            height: 30px;
        }
        .auto-style20 {
            height: 30px;
        }
        .auto-style21 {
        }
        .auto-style22 {
            width: 76px;
        }
        .auto-style24 {
            height: 30px;
            width: 76px;
        }
        .auto-style25 {
            text-align: center;
        }
        .auto-style26 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style29 {
            color: #FFFFFF;
        }
        .auto-style30 {
            height: 22px;
        }
        .auto-style31 {
            width: 409px;
            height: 23px;
            text-align: left;
        }
        .auto-style32 {
            color: #FFFFFF;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style25" colspan="3">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style26" ForeColor="#666633" Text="THE SCHEDULE BOARD"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <strong>
                        <asp:Label ID="lblHeading" runat="server" Text="Label" ForeColor="White"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="3">
                        <asp:GridView ID="GridView1" runat="server" Width="615px" BackColor="#999966" Height="302px">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <em>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style29" Text="Update"></asp:Label>
                        </em>
                    </td>
                    <td class="auto-style32" colspan="2">Type the session you want to delete</td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Label ID="Label3" runat="server" Text="Duration:"></asp:Label>
                        <asp:TextBox ID="txtDuration" runat="server" Width="79px"></asp:TextBox>
                    </td>
                    <td class="auto-style21" colspan="2" rowspan="3">Session_ID<asp:TextBox ID="txtSession" runat="server" Width="108px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <em>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style29" Text="where"></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Module Code:"></asp:Label>
                        <asp:TextBox ID="txtModuleCode" runat="server" Width="80px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        
                        <asp:Button ID="btnUpDate" runat="server" Text="Update" BackColor="#666633" BorderColor="Black" ForeColor="White" OnClick="btnUpDate_Click1" />
                        
                    </td>
                    <td class="auto-style24">
                        <asp:Label ID="lblMessage" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="73px" OnClick="btnDelete_Click" BackColor="#666633" BorderColor="Black" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Calendar.aspx">Back</asp:HyperLink>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
