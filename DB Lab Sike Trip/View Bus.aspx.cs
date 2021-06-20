using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Lab_Sike_Trip.DAL;
using DB_Lab_Sike_Trip;


namespace DB_Lab_Sike_Trip
{
    public partial class View_Bus : System.Web.UI.Page
    {
        // get bus make
        protected string get_bus_manufacturer()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_make_from_db(Session["BusID"].ToString());
        }

        // get license number
        protected string get_bus_license()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_license_number_from_db(Session["BusID"].ToString());
        }

        // get Registration number
        protected string get_bus_registration_number()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_registration_number_from_db(Session["BusID"].ToString());
        }

        //get capacity
        protected int get_bus_capacity()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_capacity_from_db(Session["BusID"].ToString());
        }

        //get PricePerKm
        protected int get_bus_priceperday()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_priceperday_from_db(Session["BusID"].ToString());

        }
        


        //get bus model 
        protected string get_bus_model()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_model_from_db(Session["BusID"].ToString());
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BusID"] == null)
            {
                DisplayViewBus.Visible = false;

            }
            // if a bus is clicked then display appropriate info of it
            if (Session["BusID"] != null)
            {
                //ViewBusBookButton.Visible = true;
                display_manufacturer.Text = get_bus_manufacturer();
                display_model.Text = get_bus_model();
                display_registrationnumber.Text = get_bus_registration_number();
                display_capacity.Text = get_bus_capacity().ToString();
                display_priceperkm.Text = get_bus_priceperday().ToString();
                //display_bus_reservation_count.Text = get_bus_reservation_count();
               
            }
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bus Booking.aspx");
        }
    }
}