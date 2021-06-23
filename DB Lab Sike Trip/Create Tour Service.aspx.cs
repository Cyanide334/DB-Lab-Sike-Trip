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
    public partial class Create_Tour_Service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }
        protected void createTourSaveButton_Click(object sender, EventArgs e)
        {
            CreateTourError.InnerText = "";
            string departure = Departure.Text;
            string destination = Destination.Text;
            string ddate = Ddate.Text;
            string dtime = Dtime.Text;
            string adate = Adate.Text;
            string atime = Atime.Text;
            string rdate = Rdate.Text;
            string rtime = Rtime.Text;
            string number_of_days = numDays.Text;
            string total_seats = TotalSeats.Text;
            string pps = PPS.Text;
            string tourguide = TourGuide.Text;
            string busnumber = BusNum.Text;
            string reference_image = ReferenceImage.Text;
            
            myDAL obj = new myDAL();

            obj.create_tour(departure, destination, ddate, dtime, adate, atime, rdate, rtime, pps, number_of_days, tourguide, busnumber, total_seats, reference_image);

            Response.Redirect("Admin.aspx");

        }
    }
}