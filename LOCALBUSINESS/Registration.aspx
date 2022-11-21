<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LOCALBUSINESS.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
         


          body{
            background-color:#333;
        }
           div {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  font-size: 25px;
}

div {
  float: left;
}

div {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
 
}


footer {
  display: block;
}

footer {
  text-align: center;
  padding: 3px;
  background-color:#333;
  color: white;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="REGISTRATION"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nametext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="emailtext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="mobiletext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="locationtext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="citytext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="addresstext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Zipcode"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="zipcodetext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Role"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="173px">
                            <asp:ListItem Value="2">Customer</asp:ListItem>
                            <asp:ListItem Value="3">Service Provider</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="passwordtext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="confirmpasswordtext" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" Height="35px" Width="98px" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Cancel" Height="35px" Width="99px" />
                    </td>
                </tr>
            </table>
                        

        </div>
    </form>
</body>
</html>
