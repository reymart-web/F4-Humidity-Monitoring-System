using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace F4_Humidity_Monitoring_System
{
    public partial class PageLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection log1 = new SqlConnection(@"Data Source=f4mis.cj8migekqga8.us-east-2.rds.amazonaws.com;Initial Catalog=GreenMars;User ID=admin;Password=Tiu09484635641");
            log1.Open();
            SqlCommand cmd = new SqlCommand("SELECT userid FROM Registration WHERE username = @username AND password1 = @password", log1);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);

            SqlDataReader f4sdr = cmd.ExecuteReader();
            if (f4sdr.Read())
            {

                Session["userid"] = f4sdr["userid"].ToString();
                Response.Redirect("Dash2.aspx");
            }
            else
            {
                Label4.Text = "Incorrect Username or Password";
            }


            log1.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpp.aspx");
        }
    }
}