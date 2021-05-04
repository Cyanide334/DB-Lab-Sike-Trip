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
            
        }

        public void BtnSave_Click(object sender, EventArgs e)
        {
            //System.Diagnostics.Debug.WriteLine("hello world");
            string name = logInUsername.Text;
            string password = loginPassword.Text;
            bool s = true;

            myDAL obj = new myDAL();
            obj.log_in(name, password, ref s);


            if (s == false)
            {
                logInUsername.Text = "";
                logInUsername.Attributes.Add("Placeholder", "Invalid");
            }
            else {
                logInUsername.Text = "";
                logInUsername.Attributes.Add("Placeholder", "Success");
            }
        }
        
    }



}