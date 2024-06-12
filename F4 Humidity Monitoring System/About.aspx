<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="F4_Humidity_Monitoring_System.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <link href="About.css" rel="stylesheet" />
   
</head>
<body>
    <header>
         <div class="Logo11">
    <p>F4</p>
</div>
     <nav>
        
         <a href="Homepageee.aspx" >Home</a>
         <a href="#" class="active">About</a>
         <a href="Contact.aspx" >Contact</a>
         <a href="PageLogin.aspx" >Login</a>
     </nav>
 </header>
    <div style="background-color: paleturquoise; vertical-align: middle">

    
    <form id="form1" runat="server" style="background: rgb(255, 255, 255, 0.5); border-radius: 10px; text-align: center; width: 500px;   height: 600px;  margin-right: -50%; margin-bottom:50%;  position: absolute;  transform: translate(100%, 10%)">
  
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="About Us" Style="font-size: 60px ; padding:110px"></asp:Label>
                </asp:TableCell>
                
            </asp:TableRow>
            
        </asp:Table>
            <p id="p1" runat="server"   style="font-size: 15px ; padding:20px; padding-bottom:20px">The air humidity monitoring system's 
                goal is to guarantee ideal environmental conditions in a range of situations. Through constant 
                measurement and analysis of humidity levels, the system seeks to establish a warm, healthful, and 
                effective atmosphere. It is essential for preventing damage from humidity variations, which can harm 
                valuables including crops, delicate equipment, and artefacts. Furthermore, the technology helps HVAC 
                systems operate at their best, which adds to energy efficiency.
</p>
          
         <asp:TableCell>
     <asp:Label ID="Label2" runat="server" Text="Air Humidity System" Style="font-size: 20px ; padding:50px;  color: #F07857; font-weight: 500;"></asp:Label>
             <asp:Image ID="Image1" runat="server"  src="Resources/HomePage2.jpg" Style="font-size: 20px;border-radius: 10px;  text-align: center; width: 500px;   height: 265px;  margin-right: 50px; margin-top:50px;margin-bottom:10px;  position: absolute;  transform: translate(-77.5%, -0.05%)"/>
 </asp:TableCell>



    </form>
        </div>
    </body>
</html>
