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
    public partial class BusBooking : System.Web.UI.Page
    {
        // get bus make
        protected string get_bus_make()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_make_from_db(Session["TourId"].ToString());
        }

        // get license number
        protected string get_bus_license()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_license_number_from_db(Session["TourId"].ToString());
        }

        // get Registration number
        protected string get_bus_registration_number()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_registration_number_from_db(Session["Username"].ToString());
        }

        //get capacity
        protected string get_bus_capacity()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_capacity_from_db(Session["TourId"].ToString());
        }

        //get PricePerKm
        protected string get_bus_priceperkm()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_priceperkm_from_db(Session["TourId"].ToString());

        }
        //Reservation Count
        protected string get_bus_reservation_count()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_reservation_count_from_db(Session["TourId"].ToString());
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TourId"] == null)
            {
                //DisplayBus.Visible = false;

            }
            // if a bus is clicked then display appropriate info of it
            if (Session["TourId"] != null)
            {
                //ViewBusBookButton.Visible = false;
                //display_busmake.Text = get_bus_make();
                //display_licensenumber.Text = get_bus_license();
                //display_registrationnumber.Text = get_bus_registration_number();
                //display_capacity.Text = get_bus_capacity();
                //display_priceperkm.Text = get_bus_priceperkm();
                //display_bus_reservation_count.Text = get_bus_reservation_count();

            }
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bus Booking.aspx");
        }

    }
}