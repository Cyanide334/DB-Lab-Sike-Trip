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
    public partial class BusBooking : System.Web.UI.Page
    {
        // get bus make
        protected string get_bus_make()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_make_from_db(Session["BusId"].ToString());
        }

        // get license number
        protected string get_bus_license()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_license_number_from_db(Session["BusId"].ToString());
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
            return obj.return_bus_capacity_from_db(Session["BusId"].ToString());
        }

        //get PricePerKm
        protected int get_bus_priceperday()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_priceperday_from_db(Session["BusId"].ToString());

        }
        //Reservation Count




        protected string get_bus_manufacturer()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_make_from_db(Session["BusId"].ToString());
        }


        protected string get_bus_model()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_model_from_db(Session["BusId"].ToString());
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["BusId"] == null)
            {
                // DisplayBusBooking.Visible = false;
                Response.Redirect("Home.aspx#portfolio");

            }
            // if a bus is clicked then display appropriate info of it
            if (Session["BusId"] != null)
            {
                //ViewBusBookButton.Visible = false;
                myDAL obj = new myDAL();
                creditcard.Text = obj.return_credit_from_db(Session["Username"].ToString());
                display_manufacturer.Text = get_bus_manufacturer();
                display_model.Text = get_bus_model();
                display_booking_registrationnumber.Text = get_bus_registration_number();
                display_booking_capacity.Text = get_bus_capacity().ToString();
                display_booking_priceperkm.Text = get_bus_priceperday().ToString();
                //display_bus_reservation_count.Text = get_bus_reservation_count();
            }
        }

     
        protected void BookButton_Click(object sender, EventArgs e)
        {

            string username = Session["Username"].ToString();
            string busID = Session["busID"].ToString();
            string startdate = bus_booking_date.Text;
            string number_of_days = bus_booking_days.Text;

           
            myDAL obj = new myDAL();
            int val = obj.busBooking(username, busID, startdate, number_of_days);
            if (val == 1)
            {
                bus_booking_date.Text = "Bus already booked in this interval!"; 
            }
        }

    }
}