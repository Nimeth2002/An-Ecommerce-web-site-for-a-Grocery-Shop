<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="final.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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
        .auto-style3 {
            width: 179px;
            margin-left: 142px;
        }
        .auto-style4 {
            margin-left: 176px;
        }
        .auto-style5 {
            margin-left: 97px;
        }
        .auto-style7 {
            margin-left: 114px;
        }
        .auto-style9 {
            margin-left: 123px;
        }
        .auto-style10 {
            margin-left: 103px;
        }
        .auto-style11 {
            margin-left: 136px;
        }
        .auto-style12 {
            margin-left: 73px;
        }
        .auto-style13 {
            margin-left: 170px;
        }
        .auto-style14 {
            margin-left: 131px;
        }
        .auto-style15 {
            margin-left: 126px;
        }
        .auto-style16 {
            margin-left: 130px;
        }
        .auto-style17 {
            margin-left: 128px;
        }
        .auto-style18 {
            margin-left: 116px;
        }
        .auto-style19 {
            margin-left: 120px;
        }
        .auto-style20 {
            margin-left: 166px;
        }
        .auto-style21 {
            margin-left: 160px;
        }
        .auto-style23 {
            margin-left: 101px;
        }
        .auto-style24 {
            margin-left: 235px;
        }
        .auto-style25 {
            margin-left: 175px;
        }
        .auto-style26 {
            margin-left: 149px;
        }
        .auto-style27 {
            margin-top: 0px;
        }
        .auto-style28 {
            margin-left: 182px;
            margin-top: 18px;
        }
        .auto-style29 {
            margin-left: 129px;
        }
        .auto-style30 {
            margin-left: 78px;
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
            <asp:Image ID="Image1" runat="server" Height="66px" ImageUrl="~/images/promo.lk-promo-68cc07f80b6d4a588aba675992ee3e06-removebg-preview.png" Width="78px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/download-removebg-preview.png" OnClick="ImageButton1_Click" Width="45px" />
&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#FF3300" BorderColor="#FF3300" ForeColor="White" Height="37px" Width="110px" OnClick="Button2_Click" />
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
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
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="HOME PAGE" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FF3300"></asp:Label>
        
        <asp:Image ID="Image4" runat="server" Height="751px" ImageUrl="~/images/_119531800_gettyimages-1215040530.jpg" Width="1557px" />
        <br /><br />
        <asp:Panel ID="Panel1" runat="server" BackColor="Black" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="36px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SHOP&nbsp; BY CATEGORY</asp:Panel>
      <div class ="row">
          <div class ="col-lg-4">
              <img class="auto-style3" src="images/cans-beverages-19492376.jpg" alt="thumb" height="140" />
              <asp:Image ID="Image5" runat="server" CssClass="auto-style5" Height="120px" ImageUrl="~/images/Dairy-products.jpg" Width="124px" />
              <asp:Image ID="Image6" runat="server" CssClass="auto-style7" Height="107px" ImageUrl="~/images/113851--1--1559751980.jpeg" Width="124px" />
              <asp:Image ID="Image8" runat="server" CssClass="auto-style11" Height="95px" ImageUrl="~/images/9bbf4ff7f6b573011de38a45d69cce24.jpg" Width="114px" />
              <asp:Image ID="Image15" runat="server" CssClass="auto-style15" Height="96px" ImageUrl="~/images/pharmacy-2-1.jpg" Width="112px" />
              <br />
              <asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style4" ForeColor="White" Height="33px" Text="BEVERAGES" Width="114px" OnClick="Button3_Click" />
              <asp:Button ID="Button4" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style9" ForeColor="White" Height="33px" Text="DAIRY PRODUCTS" Width="151px" OnClick="Button4_Click" />
              <asp:Button ID="Button5" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style10" ForeColor="White" Height="33px" Text="RICE" Width="130px" OnClick="Button5_Click" />
              <asp:Button ID="Button7" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style12" ForeColor="White" Height="33px" Text="COOKING ESSENTIONALS" Width="209px" OnClick="Button7_Click" />
              <asp:Button ID="Button14" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style30" ForeColor="White" Height="33px" Text="PHARMACY" Width="126px" OnClick="Button14_Click" />
              <br />
              <br />
              <br />
              <asp:Image ID="Image9" runat="server" CssClass="auto-style13" Height="114px" ImageUrl="~/images/maxresdefault.jpg" Width="121px" />
              <asp:Image ID="Image10" runat="server" CssClass="auto-style14" Height="109px" ImageUrl="~/images/allpacks08-min.png" Width="120px" />
              <asp:Image ID="Image11" runat="server" CssClass="auto-style16" Height="106px" ImageUrl="~/images/s-l400.jpg" Width="114px" />
              <asp:Image ID="Image12" runat="server" CssClass="auto-style18" Height="103px" ImageUrl="~/images/1_60c9a769ecb0c.png" Width="121px" />
              <asp:Image ID="Image13" runat="server" CssClass="auto-style19" Height="126px" ImageUrl="~/images/HOME_CARE_COMBO_600X800-555x740.jpg" Width="113px" />
              <br />
              <br />
              <asp:Button ID="Button8" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style4" ForeColor="White" Height="33px" Text="DESSERTS" Width="114px" OnClick="Button8_Click" />
              <asp:Button ID="Button9" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style15" ForeColor="White" Height="33px" Text="TEA &amp; COFFEE" Width="126px" OnClick="Button9_Click" />
              <asp:Button ID="Button10" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style17" ForeColor="White" Height="33px" Text="SPICES" Width="122px" OnClick="Button10_Click" />
              <asp:Button ID="Button11" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style5" ForeColor="White" Height="33px" Text="BABY PRODUCTS" Width="145px" OnClick="Button11_Click" />
              <asp:Button ID="Button12" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style5" ForeColor="White" Height="33px" Text="HOUSEHOLD" Width="145px" OnClick="Button12_Click" />
              <br />
              <br />
              <br />
              <br />
              <asp:Image ID="Image14" runat="server" CssClass="auto-style20" Height="113px" ImageUrl="~/images/new-250x250.jpg" Width="120px" />
              <br />
              <br />
              <asp:Button ID="Button13" runat="server" BackColor="Red" BorderColor="Red" CssClass="auto-style21" ForeColor="White" Height="33px" Text="PARTY SHOP" Width="126px" OnClick="Button13_Click" />
              <br />
              <br />
              <asp:Panel ID="Panel2" runat="server" BackColor="Black" Font-Size="X-Large" ForeColor="White" Height="44px">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SAMPATH DEALS</asp:Panel>
              <br />
              <asp:Image ID="Image16" runat="server" CssClass="auto-style24" Height="338px" ImageUrl="~/images/290617779_1138034323428065_7150857430569796694_n.jpg" Width="315px" />
              <asp:Image ID="Image17" runat="server" CssClass="auto-style23" Height="338px" ImageUrl="~/images/291975250_1141009593130538_35195581356637870_n.jpg" Width="315px" />
              <asp:Image ID="Image18" runat="server" CssClass="auto-style23" Height="338px" ImageUrl="~/images/291405535_1139184866646344_3202915446185601590_n.jpg" Width="315px" />
              <br />
              <br />
              <br />
             
                  
          </div>
      </div>
        <asp:Panel ID="Panel3" runat="server" BackColor="Black" Font-Size="X-Large" ForeColor="White" Height="44px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SAMPATH STORES</asp:Panel>
        <p>
            <asp:Image ID="Image19" runat="server" CssClass="auto-style25" Height="438px" ImageUrl="~/images/images.jpg" Width="554px" />
            <asp:Image ID="Image20" runat="server" CssClass="auto-style26" Height="438px" ImageUrl="~/images/157341359_856210948277072_579217728777238188_n.jpg" Width="554px" />
        </p>
    <p>
        &nbsp;</p>
        <asp:Panel ID="Panel4" runat="server" BackColor="Black" CssClass="auto-style27" ForeColor="White" Height="377px" Font-Bold="True" Font-Size="Large" Width="1678px">
            <asp:Image ID="Image21" runat="server" CssClass="auto-style28" Height="49px" ImageUrl="~/images/promo.lk-promo-68cc07f80b6d4a588aba675992ee3e06-removebg-preview.png" Width="47px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Explore"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Useful Links&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Social Links<br />
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
