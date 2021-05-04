using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Lab_Sike_Trip.DAL;

namespace DB_Lab_Sike_Trip
{




    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }            



        protected void signupSave_Click(object sender, EventArgs e)
        {

            string name = fullname.Text;
            string password = signupPassword.Text;
            string contact = signupPhoneNumber.Text;
            string city = signUpCity.Text;
            string email = signUpEmail.Text;
            string credit = signupCreditCardNumber.Text;
            string username = signUpUsername.Text;
            string country = signUpCountry.Text;
            string DOB = dob.Text;
            myDAL obj = new myDAL();

            // checks
            bool valid_input = true;
            if (name == "")
            {
                fullname.Attributes.Add("PlaceHolder", "Your Full Name is needed");
                valid_input = false;
            }

            if (password == "")
            {
                signupPassword.Attributes.Add("PlaceHolder", "Your Password is needed");
                valid_input = false;
            }

            if (contact == "")
            {
                signupPhoneNumber.Attributes.Add("PlaceHolder", "Your Contact Number is needed");
                valid_input = false;
            }

            if (city == "")
            {
                signUpCity.Attributes.Add("PlaceHolder", "Your City is needed");
                valid_input = false;
            }

            if (email == "")
            {
                signUpEmail.Attributes.Add("PlaceHolder", "Your e-mail is needed");
                valid_input = false;
            }

            if (credit == "")
            {
                signupCreditCardNumber.Attributes.Add("PlaceHolder", "Your Credit Card Number is needed");
                valid_input = false;
            }

            if (username == "")
            {
                signUpUsername.Attributes.Add("PlaceHolder", "Your username is needed");
                valid_input = false;
            }
            if (country == "")
            {
                signUpCountry.Attributes.Add("PlaceHolder", "Your Country is needed");
                valid_input = false;
            }


            if (signupPassword.Text != signupConfirmPassword.Text)
            {
                signupPassword.Attributes.Add("PlaceHolder", "Passwords do not match");
                valid_input = false;
            }


            if (valid_input == true)
            {
                obj.sign_up(name, username, password, email, country, city, contact, credit, DOB);
            }

        }
    }
}