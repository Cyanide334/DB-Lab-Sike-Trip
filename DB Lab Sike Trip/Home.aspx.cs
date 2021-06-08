using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Lab_Sike_Trip
{
    public partial class Home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                welcomespan.InnerText = "SIKE! TRIP, " + Session["Username"].ToString() + '!';
            }
        }
    }
}