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
            loadGrid();
        }


        public void loadGrid()
        {
            myDAL obj = new myDAL();
            ItemGrid.DataSource = obj.SelectItem();
            ItemGrid.DataBind();
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
            
            myDAL obj = new myDAL();
            obj.sign_up(name, username, password, email, country, city, contact, credit);
          
        }
    }
}