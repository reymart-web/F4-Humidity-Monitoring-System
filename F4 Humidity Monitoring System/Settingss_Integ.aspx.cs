using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace F4_Humidity_Monitoring_System
{
    public partial class Settingss_Integ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AlertToggle_CheckedChanged1(object sender, EventArgs e)
        {
            if (AlertToggle.Checked)
            {

                Response.Write("<script>alert('Integration Settings enabled.');</script>");

            }
            else
            {

                Response.Write("<script>alert('Integration Settings disabled.');</script>");

            }
        }
    }
}