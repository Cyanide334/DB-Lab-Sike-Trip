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
    public partial class Edit_Profile : System.Web.UI.Page
    {
        protected string get_name()
        {
            myDAL obj = new myDAL();
            return obj.return_name_from_db(Session["Username"].ToString());
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
        protected string get_credit()
        {
            myDAL obj = new myDAL();
            return obj.return_credit_from_db(Session["Username"].ToString());
        }

        protected string get_password()
        {
            myDAL obj = new myDAL();
            return obj.return_password_from_db(Session["Username"].ToString());
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                editProfileUsername.InnerText = Session["Username"].ToString();
                editProfileEmail.InnerText = get_email();
                editProfileCity.Attributes.Add("placeholder", get_city());
                editProfileCountry.Attributes.Add("placeholder", get_country());
                editProfileCredit.Attributes.Add("placeholder", get_credit());
                editProfileName.Attributes.Add("placeholder", get_name());
                editProfilePhone.Attributes.Add("placeholder", get_phone());
                editProfileUsernameForm.Attributes.Add("placeholder", Session["Username"].ToString());
                editProfileEmailForm.Attributes.Add("placeholder", get_email());
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void editProfileSaveButton_Click(object sender, EventArgs e)
        {
            bool success = true;
            myDAL obj = new myDAL();
            if (editProfileUsernameForm.Text != "")
            {
                string val = editProfileUsernameForm.Text;
                if (obj.update_username(Session["Username"].ToString(), editProfileUsernameForm.Text) != 0)
                {
                    // print error
                    error.InnerText = "Username already in use!";
                    success = false;
                }
                else 
                {
                    Session["Username"] = val;
                }
            }

            if (editProfileCredit.Text != "")
            {
                if (obj.update_credit(Session["Username"].ToString(), editProfileCredit.Text) != 0)
                {
                    // print error
                    success = false;
                    error.InnerText = "Credit Card already in use!";
                }
            }

            if (editProfileEmailForm.Text != "")
            {
                if (obj.update_email(Session["Username"].ToString(), editProfileEmailForm.Text) != 0)
                {
                    // print error
                    error.InnerText = "Email already in use!";
                    success = false;
                }
            }


            if (success == true)
            {
                if (editProfileName.Text != "")
                {
                   // myDAL obj = new myDAL();
                    obj.update_name(Session["Username"].ToString(), editProfileName.Text);
                }

                if (editProfileCity.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_city(Session["Username"].ToString(), editProfileCity.Text);
                }

                if (editProfileCountry.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_country(Session["Username"].ToString(), editProfileCountry.Text);
                }

                if (editProfilePhone.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_phone(Session["Username"].ToString(), editProfilePhone.Text);
                }

                if (editProfileCredit.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_credit(Session["Username"].ToString(), editProfileCredit.Text);
                }

                if (editProfilePassword.Text != "")
                {
                   // myDAL obj = new myDAL();
                    obj.update_password(Session["Username"].ToString(), editProfilePassword.Text);
                }

                Response.Redirect("View Profile.aspx");
            }
        }
    }
}