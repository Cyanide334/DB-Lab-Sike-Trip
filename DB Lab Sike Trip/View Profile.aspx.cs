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
    public partial class View_Profile : System.Web.UI.Page
    {
        // get Name
        protected string get_name()
        {
            myDAL obj = new myDAL();
           return  obj.return_name_from_db(Session["Username"].ToString());
        }

        // get Email
        protected string get_email()
        {
            myDAL obj = new myDAL();
            return obj.return_email_from_db(Session["Username"].ToString());
        }

        // get Phone
        protected string get_phone()
        {
            myDAL obj = new myDAL();
            return obj.return_phone_from_db(Session["Username"].ToString());
        }

        //get City
        protected string get_city()
        {
            myDAL obj = new myDAL();
            return obj.return_city_from_db(Session["Username"].ToString());
        }

        //get Country
        protected string get_country()
        {
            myDAL obj = new myDAL();
            return obj.return_country_from_db(Session["Username"].ToString());
        }

        // get dateOfBirth
        protected string get_dob()
        {
            myDAL obj = new myDAL();
            return obj.return_dob_from_db(Session["Username"].ToString());
        }

        protected string get_password()
        {
            myDAL obj = new myDAL();
            return obj.return_password_from_db(Session["Username"].ToString());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                DisplayProfileSection.Visible = false;
             
            }
            // if a user is logged in, display appropriate info of them
            if (Session["Username"] != null)
            {
                showLogInButton.Visible = false;
                display_name.Text = get_name();
                display_email.Text = get_email();
                display_phone.Text = get_phone();
                display_city.Text = get_city();
                display_country.Text = get_country();
                display_dob.Text = get_dob();
               
            }
        }
        
        // if user not logged in, show login table
        protected void LogInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}