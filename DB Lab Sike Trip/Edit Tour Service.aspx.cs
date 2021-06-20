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
    public partial class Edit_Tour_Service : System.Web.UI.Page
    {
        protected string get_tour_name()
        {
            myDAL obj = new myDAL();
            return obj.return_tour_name_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_departure()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_destination()
        {
            myDAL obj = new myDAL();
            return obj.return_destination_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_departure_date()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_date_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_departure_time()
        {
            myDAL obj = new myDAL();
            return obj.return_departure_time_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_arrival_date()
        {
            myDAL obj = new myDAL();
            return obj.return_arrival_date_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_arrival_time()
        {
            myDAL obj = new myDAL();
            return obj.return_arrival_time_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_return_date()
        {
            myDAL obj = new myDAL();
            return obj.return_return_date_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_return_time()
        {
            myDAL obj = new myDAL();
            return obj.return_return_time_from_db(Session["TourID"].ToString());
        }
        protected int get_tour_number_of_days()
        {
            myDAL obj = new myDAL();
            return obj.return_number_of_days_from_db(Session["TourID"].ToString());
        }
        protected int get_tour_total_seats()
        {
            myDAL obj = new myDAL();
            return obj.return_total_capacity_from_db(Session["TourID"].ToString());
        }
        protected int get_tour_reservation_count()
        {
            myDAL obj = new myDAL();
            return obj.return_reservation_count_from_db(Session["TourID"].ToString());
        }
        protected int get_tour_price_per_seat()
        {
            myDAL obj = new myDAL();
            return obj.return_price_of_tour_from_db(Session["TourID"].ToString());
        }
       
        protected string get_tour_tour_guide()
        {
            myDAL obj = new myDAL();
            return obj.return_tour_guide_name_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_bus_number()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_number_from_db(Session["TourID"].ToString());
        }
        protected string get_tour_reference_image()
        {
            myDAL obj = new myDAL();
            return obj.return_tour_reference_image_from_db(Session["TourID"].ToString());
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TourID"] != null)
            {

                Departure.Attributes.Add("placeholder", get_tour_departure());
                Destination.Attributes.Add("placeholder", get_tour_destination());
                Ddate.Attributes.Add("placeholder", get_tour_departure_date());
                Dtime.Attributes.Add("placeholder", get_tour_departure_time());
                Adate.Attributes.Add("placeholder", get_tour_arrival_date());
                Atime.Attributes.Add("placeholder", get_tour_arrival_time());
                Rdate.Attributes.Add("placeholder", get_tour_return_date());
                Rtime.Attributes.Add("placeholder", get_tour_return_time());
                numDays.Attributes.Add("placeholder", get_tour_number_of_days().ToString());
                TotalSeats.Attributes.Add("placeholder", get_tour_total_seats().ToString());
                PPS.Attributes.Add("placeholder", get_tour_price_per_seat().ToString());
                TourGuide.Attributes.Add("placeholder", get_tour_tour_guide());
                BusNum.Attributes.Add("placeholder",get_tour_bus_number());
                ReferenceImage.Attributes.Add("placeholder", get_tour_reference_image());
            }
        }

       
        protected void editTourSaveButton_Click(object sender, EventArgs e)
        {
            bool success = true;
            myDAL obj = new myDAL();
           

            if (TotalSeats.Text != "")
            {
                if (obj.update_credit(Session["TourID"].ToString(), TotalSeats.Text) != 0)
                {
                    // print error
                    success = false;
                    EditTourError.InnerText = "New Capacity of the bus is less than its reservation count";
                }
            }


            if (success == true)
            {
                if (editProfileName.Text != "")
                {
                    // myDAL obj = new myDAL();
                    obj.update_name(Session["Username"].ToString(), editProfileName.Text);
                }

                if (editProfileCity.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_city(Session["Username"].ToString(), editProfileCity.Text);
                }

                if (editProfileCountry.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_country(Session["Username"].ToString(), editProfileCountry.Text);
                }

                if (editProfilePhone.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_phone(Session["Username"].ToString(), editProfilePhone.Text);
                }

                if (editProfileCredit.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_credit(Session["Username"].ToString(), editProfileCredit.Text);
                }

                if (editProfilePassword.Text != "")
                {
                    // myDAL obj = new myDAL();
                    obj.update_password(Session["Username"].ToString(), editProfilePassword.Text);
                }

                Response.Redirect("View Profile.aspx");
            }
        }
    }
}