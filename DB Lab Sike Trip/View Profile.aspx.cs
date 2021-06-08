using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Lab_Sike_Trip
{
    public partial class View_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                DisplayProfileSection.Visible = false;
             
            }
            if (Session["Username"] != null)
            {
                showLogInButton.Visible = false;
            }
        }

     

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}