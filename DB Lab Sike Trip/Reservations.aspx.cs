using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Lab_Sike_Trip;
using DB_Lab_Sike_Trip.DAL;
using System.Data;
using System.Data.SqlClient;

namespace DB_Lab_Sike_Trip
{
    public partial class Reservations : System.Web.UI.Page
    {
        protected void load_reservations()
        {
            myDAL obj = new myDAL();
            LogTable.DataSource = obj.get_reservations(Session["Username"].ToString());
            LogTable.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                load_reservations();
            }
            
        }

        protected bool valid_input(string input)
        {
            myDAL obj = new myDAL();
            string s = Session["Username"].ToString();
            int val = obj.check_service_id(input, s);
            if (val == 1)
            {
                return true;
            }
            else
                return false;
        }

        protected int delete_reservation(string input)
        {
            myDAL obj = new myDAL();
           return obj.cancel_reservation_from_db(input);
        }
        
        protected void cancel_reservation(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (valid_input(service_input.Text))
                {
                    if (delete_reservation(service_input.Text) == 1) {
                        errorbox.InnerText = "You cannot cancel a reservation after 24 hours!";
                    }
                    else {
                        Response.Redirect("Reservations.aspx");
                    }
                }
                else 
                {
                    errorbox.InnerText = "Enter a valid Service ID!";
                }
            }

        }
    }
}