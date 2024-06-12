<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpp.aspx.cs" Inherits="F4_Humidity_Monitoring_System.SignUpp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="SignUpp.css" rel="stylesheet" />
</head>
<body>


    <div class="Login">
        <h4>Sign Up</h4>

        <form id="form1" runat="server">
            <div class="name">
                <asp:Label ID="Label1" runat="server" CssClass="Name" Text="Name"></asp:Label><span>*</span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt1" placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="Required1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="Label3" runat="server" CssClass="Username" Text="Username"></asp:Label><span>*</span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="txt3" placeholder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="Required1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Username" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="Label4" runat="server" CssClass="gender" Text="Gender"></asp:Label><span>*</span>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="txt6" placeholder="Gender"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="Required1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="Label6" runat="server" CssClass="Address" Text="Date of Birth"></asp:Label><span>*</span>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="txt4" placeholder="YYYY-MM-DD"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="Required1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Address" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" runat="server" CssClass="Email" Text="Email"></asp:Label><span>*</span>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="txt5" placeholder="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="Required1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Eamil" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </div>
            <asp:Label ID="Label2" runat="server" CssClass="password" Text="Password"></asp:Label><span>*</span>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txt2" placeholder="********" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="Required1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <div class="Bttn">

                <asp:Button ID="Button2" runat="server" CssClass="btnlgn1" Text="Back" OnClick="Button2_Click1" CausesValidation="false" />
                <asp:Button ID="Button1" runat="server" CssClass="btnlgn" Text="Submit" OnClick="Button1_Click1" />
                <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="" Style="color: green"></asp:Label>
            </div>

        </form>
        <br />

    </div>
</body>
</html>
