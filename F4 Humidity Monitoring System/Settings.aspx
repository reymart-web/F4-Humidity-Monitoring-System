<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="F4_Humidity_Monitoring_System.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Home</title>
     <link href="Settings.css" rel="stylesheet" />
</head>
<body>
         
 <header>
         <div class="Logo11">
    <p>F4</p>
</div>
     <nav>
        
          <a href="Settings.aspx" >Dashboard</a>
         <a href="RTPage.aspx">Real-Time</a>
           <a href="#" class="active">Settings</a>
         <a href="PageLogin.aspx">Logout</a>
     </nav>
 </header>
            <div class="slider">
            <div class="list">

                <div class="item">
                    <img src="Resources/HomePage1.jpg" />
                        <div class="content">
                               <div class="title">Green Mars</div>
                               <div class="type">Settings</div>
                               
                              <form id="form1" runat="server">
                           <asp:Label ID="Label2" runat="server" Text="Settings" Style="font-family: Tahoma, 'Short Stack', serif"></asp:Label>
               <asp:RadioButtonList id="RadioButtonList1" runat="server">
            <asp:ListItem>Data Management</asp:ListItem>
            <asp:ListItem>Integration Settings</asp:ListItem>
            <asp:ListItem>Notification Settings</asp:ListItem>
            <asp:ListItem>Device Configuration</asp:ListItem>
         </asp:RadioButtonList>

                                  </form>
        </div>
  </div>
    </div>
                </div>
</body>
</html>