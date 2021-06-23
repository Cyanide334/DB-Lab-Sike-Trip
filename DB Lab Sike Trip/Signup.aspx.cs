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
            
            if (Session["Username"] != null)
            {
                Response.Redirect("View Profile.aspx");
            }
            
        }



        private void displayString(int rtn, ref string outputS, string username)


        {
            if (rtn == 0)
            {
                outputS = "Registration Successful!";
                Session["Username"] = username;
                Response.Redirect("View Profile.aspx");

            }
            else
            {

                // clearForm();

                if (rtn == 1)
                {
                    outputS = "Email already in use!";
                    signuperror.InnerText = outputS;

                }

                else if (rtn == 2)
                {
                    outputS = "Username already in use!";

                    signuperror.InnerText = outputS;

                }
                
            }

        }



        protected void SignupSave_Click(object sender, EventArgs e)
        {
            signuperror.InnerText = "";
            string name = signUpFullName.Text;
            string password = signUpPassword.Text;
            string contact = signUpPhoneNumber.Text;
            string city = signUpCity.Text;
            string email = signUpEmail.Text;
            string credit = signUpCreditCardNumber.Text;
            string username = signUpUsername.Text;
            string country = signUpCountry.Text;
            string DOB = dob.Text;

            myDAL obj = new myDAL();

            // checks
            bool valid_input = true;
            //if (name == "")
            //{
            //    signUpFullName.Attributes.Add("PlaceHolder", "Your Full Name is needed");
            //    valid_input = false;
            //}

            //if (password == "")
            //{
            //    signUpPassword.Attributes.Add("PlaceHolder", "Your Password is needed");
            //    valid_input = false;
            //}

            //if (contact == "")
            //{
            //    signUpPhoneNumber.Attributes.Add("PlaceHolder", "Your Contact Number is needed");
            //    valid_input = false;
            //}

            //if (city == "")
            //{
            //    signUpCity.Attributes.Add("PlaceHolder", "Your City is needed");
            //    valid_input = false;
            //}

            //if (email == "")
            //{
            //    signUpEmail.Attributes.Add("PlaceHolder", "Your e-mail is needed");
            //    valid_input = false;
            //}

            //if (credit == "")
            //{
            //    signUpCreditCardNumber.Attributes.Add("PlaceHolder", "Your Credit Card Number is needed");
            //    valid_input = false;
            //}

            //if (username == "")
            //{
            //    signUpUsername.Attributes.Add("PlaceHolder", "Your username is needed");
            //    valid_input = false;
            //}
            //if (country == "")
            //{
            //    signUpCountry.Attributes.Add("PlaceHolder", "Your Country is needed");
            //    valid_input = false;
            //}


            //if (signUpPassword.Text != signUpConfirmPassword.Text)
            //{
            //    signUpPassword.Attributes.Add("PlaceHolder", "Passwords do not match");
            //    valid_input = false;
            //}


            if (valid_input == true)
            {
                string outputString = "";
                int rtn = 10;
                obj.sign_up(name, username, password, email, country, city, contact, credit, DOB, ref rtn);
                displayString(rtn, ref outputString, username);
            }

        }
    }
}