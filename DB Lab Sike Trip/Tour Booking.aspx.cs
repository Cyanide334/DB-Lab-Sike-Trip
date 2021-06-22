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
    public partial class Tour_Booking : System.Web.UI.Page
    {

        private void DisplayStringsOnForm(int rtn, ref string outputS, string tourID)
        {
            if (rtn == 0)
            {
                outputS = "Reservation was Successful!";
                Session["TourId"] = tourID;
                Response.Redirect("View Tour.aspx");

            }
            else
            {
                if (rtn == 1)
                {
                    outputS = "Credit Card already in use!";
                    tourbookingerror.InnerText = outputS;

                }
                if (rtn == 2)
                {
                    outputS = "Bus Capacity is Full!";
                    tourbookingerror.InnerText = outputS;

                }
            }
        }

        // get departure
        protected string get_departure()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_from_db(Session["TourId"].ToString());
        }

        // get destination
        protected string get_destination()
        {
            myDAL obj = new myDAL();
            return obj.return_destination_from_db(Session["TourId"].ToString());
        }

        // get departure date
        protected string get_departure_date()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_date_from_db(Session["TourID"].ToString());
        }

        //get departure time
        protected string get_departure_time()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_time_from_db(Session["TourId"].ToString());
        }

        //get arrival time
        protected string get_arrival_time()
        {
            myDAL obj = new myDAL();
            return obj.return_arrival_time_from_db(Session["TourId"].ToString());

        }
        // get return date
        protected string get_return_date()
        {
            myDAL obj = new myDAL();
            return obj.return_return_date_from_db(Session["TourId"].ToString());
        }

        //get reservation count
        protected int get_reservation_count()
        {
            myDAL obj = new myDAL();
            return obj.return_reservation_count_from_db(Session["TourId"].ToString());
        }

        //get price of tour
        protected int get_price_of_tour()
        {
            myDAL obj = new myDAL();
            return obj.return_price_of_tour_from_db(Session["TourId"].ToString());
        }

        //get number of days
        protected int get_number_of_days()
        {
            myDAL obj = new myDAL();
            return obj.return_number_of_days_from_db(Session["TourId"].ToString());
        }

        //get bus number
        protected string get_bus_number()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_number_from_db(Session["TourId"].ToString());
        }

        //get tour guide name
        protected string get_tour_guide_name()
        {
            myDAL obj = new myDAL();
            return obj.return_tour_guide_name_from_db(Session["TourId"].ToString());
        }

        protected string get_credit_card()
        {
            myDAL obj = new myDAL();
           return obj.return_credit_from_db(Session["Username"].ToString());
            

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["TourId"] == null)
            {
                // DisplayViewTour.Visible = false;
                Response.Redirect("Home.aspx#portfolio");
            }
            // if a tout is clicked then display appropriate info of it
            if (Session["TourId"] != null)
            {
                //showBookTourButton.Visible = false;
                display_credit.Text = get_credit_card();
                display_departure.Text = get_departure();
                display_destination.Text = get_destination();
                display_departure_date.Text = get_departure_date();
                display_departure_time.Text = get_departure_time();
                display_arrival_time.Text = get_arrival_time();
                display_return_date.Text = get_return_date();
                display_price_of_tour.Text = get_price_of_tour().ToString();
                dsiplay_number_of_days.Text = get_number_of_days().ToString();
                display_bus_number.Text = get_bus_number();
                display_tour_guide.Text = get_tour_guide_name();
            }
        }

        protected void TourBookingButton_Click(object sender, EventArgs e)
        {

            string username = Session["Username"].ToString();
            string tickets = TourBookingSeats.Text;
            string tourID = Session["TourID"].ToString();

            myDAL obj = new myDAL();
            obj.TourBooking(username, tourID, tickets);
           // DisplayStringsOnForm(rtn, outputS, tourID);

        }

    }
}