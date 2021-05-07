using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Lab_Sike_Trip
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {

                MasterYourProfile.Visible = true;
                MasterSignUp.Visible = false;
                MasterYourProfile.InnerText = (Session["Username"].ToString());
                MasterLoginReference.InnerText = "Logout";
                
            }
        }
    }
}