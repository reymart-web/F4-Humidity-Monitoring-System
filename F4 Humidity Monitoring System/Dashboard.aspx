﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="F4_Humidity_Monitoring_System.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Home</title>
     <link href="RTPage.css" rel="stylesheet" />
</head>
<body>
         
 <header>
         <div class="Logo11">
    <p>F4</p>
</div>
     <nav>
        
          <a href="#" class="active">Dashboard</a>
         <a href="RTPage.aspx">Real-Time</a>
         <a href="Settings.aspx">Settings</a>
         <a href="PageLogin.aspx">Logout</a>
     </nav>
 </header>
            <div class="slider">
            <div class="list">

                <div class="item">
                    <img src="Resources/HomePage1.jpg" />
                        <div class="content">
                               <div class="title">Green Mars</div>
                               <div class="type">Dashboard</div>
                               
                              <form id="form1" runat="server">
                           <asp:Label ID="Label2" runat="server" Text="Devices" Style="font-family: Tahoma, 'Short Stack', serif"></asp:Label>
               <asp:RadioButtonList id="RadioButtonList1" runat="server">
            <asp:ListItem>Air Quality</asp:ListItem>
            <asp:ListItem>Temperature</asp:ListItem>
            <asp:ListItem>Light</asp:ListItem>
            <asp:ListItem>Humidity</asp:ListItem>
            <asp:ListItem>Moisture</asp:ListItem>
         </asp:RadioButtonList>

                                  </form>
        </div>
  </div>
    </div>
                </div>
</body>
</html>