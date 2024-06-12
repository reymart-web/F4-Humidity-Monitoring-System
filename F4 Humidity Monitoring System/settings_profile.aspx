<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settings_profile.aspx.cs" Inherits="F4_Humidity_Monitoring_System.settings_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Settings Profile</title>
    <link href="settings_profile.css" rel="stylesheet" />

      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <div class="D1">
      <nav>
          <div class="navbar">
              <div class="logo1">
                  <img src="Resources/Logo.png" />
                  <span>F4</span>
              </div>
              <a href="Dash2.aspx" ><i class="fas fa-burn "></i>Dashboard</a>
              <a href="RTPage.aspx"><i class="fas fa-poll "></i>RealTime</a>
              <a href="#" class="active"><i class="fas fa-cog  "></i>Settings</a>
              <a href="PageLogin.aspx" class="LG1">
                  <i class="fas fa-sign-out "></i>Logout</a>
          </div>
      </nav>

                <div class="settings1">
        <div class="LG2">
                 <div class="header">
                     <h1>Settings</h1>
                 </div>
                   <div class="settings22">
                    <a href="#" class="active">User Profile</a>
                    <a href="Settings_Alert.aspx">Alert Notification</a>
                    <a href="Settings_device.aspx" >Device Configuration</a>
                    <a href="Settingss_Integ.aspx" >Integration Settings</a>
                    </div>
                         


        </div>
   
   </div>

                   <div class="Login">
            <img src="Resources/profile11.jpg" alt="alternative Text" class="user" />
            <h4>User Profile</h4>
            
        <div class="pro1">
            <div class="lbl1">
                      <asp:Label ID="Label1" runat="server" CssClass="name" Text="Name: "></asp:Label>
                      <asp:Label ID="Label3" runat="server" CssClass="txt11" Text="Test"></asp:Label> <br /><br />
            </div>
        
            <div class="lbl11">
                      <asp:Label ID="Label2" runat="server" CssClass="username"  Text="Username: "></asp:Label>
                      <asp:Label ID="Label4" runat="server" CssClass="txt22"  Text="Test123"></asp:Label><br /><br />
            </div>

              <div class="lbl22">
                     <asp:Label ID="Label5" runat="server" CssClass="gender"  Text="Gender: "></asp:Label>
                     <asp:Label ID="Label6" runat="server" CssClass="txt33"  Text="Male"></asp:Label><br /><br />
              </div>

            <div class="lbl33">
                    <asp:Label ID="Label7" runat="server" CssClass="address"  Text="Date of Birth: "></asp:Label>
                    <asp:Label ID="Label8" runat="server" CssClass="txt44"  Text="1990-01-20"></asp:Label><br /><br />
            </div>

            <div class="lbl44">
                    <asp:Label ID="Label9" runat="server" CssClass="email"  Text="Email: "></asp:Label>
                    <asp:Label ID="Label10" runat="server" CssClass="txt55"  Text="Test123@f4.com"></asp:Label><br /><br />
            </div>
   
           </div>    
    
       
      

         </div>
           
    </div>
    </form>
</body>
</html>
