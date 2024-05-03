<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="F4_Humidity_Monitoring_System.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <link href="Contact.css" rel="stylesheet" />
   
</head>
<body>
    <header>
         <div class="Logo11">
    <p>F4</p>
</div>
     <nav>
        
         <a href="HomePage1.aspx" >Home</a>
         <a href="About.aspx">About</a>
         <a href="#" class="active">Contact</a>
         <a href="#" >Logout</a>

     </nav>
 </header>

    <div style="background-color: darkolivegreen; vertical-align: middle">

    
    <form id="form1" runat="server" style="background: rgb(255, 255, 255, 0.5);  text-align: center; width: 500px;   height: 600px;  margin-right: -50%; margin-bottom:50%;  position: absolute;  transform: translate(100%, 10%)">
  
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="Contact Us" Style="font-size: 80px ; padding:50px"></asp:Label>
                </asp:TableCell>

            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="HUMIDITY BY F4"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label6" runat="server" Text="ADDRESS" Style="font-size: 30px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="666 Burrard St #200, Vancouver, BC V6C 2X8" Style="font-size: 20px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>

            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label7" runat="server" Text="Phone" Style="font-size: 30px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label8" runat="server" Text="(604) 430-5111" Style="font-size: 20px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow >
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Email" Style="font-size: 30px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label9" runat="server" Text="HumiditySystemF4@gmail.ca" Style="font-size: 20px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>


        </asp:Table>




  
        <asp:Table ID="Table2" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label10" runat="server" Text="Send Message" Style="font-size: 50px; padding:80px"></asp:Label>
                </asp:TableCell>

            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label11" runat="server" Text="FULLNAME"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label13" runat="server" Text="EMAIL" Style="font-size: 20px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>

            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label17" runat="server" Text="MESSAGE" Style="font-size: 20px; font-family: 'Times New Roman'"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </asp:TableCell>

            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
                </asp:TableCell>

            </asp:TableRow>

        </asp:Table>


    </form>

    
</div>

</body>
</html>