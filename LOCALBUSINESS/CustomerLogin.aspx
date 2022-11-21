<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="LOCALBUSINESS.MyServices" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 411px;
        }
         ul{  
    padding:0;  
    background:black;  
    font-family:Arial, sans serif;
}

li{  
    display:inline-block;
}

a{  
    display:block;  
    padding:10px;  
    color:white;  
    text-decoration:none;
}
             
footer {
  display: block;
}

        footer {
            text-align: center;
            padding: 3px;
            background-color: #333;
            color: white;
        }
        .auto-style3 {
            width: 347px;
        }
        .auto-style4 {
            height: 286px;
            width: 144px;
        }
        .auto-style5 {
            width: 347px;
            height: 286px;
        }
        .auto-style7 {
            width: 99px;
        }
        .auto-style8 {
            height: 286px;
            width: 99px;
        }
        .auto-style9 {
            height: 59px;
            width: 144px;
        }
        .auto-style10 {
            width: 347px;
            height: 59px;
        }
        .auto-style11 {
            width: 99px;
            height: 59px;
        }
        .auto-style15 {
            width: 92px;
        }
        .auto-style16 {
            height: 59px;
            width: 92px;
        }
        .auto-style17 {
            height: 286px;
            width: 92px;
        }
        .auto-style19 {
            height: 59px;
            width: 18px;
        }
        .auto-style20 {
            height: 286px;
            width: 18px;
        }
        .auto-style21 {
            width: 144px;
        }
        .auto-style22 {
            width: 18px;
        }
    </style>
</head>
<body>
 
   
    <form id="form1" runat="server">
        <div>
             <ul>
   
 <li></li>
                 <li><a href="contact.asp">Customers</a></li>
  <li><a href="news.asp">Servive Provider</a></li>
  
  <li><a href="about.asp">About</a></li>
       </ul>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="Services"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Mechanic</asp:ListItem>
                            <asp:ListItem>Doctor</asp:ListItem>
                            <asp:ListItem>Hardware</asp:ListItem>
                            <asp:ListItem>Software</asp:ListItem>
                            <asp:ListItem>Electrical</asp:ListItem>
                            <asp:ListItem>Plumber</asp:ListItem>
                            <asp:ListItem>Painter</asp:ListItem>
                            <asp:ListItem>Home Appliances</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book" />
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text="Search by name"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="searchtext" runat="server" Height="18px" Width="130px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        
                        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="174px" Width="194px" OnRowDataBound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
                    </td>
                    <td class="auto-style8">
                    </td>
                    <td class="auto-style20"></td>
                    <td class="auto-style17"></td>
                </tr>
            </table>
        </div>
     <footer>
  <p>1Crore plus trusted customers</p>
  <p>Helpdesk number:3456788767</p>
</footer>
    </form>
     </body>
</html>
