<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageLogin.aspx.cs" Inherits="F4_Humidity_Monitoring_System.PageLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link href="PageLogin.css" rel="stylesheet" />
</head>
<body>
        <header>
         <div class="Logo11">
    <p>F4</p>
</div>
     <nav>
        
         <a href="Homepageee.aspx" >Home</a>
         <a href="About.aspx">About</a>
         <a href="Contact.aspx" >Contact</a>
         <a href="Dashboard.aspx" class="active">Login</a>

     </nav>
 </header>
   
        <div class="Login">
            <img src="Resources/Logo.png" alt="alternative Text" class="user" />
            <h4>Welcome to F4 HMS</h4>
            
     <form id="form1" runat="server">
         <asp:Label ID="Label1" runat="server" CssClass="username" Text="Username"></asp:Label>
         <asp:TextBox ID="TextBox1" runat="server" CssClass="txt1" placeholder="Username"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="Required1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Username" ForeColor="Red"></asp:RequiredFieldValidator>
<br /><br />
         <asp:Label ID="Label2" runat="server" CssClass="password"  Text="Password"></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server" CssClass="txt2" placeholder="********" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="Required1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Password" ForeColor="Red"></asp:RequiredFieldValidator>
<br /><br />
         <asp:Button ID="Button1" runat="server" CssClass="btnlgn" Text="Login" OnClick="Button1_Click1" />
     
        <br />
         <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lnkbtnlgn" OnClick="LinkButton1_Click" CausesValidation="false" >Sign Up</asp:LinkButton>
    </form> <br />
            
            <asp:Label ID="Label4" runat="server" Text="" Style="color:red"></asp:Label>

            <div class="footer1">
                <p>All Rights Reserved &copy; 2024 by F4 Air Humidity System</p>
            </div>
            </div>
</body>
</html>
