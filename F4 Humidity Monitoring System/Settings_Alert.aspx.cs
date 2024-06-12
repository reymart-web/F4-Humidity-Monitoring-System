using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace F4_Humidity_Monitoring_System
{
    public partial class Settings_Alert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AlertToggle_CheckedChanged(object sender, EventArgs e)
        {
            if (AlertToggle.Checked)
            {
                // Code to handle enabling alert notifications
                Response.Write("<script>alert('Alert notifications enabled.');</script>");

            }
            else
            {
                // Code to handle disabling alert notifications
                Response.Write("<script>alert('Alert notifications disabled.');</script>");

            }
        }
    }
}