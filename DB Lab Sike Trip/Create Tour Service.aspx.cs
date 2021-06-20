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
            int number_of_days = Convert.ToInt32(numDays.Text);
            int total_seats = Convert.ToInt32(TotalSeats.Text);
            int pps = Convert.ToInt32(PPS.Text);
            string tourguide = TourGuide.Text;
            string busnumber = BusNum.Text;
            string reference_image = ReferenceImage.Text;

            myDAL obj = new myDAL();

            //obj.create_tour(departure, destination, ddate, dtime, adate, atime, rdate,rtime, number_of_days, total_seats, pps, tourguide, busnumber, reference_image);


        }
    }
}