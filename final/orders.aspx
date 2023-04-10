<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="final.orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style8 {
            width: 359px;
        }
        .auto-style12 {
            margin-left: 198px;
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
                <asp:Button ID="Button5" runat="server" Height="43px" Text="Delivery " Width="153px" BackColor="Red" BorderColor="Black" ForeColor="White" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" BackColor="Black" BorderColor="Black" ForeColor="White" Height="42px" Text="Orders" Width="154px" OnClick="Button8_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Height="40px" Text="Log Out" Width="139px" OnClick="Button6_Click" />
            </asp:Panel>
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sampathfoodcityConnectionString15 %>" SelectCommand="SELECT * FROM [payment]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="284px" Width="740px" DataKeyNames="orderid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField HeaderText="Order ID">
                     <ItemTemplate>
                            <asp:Label ID="LabelId" runat="server" Text='<%# Eval("orderid") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Order Date">
                     <ItemTemplate>
                            <asp:Label ID="Labeldate" runat="server" Text='<%# Eval("orderdate") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer Name">
                     <ItemTemplate>
                            <asp:Label ID="Labelname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delivery Address">
                     <ItemTemplate>
                            <asp:Label ID="Labeladdress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile Number">
                     <ItemTemplate>
                            <asp:Label ID="Labelmobile" runat="server" Text='<%# Eval("mobilenumber") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="Black" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
        </asp:GridView>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button7" runat="server" BackColor="Red" CssClass="auto-style12" ForeColor="White" Height="38px" Text="Delete" Width="146px" OnClick="Button7_Click" />
        </p>
    </form>
</body>
</html>
