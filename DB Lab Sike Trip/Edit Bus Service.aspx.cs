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
        protected void editBusSaveButton_Click(object sender, EventArgs e)
        {
            bool success = true;
            myDAL obj = new myDAL();
            if (Rnum.Text != "")
            {
                if (obj.update_bus_registration(Session["BusID"].ToString(), Rnum.Text) != 0)
                {
                    // print error
                    EditBusError.InnerText = "Registration Number already present in database!";
                    success = false;
                }
               
        //    }

            if (Lnum.Text != "")
            {
                if (obj.update_bus_license(Session["BusID"].ToString(), Lnum.Text) != 0)
                {
                    // print error
                    success = false;
                    EditBusError.InnerText = "License Number already present in database!";
                }
            }

            if (success == true)
            {

                if (BusManufacturer.Text != "")
                {
                    // myDAL obj = new myDAL();
                    obj.update_bus_manufacturer(Session["BusID"].ToString(), BusManufacturer.Text);
                }

                if (BusModel.Text != "")
                {
                    // myDAL obj = new myDAL();
                    obj.update_bus_model(Session["BusID"].ToString(), BusModel.Text);
                }

                if (PPD.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_bus_pricePerDay(Session["BusID"].ToString(), PPD.Text);
                }

                if (ReferenceImage.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_bus_referenceImage(Session["BusID"].ToString(), ReferenceImage.Text);
                }

                if (Capacity.Text != "")
                {
                    //myDAL obj = new myDAL();
                    obj.update_bus_capacity(Session["BusID"].ToString(), Capacity.Text);
                }


            }
        }
    }
}