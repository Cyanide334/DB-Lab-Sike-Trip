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

            //string outputString = "";
            //int rtn = 10;
            //obj.create_bus(manufacturer, model, rnum, lnum, capacity, ppd, reference_image,ref rtn);
            //displayString(rtn, ref outputString, username);
            
        }
    }
}