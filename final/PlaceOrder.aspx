<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="final.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            height: 146px;
        }
        .auto-style2 {
            width: 146px;
        }
        .auto-style3 {
            width: 73%;
            height: 152px;
        }
        .auto-style4 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Order ID</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Order Date</td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S No" />
                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                </asp:ImageField>
                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
        </asp:GridView>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Full Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="246px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Deliver Address</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="90px" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mobile Number</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="265px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" />
        </p>
    </form>
</body>
</html>
