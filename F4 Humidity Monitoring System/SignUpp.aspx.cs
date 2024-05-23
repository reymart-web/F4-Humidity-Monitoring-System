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

            Response.Redirect("PageLogin.aspx");



          
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("PageLogin.aspx");
        }
    }
}