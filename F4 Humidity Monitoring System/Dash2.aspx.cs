using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace F4_Humidity_Monitoring_System
{
    public partial class Dash2 : System.Web.UI.Page
    {
        protected string Labels { get; set; }
        protected string HumidityData { get; set; }
        protected string TemperatureData { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FetchData();
            }
        }

        private void FetchData()
        {

            using (SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-MAR\SQLEXPRESS;Initial Catalog=GreenMars;Integrated Security=True"))
            {
                conn.Open();
                string query = "SELECT * FROM SensorsData1 WHERE Hour1 >= @startHour";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                da.SelectCommand.Parameters.AddWithValue("@startHour", 13);

                DataSet ds = new DataSet();
                da.Fill(ds);

                DataTable dt = ds.Tables[0];
                List<string> labels = new List<string>();
                List<float> humidityData = new List<float>();
                List<float> temperatureData = new List<float>();

                foreach (DataRow row in dt.Rows)
                {
                    DateTime dateTime = Convert.ToDateTime(row["Date1"]).AddHours(Convert.ToInt32(row["Hour1"]));
                    labels.Add(dateTime.ToString("yyyy-MM-ddTHH:mm:ss"));
                    humidityData.Add(Convert.ToSingle(row["Humidity"]));
                    temperatureData.Add(Convert.ToSingle(row["Temperature"]));
                }

                Labels = new JavaScriptSerializer().Serialize(labels);
                HumidityData = new JavaScriptSerializer().Serialize(humidityData);
                TemperatureData = new JavaScriptSerializer().Serialize(temperatureData);
            }
        }
    }
}