<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dash2.aspx.cs" Inherits="F4_Humidity_Monitoring_System.Dash2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link href="Dash2.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        #chart-container {
            width: 90%;
            height: 300px;
        }
    </style>

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
                    <a href="#" class="active"><i class="fas fa-burn "></i>Dashboard</a>
                    <a href="RTPage.aspx"><i class="fas fa-poll "></i>RealTime</a>
                    <a href="settings_profile.aspx"><i class="fas fa-cog  "></i>Settings</a>
                    <a href="PageLogin.aspx" class="LG1">
                        <i class="fas fa-sign-out "></i>Logout</a>
                </div>
            </nav>

            <div class="LG2">
                <div class="header">
                    <span>Air Humidity Monitoring System</span>
                    <h1>Dashboard</h1>
                </div>
                <div class="tablee1">
                    <div class="humidity">
                        <img src="Resources/Humidity_1.png" />
                        <h3>49%</h3>
                        <span>Humidity</span>
                    </div>
                    <div class="humidity">
                        <img src="Resources/temp_1.png" />
                        <h3>21°C</h3>
                        <span>Temperature</span>
                    </div>
                    <div class="humidity">
                        <img src="Resources/mars_1.png" />
                        <h3>Mars</h3>
                        <span>Planets</span>
                    </div>
                    <div class="humidity">
                        <img src="Resources/plant_2.png" />
                        <h4>Dwarf Wheat</h4>
                        <span>Plants</span>
                    </div>

                    <div class="humidity">
                        <img src="Resources/date_1.png" />
                        <h4>May 02, 2024</h4>
                        <span>Date</span>
                    </div>

                </div>
                <br />
                <div class="Chart12">
                    <div id="chart-container">
                        <canvas id="chart"></canvas>
                        <script>
                            window.onload = function () {
                                var labels = <%= Labels %>;
                            var humidityData = <%= HumidityData %>;
                            var temperatureData = <%= TemperatureData %>;

                                var ctx = document.getElementById('chart').getContext('2d');
                                new Chart(ctx, {
                                    type: 'line',
                                    data: {
                                        labels: labels,
                                        datasets: [{
                                            label: 'Humidity',
                                            borderColor: 'blue',
                                            backgroundColor: 'rgba(0, 0, 255, 0.1)',
                                            fill: true,
                                            data: humidityData
                                        }, {
                                            label: 'Temperature',
                                            borderColor: 'red',
                                            backgroundColor: 'rgba(255, 0, 0, 0.1)',
                                            fill: true,
                                            data: temperatureData
                                        }]
                                    },
                                    options: {
                                        responsive: true,
                                        maintainAspectRatio: false,
                                        scales: {
                                            xAxes: [{
                                                type: 'time',
                                                time: {
                                                    unit: 'hour'
                                                },
                                                scaleLabel: {
                                                    display: true,
                                                    labelString: 'Time'
                                                }
                                            }],
                                            yAxes: [{
                                                scaleLabel: {
                                                    display: true,
                                                    labelString: 'Value'
                                                }
                                            }]
                                        }
                                    }
                                });
                            };
 </script>
                    </div>
                </div>

            </div>
        </div>
    </form>

</body>
</html>

