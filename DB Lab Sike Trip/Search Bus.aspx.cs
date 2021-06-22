using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Lab_Sike_Trip;
using DB_Lab_Sike_Trip.DAL;
using System.Data;
using System.Data.SqlClient;

namespace DB_Lab_Sike_Trip
{
    public partial class Search_Bus : System.Web.UI.Page
    {


        protected void store_bus_id(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Session["BusID"] = btn.CommandArgument;
            Response.Redirect("View Bus.aspx");
        }
        protected void display_bus(int id, string model, int price, string reference_image)
        {

            buses.Controls.Add(new LiteralControl("<div class=\"col-lg-4 col-md-6 portfolio-item filter-card\"> <div class=\"portfolio-wrap\">" +
                 "<img src = \"" + reference_image + "\"" + "class=\"img-fluid\"/> <div class=\"portfolio-info\">"
                 + "<p>" + model + "</p>"
                 + "<p>" + "Price per day: " + price + "</p>"
                 + "<div class=\"portfolio-links\" runat=\"server\">"

                 + "<a href =\"" + reference_image + "\" data-gallery=\"portfolioGallery\" class=\"portfolio-lightbox\" title=\"Card 1\"><i class=\"bx bx-plus\"></i></a>"));


            Button btn = new Button();
            btn.Text = "View Details";
            btn.Width = 130;
            btn.CssClass = "btn btn-danger";
            btn.CommandArgument = id.ToString();
            // btn.Attributes.Add("OnClick", "store_tour_id");
            btn.Click += new EventHandler(store_bus_id);
            buses.Controls.Add(btn);

            buses.Controls.Add(new LiteralControl("</div></div></div></div>"));

        }


        protected void search_buses(object sender, EventArgs e)
        {
            Session["Minimum"] = inputMaxPrice.Text;
            Session["Maximum"] = inputMinPrice.Text;
        }


        protected void load_buses_catalogue()
        {
            int min;
            int max;
            if (inputMaxPrice.Text == "")
            {
                max = 0;
            }
            else
            {
                max = int.Parse(inputMaxPrice.Text);
            }
            if (inputMinPrice.Text == "")
            {
                min = 0;
            }
            else
            {
                min = int.Parse(inputMinPrice.Text);
            }
            myDAL obj = new myDAL();


            SqlDataReader reader = obj.get_buses();
            int id, price;
            string model, reference_image;
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    id = reader.GetInt32(0);
                    model = reader.GetString(1);
                    price = reader.GetInt32(2);
                    reference_image = reader.GetString(3);
                    if (min == 0)
                    {
                        if (max != 0 && price <= max)
                        {
                            display_bus(id, model, price, reference_image);
                        }
                    }
                    if (max == 0) //price <= max && price >= min
                    {
                        if (min != 0 && price >= min)
                        {
                            display_bus(id, model, price, reference_image);
                        }
                    }
                    else
                    {
                        if (min != 0 && max != 0)
                        {
                            if (price <= max && price >= min)
                            {
                                display_bus(id, model, price, reference_image);
                            }
                        }
                    }
                }
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {

            portfolio.Visible = true;
            load_buses_catalogue();
        }
    }
}