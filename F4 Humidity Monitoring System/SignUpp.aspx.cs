using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace F4_Humidity_Monitoring_System
{
    public partial class SignUpp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-MAR\SQLEXPRESS;Initial Catalog=GreenMars;Integrated Security=True");
            con.Open();
            SqlCommand cmdf4 = new SqlCommand("insert into Registration values(@FullName,@Username,@Gender,@dob,@Email,@Password,GETDATE())", con);
            cmdf4.Parameters.AddWithValue("FullName", TextBox1.Text);
            cmdf4.Parameters.AddWithValue("Username", TextBox3.Text);
            cmdf4.Parameters.AddWithValue("Gender", TextBox6.Text);
            cmdf4.Parameters.AddWithValue("dob", TextBox4.Text);
            cmdf4.Parameters.AddWithValue("Email", TextBox5.Text);
            cmdf4.Parameters.AddWithValue("Password", TextBox2.Text);
            cmdf4.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox6.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox2.Text = "";


            Response.Redirect("PageLogin.aspx");



            con.Close();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("PageLogin.aspx");
        }
    }
}