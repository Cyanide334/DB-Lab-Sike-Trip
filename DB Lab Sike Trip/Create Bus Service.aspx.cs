﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Lab_Sike_Trip;
using DB_Lab_Sike_Trip.DAL;

namespace DB_Lab_Sike_Trip
{
    public partial class Create_Bus_Service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void createBusSaveButton_Click(object sender, EventArgs e)
        {
            CreateBusError.InnerText = "";
            string manufacturer = BusManufacturer.Text;
            string model = BusModel.Text;
            string rnum = Rnum.Text;
            string lnum = Lnum.Text;
            string capacity = Capacity.Text;
            string ppd = PPD.Text;
            string reference_image = ReferenceImage.Text;
            
            myDAL obj = new myDAL();

            int val = obj.create_bus(manufacturer, model, rnum, lnum, capacity, ppd, reference_image);

            if (val == 1)
            {
                CreateBusServiceError.InnerText = "Bus with same Registration number exists already!";
            }
            if (val == 2)
            {
                CreateBusServiceError.InnerText = "Bus with same Licence number exists already!";
            }
            else {
                Response.Redirect("Admin.aspx");
            }
            
        }
    }
}