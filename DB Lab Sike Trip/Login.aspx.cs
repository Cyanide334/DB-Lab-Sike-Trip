using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Lab_Sike_Trip;
using DB_Lab_Sike_Trip.DAL;







namespace DB_Lab_Sike_Trip
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                NotLoggedIn.Visible = false;
                LoginInstruction.Visible = false;
                AlreadyLoggedIn.Visible = true;
                LogOutButton.Visible = true;
                showLogOutButton.Visible = true;
            }
        }

        public void BtnSave_Click(object sender, EventArgs e)
        {

            string name = logInUsername.Text;
            string password = logInPassword.Text;
            bool s = true;
            string outputString = "";

            myDAL obj = new myDAL();
            obj.log_in(name, password, ref s, ref outputString);
            if (s == false)
            {
                logInUsername.Text = "";
                logInPassword.Text = "";
                loginError.Text = "Invalid username or Password";
            }
            else
            {
                Session["Username"] = name;
                Response.Redirect("View Profile.aspx");
            }


        }

  

        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("Login.aspx");
        }
    }



}