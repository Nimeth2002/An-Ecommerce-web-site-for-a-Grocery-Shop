<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign up.aspx.cs" Inherits="final.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
     <style>
        body{
            background-color:black;
        }
        #form1{
            height:600px;
            width : 573px;
            background-color:white;
            margin-left:auto;
            margin-right:auto;
            opacity : 0.9;
        }
        .btn{
            border:1px solid black;
            border-radius:5px;
            background-color:red;
            color:white;
        }
         .auto-style1 {
             height: 78px;
             width: 78px;
             margin-left: 247px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="images/promo.lk-promo-68cc07f80b6d4a588aba675992ee3e06-removebg-preview.png" class="auto-style1" />
        </div>
        <div class="container">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome to Sampath Foodcity"></asp:Label><br />
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="SIGN UP"></asp:Label>
            <br /><br /><br />
            <asp:TextBox ID="TextBox1" placeholder="Full Name" runat="server" Height="23px" style="margin-left: 85px" Width="385px"></asp:TextBox>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <asp:TextBox ID="TextBox2" placeholder="Email Address" runat="server" Height="23px" style="margin-left: 85px" Width="385px"></asp:TextBox>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <asp:TextBox ID="TextBox3" placeholder="Password" TextMode="Password" runat="server" Height="23px" style="margin-left: 85px" Width="385px"></asp:TextBox>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <asp:TextBox ID="TextBox4" placeholder="Confirm Password" TextMode="Password" runat="server" Height="23px" style="margin-left: 85px" Width="385px"></asp:TextBox>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btn"  runat="server" Text="Sign Up" Width="392px" align="center" style="margin-left: 83px" Height="38px" OnClick="Button1_Click"/>
            <br /><br />
            <asp:Button ID="Button2" CssClass="btn" runat="server" Text="Sign In" Width="390px" style="margin-left: 86px" Height="35px" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
