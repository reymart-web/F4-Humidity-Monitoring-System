using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace F4_Humidity_Monitoring_System
{
    public partial class RTPage : System.Web.UI.Page
    {
        protected string Labels { get; set; }
        protected string HumidityData { get; set; }
        protected string TemperatureData { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                F4DATAGRIDVIEW();
                FetchData();

            }
        }
        private void F4DATAGRIDVIEW(String filter = null)
        {


            using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-MAR\SQLEXPRESS;Initial Catalog=GreenMars;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    if (!string.IsNullOrEmpty(filter))
                    {
                        cmd.CommandText =
                          "SELECT TOP (24) [Id], [Humidity], [Temperature], [Hour1], [Date1] " +
                          "FROM [GreenMars].[dbo].[SensorsData1] " +
                          "WHERE [Hour1] LIKE @filter";
                        cmd.Parameters.AddWithValue("@filter", "%" + filter + "%");
                    }
                    else
                    {
                        cmd.CommandText =
                       "SELECT TOP (24) [Id] " +
                         " ,[Humidity]" +
                         " ,[Temperature] " +
                         " ,[Hour1] " +
                          " ,[Date1] " +
                          " FROM [GreenMars].[dbo].[SensorsData1] ";
                    }

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        ViewState["CurrentData"] = dt;
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }


                }

            }
        }


        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            DataTable dt = ViewState["CurrentData"] as DataTable;
            if (dt != null)
            {
                string sortExpression = e.SortExpression;
                String sortDirection = GetSortDirection(sortExpression);

                var sorted = (sortDirection == "ASC") ?

                    from row in dt.AsEnumerable()
                    orderby row[sortExpression] ascending
                    select row :
                    from row in dt.AsEnumerable()
                    orderby row[sortExpression] descending
                    select row;

                DataTable newDataTable = sorted.CopyToDataTable();
                ViewState["CurrentData"] = newDataTable;
                GridView1.DataSource = newDataTable;
                GridView1.DataBind();
                FetchData();


            }
            else
            {
                F4DATAGRIDVIEW();
                FetchData();

            }
        }
        private String GetSortDirection(string currentSortExpression)
        {
            string previousSortExpression = ViewState["SortExpression"] as string;
            string previousSortDirection = ViewState["SortDirection"] as string;

            string newSortDirection;
            if (previousSortExpression != null && currentSortExpression == previousSortExpression)
            {
                newSortDirection = previousSortDirection == "ASC" ? "DESC" : "ASC";

            }
            else
            {
                newSortDirection = "ASC";
            }
            ViewState["SortExpression"] = currentSortExpression;
            ViewState["SortDirection"] = newSortDirection;

            return newSortDirection;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filter = TextBox1.Text.Trim();
            F4DATAGRIDVIEW(filter);
            FetchData(filter);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            F4DATAGRIDVIEW();
            FetchData();
        }
        private void FetchData(string filter = null)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-MAR\SQLEXPRESS;Initial Catalog=GreenMars;Integrated Security=True"))
            {
                conn.Open();
                string query = "SELECT TOP (24) * FROM GreenMars.dbo.SensorsData1";
                if (!string.IsNullOrEmpty(filter))
                {
                    query += " WHERE [Hour1] LIKE @filter";
                }
                query += " ORDER BY Date1 ASC, Hour1 ASC";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                if (!string.IsNullOrEmpty(filter))
                {
                    da.SelectCommand.Parameters.AddWithValue("@filter", "%" + filter + "%");
                }
                DataSet ds = new DataSet();
                da.Fill(ds);

                DataTable dt = ds.Tables[0];
                List<string> labels = new List<string>();
                List<float> humidityData = new List<float>();
                List<float> temperatureData = new List<float>();

                foreach (DataRow row in dt.Rows)
                {
                    if (row["Date1"] != DBNull.Value && row["Hour1"] != DBNull.Value)
                    {
                        DateTime dateTime = Convert.ToDateTime(row["Date1"]).AddHours(Convert.ToInt32(row["Hour1"]));
                        labels.Add(dateTime.ToString("yyyy-MM-ddTHH:mm:ss"));
                    }
                    else if (row["Date1"] != DBNull.Value)
                    {
                        DateTime dateTime = Convert.ToDateTime(row["Date1"]);
                        labels.Add(dateTime.ToString("yyyy-MM-dd"));
                    }
                    if (row["Humidity"] != DBNull.Value)
                    {
                        humidityData.Add(Convert.ToSingle(row["Humidity"]));
                    }
                    if (row["Temperature"] != DBNull.Value)
                    {
                        temperatureData.Add(Convert.ToSingle(row["Temperature"]));
                    }
                }

                Labels = new JavaScriptSerializer().Serialize(labels);
                HumidityData = new JavaScriptSerializer().Serialize(humidityData);
                TemperatureData = new JavaScriptSerializer().Serialize(temperatureData);
            }
        }
    }
}