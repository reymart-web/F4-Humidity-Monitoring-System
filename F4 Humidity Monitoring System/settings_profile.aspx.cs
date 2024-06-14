using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace F4_Humidity_Monitoring_System
{
    public partial class settings_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the user's ID from the session variable
                string userId = Session["UserID"]?.ToString();

                if (userId != null)
                {

                    using (SqlConnection connection = new SqlConnection(@"Data Source=f4mis.cj8migekqga8.us-east-2.rds.amazonaws.com;Initial Catalog=GreenMars;User ID=admin;Password=Tiu09484635641"))
                    {
                        string query = "SELECT fullname, username, gender, dob, email FROM Registration WHERE userid = @UserId";
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@UserId", userId);

                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {

                            Label3.Text = reader["fullname"].ToString();
                            Label4.Text = reader["username"].ToString();
                            Label6.Text = reader["gender"].ToString();
                            Label8.Text = Convert.ToDateTime(reader["dob"]).ToString("yyyy-MM-dd");
                            Label10.Text = reader["email"].ToString();
                        }
                    }
                }
                else
                {

                    Response.Redirect("PageLogin.aspx");
                }
            }
        }
    }
}