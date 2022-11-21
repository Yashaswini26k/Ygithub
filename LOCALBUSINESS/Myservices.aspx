<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myservices.aspx.cs" Inherits="LOCALBUSINESS.Myservices" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
         .StarEmpty{
            background-image:url('images/empty.jfif');
            height: 100px;
            width :100px;
        }
        .StarFilled{
            background-image:url('images/filled.jfif');
            height: 100px;
            width :100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="MY SERVICES"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="serviceid" HeaderText="serviceid" SortExpression="serviceid" />
                                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            </Columns>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT * FROM [serviceprovider]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Feedback"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Rating"></asp:Label>
                    </td>
                    <td>
                        <ajaxToolkit:Rating ID="Rating1" runat="server" AutoPostBack="True" CurrentRating="1" EmptyStarCssClass="StarEmpty" FilledStarCssClass="StarFilled" StarCssClass="StarEmpty" WaitingStarCssClass="StarFilled">
                     </ajaxToolkit:Rating>
                       
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
