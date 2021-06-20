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
    public partial class Edit_Tour_Service : System.Web.UI.Page
    {
        protected string get_tour_name()
        {
            myDAL obj = new myDAL();
            return obj.return_tour_name_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_departure()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_departure_date()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_date_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_departure_time()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_time_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_arrival_date()
        {
            myDAL obj = new myDAL();
            return obj.return_arrival_date_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_arrival_time()
        {
            myDAL obj = new myDAL();
            return obj.return_arrival_time_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_return_date()
        {
            myDAL obj = new myDAL();
            return obj.return_return_date_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_return_time()
        {
            myDAL obj = new myDAL();
            return obj.return_return_time_from_db(Session["TourID"].ToString());
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
                    EditProfileError.InnerText = "Username already in use!";
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
                    EditProfileError.InnerText = "Credit Card already in use!";
                }
            }

            if (editProfileEmailForm.Text != "")
            {
                if (obj.update_email(Session["Username"].ToString(), editProfileEmailForm.Text) != 0)
                {
                    // print error
                    EditProfileError.InnerText = "Email already in use!";
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