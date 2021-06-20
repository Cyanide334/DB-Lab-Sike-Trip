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
    public partial class Edit_Bus_Service : System.Web.UI.Page
    {
        protected string get_bus_manufacturer()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_make_from_db(Session["BusID"].ToString());
        }
        protected string get_bus_model()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_model_from_db(Session["BusID"].ToString());
        }
        protected string get_bus_registration_number()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_registration_number_from_db(Session["BusID"].ToString());
        }
        protected string get_bus_license_number()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_license_number_from_db(Session["BusID"].ToString());
        }
        protected int get_bus_capacity()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_capacity_from_db(Session["BusID"].ToString());
        }
        //protected int get_bus_reservation_count()
        //{
        //    myDAL obj = new myDAL();
        //    return obj.return_bus_reservation_count_from_db(Session["BusID"].ToString());
        //}
        protected int get_bus_price_per_day()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_priceperday_from_db(Session["BusID"].ToString());
        }
        protected string get_bus_reference_image()
        {
            myDAL obj = new myDAL();
            return obj.return_bus_reference_image_from_db(Session["BusID"].ToString());
        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BusID"] != null)
            {

                BusManufacturer.Attributes.Add("placeholder", get_bus_manufacturer());
                BusModel.Attributes.Add("placeholder", get_bus_model());
                Rnum.Attributes.Add("placeholder", get_bus_registration_number());
                Lnum.Attributes.Add("placeholder", get_bus_license_number());
                Capacity.Attributes.Add("placeholder", get_bus_capacity().ToString());
                PPD.Attributes.Add("placeholder", get_bus_price_per_day().ToString());
                ReferenceImage.Attributes.Add("placeholder", get_bus_reference_image());
              
            }
        }
        //protected void editBusSaveButton_Click(object sender, EventArgs e)
        //{
        //    bool success = true;
        //    myDAL obj = new myDAL();
        //    if (Rnum.Text != "")
        //    {
        //        if (obj.update_bus_registration_number(Session["BusID"].ToString(), Rnum.Text) != 0)
        //        {
        //            // print error
        //            EditBusError.InnerText = "Registration Number already present in database!";
        //            success = false;
        //        }
               
        //    }

        //    if (Lnum.Text != "")
        //    {
        //        if (obj.update_bus_license_number(Session["BusID"].ToString(), Lnum.Text) != 0)
        //        {
        //            // print error
        //            success = false;
        //            EditBusError.InnerText = "License Number already present in database!";
        //        }
        //    }

        //    if (success == true)
        //    {
        //        if (BusManufacturer.Text != "")
        //        {
        //            // myDAL obj = new myDAL();
        //            obj.update_name(Session["Username"].ToString(), BusManufacturer.Text);
        //        }

        //        if (BusModel.Text != "")
        //        {
        //            //myDAL obj = new myDAL();
        //            obj.update_bus_model(Session["Username"].ToString(), BusModel.Text);
        //        }

        //        if (editProfileCountry.Text != "")
        //        {
        //            //myDAL obj = new myDAL();
        //            obj.update_country(Session["Username"].ToString(), editProfileCountry.Text);
        //        }

        //        if (editProfilePhone.Text != "")
        //        {
        //            //myDAL obj = new myDAL();
        //            obj.update_phone(Session["Username"].ToString(), editProfilePhone.Text);
        //        }

        //        if (editProfileCredit.Text != "")
        //        {
        //            //myDAL obj = new myDAL();
        //            obj.update_credit(Session["Username"].ToString(), editProfileCredit.Text);
        //        }

        //        if (editProfilePassword.Text != "")
        //        {
        //            // myDAL obj = new myDAL();
        //            obj.update_password(Session["Username"].ToString(), editProfilePassword.Text);
        //        }

        //        Response.Redirect("View Profile.aspx");
        //    }
        //}
    }
}