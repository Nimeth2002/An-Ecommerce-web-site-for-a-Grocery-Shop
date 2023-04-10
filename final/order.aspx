<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="final.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 15px;
        }
        .auto-style2 {
            width: 45%;
        }
        .auto-style5 {
            width: 203px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 748px;
        }
        .auto-style11 {
            width: 219px;
        }
        .auto-style13 {
            width: 138px;
            height: 26px;
        }
        .auto-style14 {
            width: 97px;
            height: 26px;
        }
        .auto-style15 {
            width: 219px;
            height: 26px;
        }
        .auto-style16 {
            width: 115px;
            height: 26px;
        }
        .auto-style17 {
            height: 26px;
        }
        .auto-style18 {
            width: 138px;
        }
        .auto-style19 {
            width: 97px;
        }
        .auto-style20 {
            width: 115px;
        }
        .auto-style21 {
            width: 55px;
        }
        .auto-style22 {
            width: 182px;
        }
        .auto-style23 {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="79px" BackColor="Black">
                <asp:Image ID="Image1" runat="server" Height="61px" ImageUrl="~/images/promo.lk-promo-68cc07f80b6d4a588aba675992ee3e06-removebg-preview.png" Width="66px" CssClass="auto-style8" />
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="White" Text="ADMINISTRATOR DASHBOARD"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Height="42px" Text="Products" Width="154px" BackColor="Black" BorderColor="Black" ForeColor="White" OnClick="Button4_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Height="43px" Text="Delivery " Width="153px" BackColor="Black" BorderColor="Black" ForeColor="White" OnClick="Button5_Click" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" BackColor="Red" BorderColor="Black" ForeColor="White" Height="42px" Text="Orders" Width="154px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Height="40px" Text="Log Out" Width="139px" OnClick="Button6_Click" />
            </asp:Panel>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="423px"></asp:TextBox>
        <asp:Button ID="Button9" runat="server" CssClass="auto-style1" Text="Search" OnClick="Button9_Click1" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sampathfoodcityConnectionString31 %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style21" style="font-weight: bold">Sno</td>
                <td class="auto-style22" style="font-weight: bold">Product ID</td>
                <td class="auto-style5" style="font-weight: bold">Product Name</td>
                <td class="auto-style23" style="font-weight: bold">Price</td>
                <td style="font-weight: bold">Quentity</td>
            </tr>
        </table>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" Height="160px" Width="734px">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("sno") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("ProID") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("ProName") %>'></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Quentity") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:sampathfoodcityConnectionString32 %>" SelectCommand="SELECT * FROM [Orders] WHERE ([ProName] LIKE '%' + @ProName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ProName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </form>
</body>
</html>
