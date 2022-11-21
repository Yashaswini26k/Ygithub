<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageServices.aspx.cs" Inherits="LOCALBUSINESS.ManageServices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="servicesname" runat="server" Text="Service Names:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Software</asp:ListItem>
                            <asp:ListItem>Electronics</asp:ListItem>
                            <asp:ListItem>Home Appliances</asp:ListItem>
                            <asp:ListItem>Painting</asp:ListItem>
                            <asp:ListItem>Plumber</asp:ListItem>
                            <asp:ListItem>Hardware</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="desciptiontext" runat="server" Text="Description:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="descriptiontext" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
