<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="_42526566IndivisualAssignment.Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #808080; background-image: none;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 197px;
            height: 19px;
        }
        .auto-style10 {
            width: 1185px;
            height: 646px;
        }
        .auto-style12 {
            height: 27px;
        }
        .auto-style17 {
            height: 29px;
            width: 599px;
        }
        .auto-style21 {
            font-size: x-large;
            text-align: center;
            text-decoration: underline;
        }
        .auto-style22 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style23 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style24 {
            color: #996633;
        }
        .auto-style25 {
            text-align: left;
            height: 36px;
        }
        .auto-style32 {
            width: 95px;
            height: 435px;
        }
        .auto-style34 {
            height: 21px;
            width: 198px;
        }
        .auto-style35 {
            width: 95px;
            height: 19px;
        }
        .auto-style36 {
            height: 19px;
        }
        .auto-style37 {
            height: 435px;
        }
        .auto-style41 {
            height: 21px;
            width: 197px;
        }
        .auto-style42 {
            width: 197px;
            height: 29px;
        }
        .auto-style43 {
            height: 26px;
            text-align: center;
        }
        .auto-style44 {
            width: 117px;
            height: 29px;
        }
        .auto-style45 {
            height: 21px;
            width: 117px;
        }
        .auto-style46 {
            width: 51px;
            height: 29px;
        }
        .auto-style47 {
            height: 21px;
            width: 51px;
        }
        .auto-style48 {
            height: 26px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style25" colspan="6">
                        <strong>
                        <asp:Label ID="lblHeading" runat="server" Text="Label" CssClass="auto-style23" ForeColor="#333300"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35" colspan="2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3" class="auto-style36">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="2">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#CCCCCC" Height="399px" Width="543px">
                            <SelectedDayStyle BackColor="#666633" />
                        </asp:Calendar>
                    </td>
                    <td colspan="4" class="auto-style37">
                        <asp:Label ID="lblModule1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblModule2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblModule3" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblModule4" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblModule5" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblModule6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="6">
                        <strong>
                        <asp:Label ID="Label12" runat="server" CssClass="auto-style21" ForeColor="White" Text="Customise your study sessions"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style46">
                        <asp:Label ID="Label8" runat="server" Text="Mode Code"></asp:Label>
                    </td>
                    <td class="auto-style44">
                        <asp:Label ID="Label9" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td class="auto-style42">
                        <asp:Label ID="Label10" runat="server" Text="Duration in hours"></asp:Label>
                    </td>
                    <td class="auto-style42">
                        <asp:Label ID="Label11" runat="server" Text="Chapter to be studied"></asp:Label>
                    </td>
                    <td class="auto-style17" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style46">
                        <asp:DropDownList ID="DropDownListCode" runat="server">
                            <asp:ListItem>CMPG 211</asp:ListItem>
                            <asp:ListItem>CMPG 212</asp:ListItem>
                            <asp:ListItem>CMPG 213</asp:ListItem>
                            <asp:ListItem>CMPG 214</asp:ListItem>
                            <asp:ListItem>CMPG 215</asp:ListItem>
                            <asp:ListItem>CMPG 221</asp:ListItem>
                            <asp:ListItem>CMPG 222</asp:ListItem>
                            <asp:ListItem>CMPG 223</asp:ListItem>
                            <asp:ListItem>MTH 225</asp:ListItem>
                            <asp:ListItem>BMAN 221</asp:ListItem>
                            <asp:ListItem>WVNS 221</asp:ListItem>
                            <asp:ListItem>WVNS 211</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style44">
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style42">
                        <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style42">
                        <asp:TextBox ID="txtChapter" runat="server" Height="18px" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style17" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43" colspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style48" colspan="6">
                        <asp:Button ID="btnInsert" runat="server" OnClick="Button1_Click" Text="Insert" Width="141px" BackColor="#666633" BorderColor="Black" CssClass="auto-style24" ForeColor="White" />
                        <em>
                        <asp:Label ID="lblMessage" runat="server" Text="Label" CssClass="auto-style22" ForeColor="#333300"></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style47">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Back</asp:HyperLink>
                    </td>
                    <td class="auto-style45">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CheckSchedule.aspx">View Schedule</asp:HyperLink>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
