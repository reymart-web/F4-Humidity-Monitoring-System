<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RTPage.aspx.cs" Inherits="F4_Humidity_Monitoring_System.RTPage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Real Time</title>
    <link href="RTPage.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" />
      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
                    <a href="#" class="active"><i class="fas fa-poll "></i>RealTime</a>
                    <a href="settings_profile.aspx"><i class="fas fa-cog  "></i>Settings</a>
                    <a href="PageLogin.aspx" class="LG1">
                        <i class="fas fa-sign-out "></i>Logout</a>
                </div>
            </nav>

            <div class="LG2">
                <div class="header">
                    <span>Air Humidity Monitoring System</span>
                    <h1>Real Time Monitoring</h1>
                </div>
               
                <div class="Chart12">

                    <div class="Chart11">
                        <div class="filter-container">
                            <asp:Label ID="Label1" runat="server" Text="Filter by Hour: " CssClass="filter-label"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="filter-input"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Filter" OnClick="Button1_Click" CssClass="filter-button filter-button-primary" />
                            <asp:Button ID="Button2" runat="server" Text="Clear Filter" OnClick="Button2_Click" CssClass="filter-button filter-button-secondary" />
                        </div>
                        <div class="grid1">
                            <asp:GridView ID="GridView1"   CssClass="gridview-small" runat="server" AllowSorting="True" AutoGenerateColumns="False" OnSorting="GridView1_Sorting" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                                    <asp:BoundField DataField="Humidity" HeaderText="Humidity" SortExpression="Humidity" />
                                    <asp:BoundField DataField="Temperature" HeaderText="Temperature" SortExpression="Temperature" />
                                    <asp:BoundField DataField="Hour1" HeaderText="Hour" SortExpression="Hour1" />


                                    <asp:TemplateField HeaderText="Date" SortExpression="Date1">
                                        <ItemTemplate>
                                            <%# Convert.ToDateTime(Eval("Date1")).ToString("yyyy-MM-dd") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                               
                            </asp:GridView>
                        </div>
                    </div>
                    <br />
                    <div class="Chart13">
                               <div id="chart-container">
    <canvas id="chart"></canvas>
</div>
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