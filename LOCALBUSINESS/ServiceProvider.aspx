<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceProvider.aspx.cs" Inherits="LOCALBUSINESS.ServiceProvider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        
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
  background-color:black;
  color: white;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <ul>
   
        <li><a href="contact.asp">Customers</a></li>
        <li><a href="news.asp">Servive Provider</a></li>
        <li><a href="about.asp">About</a></li>
       </ul>
           

        </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT * FROM [servicebooking]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
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
    </form>
      <footer>
  <p>1Crore plus trusted customers</p>
  <p>Helpdesk number:3456788767</p>
</footer>
</body>
</html>
