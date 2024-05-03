<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page_Log.aspx.cs" Inherits="F4_Humidity_Monitoring_System.Page_Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link href="Page_Log.css" rel="stylesheet" />
</head>
<body>
    
   
        <div class="Login">
            <img src="Resources/Logo.png" alt="alternative Text" class="user" />
            <h4>Welcome to F4 HMS</h4>
            
     <form id="form1" runat="server">
         <asp:Label ID="Label1" runat="server" CssClass="username" Text="Username"></asp:Label>
         <asp:TextBox ID="TextBox1" runat="server" CssClass="txt1" placeholder="Username"></asp:TextBox>
         <asp:Label ID="Label2" runat="server" CssClass="password"  Text="Password"></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server" CssClass="txt2" placeholder="********" TextMode="Password"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" CssClass="btnlgn" Text="Login" OnClick="Button1_Click1" />
     
        
         <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lnkbtnlgn">Forgot Password?</asp:LinkButton>
    </form> <br />
            <div class="footer1">
                <p>All Rights Reserved &copy; 2024 by F4 Air Humidity System</p>
            </div>
            </div>
</body>
</html>
