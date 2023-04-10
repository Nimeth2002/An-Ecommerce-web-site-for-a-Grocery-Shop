﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beverages.aspx.cs" Inherits="final.Beverages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Beverages Page</title>
    <style type="text/css">
    ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: red;
    color:black
}
        .auto-style1 {
            margin-left: 271px;
        }
        .auto-style3 {
            margin-left: 55px;
        }
        .auto-style4 {
            margin-left: 107px;
        }
        .auto-style5 {
            width: 404px;
            height: 362px;
            margin-left: 111px;
        }
        .auto-style6 {
            margin-left: 38px;
        }
        .auto-style8 {
            width: 337px;
            height: 424px;
            margin-right: 0px;
        }
        .auto-style9 {
            width: 309px;
            height: 362px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
           .navbar {
  overflow: hidden;
  background-color: #333;
}
        .navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <asp:Image ID="Image1" runat="server" Height="66px" ImageUrl="~/images/promo.lk-promo-68cc07f80b6d4a588aba675992ee3e06-removebg-preview.png" Width="78px" />
            <asp:TextBox ID="TextBox1"  placeholder="Search"  runat="server" CssClass="auto-style1" Height="28px" Width="428px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="28px" ImageUrl="~/images/search-icons-283914-removebg-preview.png" OnClick="ImageButton1_Click" Width="37px" />
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp; &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#FF3300" BorderColor="#FF3300" ForeColor="White" Height="37px" Width="87px" OnClick="Button2_Click" />
                &nbsp; &nbsp; &nbsp; &nbsp;<asp:Image ID="Image3" runat="server" Height="37px" ImageUrl="~/images/download-removebg-preview.png" Width="40px" CssClass="auto-style10" />
            &nbsp;<asp:Label ID="Label8" runat="server"></asp:Label>
            <br />
            <br />
            <br />
<div class="navbar">
  <a href="Homepage.aspx">Home</a>
  <a href="#news">About Us</a>
  <div class="dropdown">
    <button class="dropbtn">Categories 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Baby Productsaspx.aspx">Baby Products</a>
      <a href="Beverages.aspx">Beverages</a>
      <a href="Cooking.aspx">Cooking Essentials</a>
        <a href="Dairy.aspx">Dairy Products</a>
        <a href="Desserts.aspx">Desserts</a>
        <a href="Household.aspx">Household</a>
        <a href="Party.aspx">Party Items</a>
        <a href="payment.aspx">Pharmacy</a>
        <a href="Rice.aspx">Rice</a>
        <a href="Spices.aspx">Spices</a>
        <a href="Tea and Coffee.aspx">Tea and Coffee</a>
    </div>
  </div> 
</div>


        </div>
        <br /><br />
        
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="BEVERAGES" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FF3300"></asp:Label>
        
        <asp:Image ID="Image4" runat="server" Height="751px" ImageUrl="~/images/AdobeStock_279692163_Editorial_Use_Only-Beverage-FTR-new.jpg" Width="1557px" />
        <br /><br />
      <table>

      </table>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="200px" Width="200px" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="auto-style5" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
      <table border="1" class="auto-style8">
          <tr>
              <td class="auto-style9">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                  <asp:Label ID="Label9" runat="server" Text='<%# Eval("ProID") %>'></asp:Label>
                  <br />
                  <br />
                  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProName") %>' BackColor="White" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                  <br />
                  <br />
                  <asp:Image ID="Image5" runat="server" CssClass="auto-style3" Height="161px" ImageUrl='<%# Eval("Image") %>' Width="199px" />
                  <br />
                  <br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Price"></asp:Label>
                  &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Rs."></asp:Label>
&nbsp;
                  <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("Price") %>'></asp:Label>
                  <br />
                  <br />
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style4" Height="41px" Width="72px">
                      <asp:ListItem>1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3</asp:ListItem>
                      <asp:ListItem>4</asp:ListItem>
                      <asp:ListItem>5</asp:ListItem>
                  </asp:DropDownList>
                  <br />
                  <br />
                  <asp:Button ID="Button3" runat="server" BackColor="Red" CssClass="auto-style6" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="42px" Text="Add To Cart" Width="216px" CommandArgument='<%# Eval("ProID") %>' CommandName="addtocart" OnClick="Button3_Click" />
              </td>
          </tr>
      </table>
              
            
              </ItemTemplate>
                </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sampathfoodcityConnectionString %>" SelectCommand="SELECT [ProName], [Price], [Image], [ProID] FROM [product] WHERE ([Category] = @Category)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Beverages" Name="Category" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sampathfoodcityConnectionString18 %>" SelectCommand="SELECT [ProID], [ProName], [Price], [Image] FROM [product] WHERE ([ProName] LIKE '%' + @ProName + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="ProName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br /><br />
            <asp:Panel ID="Panel4" runat="server" BackColor="Black" CssClass="auto-style27" ForeColor="White" Height="377px" Font-Bold="True" Font-Size="Large" Width="1678px">
            <asp:Image ID="Image21" runat="server" CssClass="auto-style28" Height="49px" ImageUrl="~/images/promo.lk-promo-68cc07f80b6d4a588aba675992ee3e06-removebg-preview.png" Width="47px" style="margin-left: 150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Explore"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Useful Links&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Social Links<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="White" Text="Sampath Foodcity"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Privancy Policy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image22" runat="server" Height="35px" ImageUrl="~/images/facebook-icon-square-8.jpg" Width="34px" CssClass="auto-style29" />&nbsp;&nbsp;
            <asp:Image ID="Image23" runat="server" Height="30px" ImageUrl="~/images/free-instagram-logo-icon-2433-thumb.png" Width="24px" />&nbsp;&nbsp;
            <asp:Image ID="Image24" runat="server" Height="31px" ImageUrl="~/images/youtube-logo-youtube-logo-no-background-1034980-removebg-preview.png" Width="45px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="No 92, Dikhena Junction"></asp:Label>
            ,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Terms &amp; Conditions<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Kaluara South"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FAQ<br />&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 034- 2280148<br /> &nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sampathfoodcity@gmail.com</asp:Panel>
    </form>
</body>
</html>
