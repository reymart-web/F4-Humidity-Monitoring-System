<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings_Alert.aspx.cs" Inherits="F4_Humidity_Monitoring_System.Settings_Alert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alet Notifications</title>
     <link href="Settings_Alert.css" rel="stylesheet" />
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
                 <a href="settings_profile.aspx" >User Profile</a>
                 <a href="#" class="active">Alert Notification</a>
                 <a href="Settings_device.aspx" >Device Configuration</a>
                 <a href="Settingss_Integ.aspx" >Integration Settings</a>
                 </div>
                      


     </div>

</div>
                    </div>f
              <div class="Login">
                     <img src="Resources/Alert1.jpg" alt="alternative Text" class="user" />
                     <h4>Alert Notifications</h4>
    
                        <div class="pro1">
                             <div class="lbl1">
                                 <asp:Label ID="Label1" runat="server" CssClass="name" Text="Humidity Alert"></asp:Label>
                                 <label class="switch">
                                 <asp:CheckBox ID="AlertToggle" runat="server" AutoPostBack="true" OnCheckedChanged="AlertToggle_CheckedChanged" Visible="true"/>
                                 <span class="slider round"></span>
                                 </label>
                             </div>
                             <div class="lbl11">
                                   <asp:Label ID="Label3" runat="server" CssClass="name"  Text="Temperature Alert"></asp:Label>
                                    <label class="switch1">
                                    <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="true" OnCheckedChanged="AlertToggle_CheckedChanged" Visible="true"/>
                                    <span class="slider round"></span>
                                    </label>
                             </div>

                             <div class="lbl77">
                                    <asp:Label ID="Label2" runat="server" CssClass="name"  Text="Sensor Alert"></asp:Label>
                                    <label class="switch2">
                                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="AlertToggle_CheckedChanged" Visible="true"/>
                                    <span class="slider round"></span>
                                    </label>
                             </div>

                             <div class="lbl22">
                                     <asp:Label ID="Label5" runat="server" CssClass="name"  Text="Battery Alert"></asp:Label>
                                     <label class="switch3">
                                     <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="true" OnCheckedChanged="AlertToggle_CheckedChanged" Visible="true"/>
                                     <span class="slider round"></span>
                                     </label>
                             </div>

                            <div class="lbl33">
                                     <asp:Label ID="Label7" runat="server" CssClass="name"  Text="Configuration Alert"></asp:Label>
                                     <label class="switch4">
                                     <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="true" OnCheckedChanged="AlertToggle_CheckedChanged" Visible="true"/>
                                     <span class="slider round"></span>
                                     </label>
                            </div>

                           <div class="lbl44">
                                    <asp:Label ID="Label9" runat="server" CssClass="name"  Text="Data Transmission Alert"></asp:Label>
                                    <label class="switch5">
                                    <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="true" OnCheckedChanged="AlertToggle_CheckedChanged" Visible="true"/>
                                    <span class="slider round"></span>
                                    </label>
                           </div>
   
                        </div>    
    
                 </div>

   
    </form>
</body>
</html>
