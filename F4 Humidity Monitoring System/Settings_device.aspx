<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings_device.aspx.cs" Inherits="F4_Humidity_Monitoring_System.Settings_device" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Device Configuration </title>
    <link href="Settings_device.css" rel="stylesheet" />

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
                    <a href="Dash2.aspx"><i class="fas fa-burn "></i>Dashboard</a>
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
                        <a href="settings_profile.aspx">User Profile</a>
                        <a href="Settings_Alert.aspx">Alert Notification</a>
                        <a href="#" class="active">Device Configuration</a>
                        <a href="Settingss_Integ.aspx">Integration Settings</a>
                    </div>



                </div>

            </div>

            <div class="Login">
                <img src="Resources/integration1.jpg" alt="alternative Text" class="user" />
                <h4>Device Configuration</h4>

                <div class="pro1">
                    <div class="lbl1">
                        <div class="dropdown">
                            <asp:Label ID="Label1" runat="server" CssClass="name" Text="Sensors"></asp:Label>
                            <div class="dropdown-content">
                                <a>
                                    <h3>DHT11: Humidity Sensor:</h3>
                                    Measures air moisture levels.</a>
                                <a>
                                    <h3>DHT11: Temperature Sensor:</h3>
                                    Complements humidity readings for accuracy.</a>

                            </div>

                        </div>
                    </div>
                    <div class="lbl11">

                        <div class="dropdown">
                            <asp:Label ID="Label3" runat="server" CssClass="name" Text="Microcontroller"></asp:Label>
                            <div class="dropdown-content">
                                <a>
                                    <h3>Arduino Uno R4 WiFi:</h3>
                                    Processes sensor data and provides WiFi connectivity.</a>
                                <a>
                                    <h3>Data Logger:</h3>
                                    Records data for analysis.</a>

                            </div>
                        </div>
                    </div>

                    <div class="lbl77">

                        <div class="dropdown">
                            <asp:Label ID="Label2" runat="server" CssClass="name" Text="Data Storage"></asp:Label>
                            <div class="dropdown-content">
                                <a>
                                    <h3>16GB Micro SD Card</h3>
                                    Local Storage</a>
                                <a>
                                    <h3>Integration with AWS Cloud</h3>
                                    Remote Storage</a>

                            </div>
                        </div>

                    </div>

                    <div class="lbl22">


                        <div class="dropdown">
                            <asp:Label ID="Label5" runat="server" CssClass="name" Text="User Interface"></asp:Label>
                            <div class="dropdown-content">
                                <a>
                                    <h3>I2C LCD</h3>
                                    Real-Time Display</a>
                                <a>
                                    <h3>Web-Based Dashboard</h3>
                                    Remote Monitoring</a>

                            </div>
                        </div>
                    </div>

                    <div class="lbl33">


                        <div class="dropdown">
                            <asp:Label ID="Label7" runat="server" CssClass="name" Text="Calibration"></asp:Label>
                            <div class="dropdown-content">
                                <a>
                                    <h3>Manual Calibration Kit</h3>
                                    DHT11 sensor and LCD</a>


                            </div>
                        </div>
                    </div>

                    <div class="lbl33">


                        <div class="dropdown">
                            <asp:Label ID="Label4" runat="server" CssClass="name" Text="Power Supply"></asp:Label>
                            <div class="dropdown-content">
                                <a>
                                    <h3>M18650 Li-Ion Battery</h3>
                                    Provides a stable and rechargeable power source</a>


                            </div>
                        </div>
                    </div>

                </div>



            </div>

        </div>

    </form>
</body>
</html>
