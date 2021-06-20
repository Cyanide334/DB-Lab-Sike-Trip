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
        protected void cancel_reservation(object sender, EventArgs e)
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
    }
}