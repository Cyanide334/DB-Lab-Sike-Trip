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
    public partial class Home1 : System.Web.UI.Page
    {
        protected void store_tour_id(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Session["TourID"] =  btn.CommandArgument;
            Response.Redirect("View Tour.aspx");
        }


        protected void store_bus_id(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Session["BusID"] = btn.CommandArgument;
            Response.Redirect("View Bus.aspx");
        }
        protected void display_tour(int id, string departure, string destination, string reference_image, int price) 
        {
            /*      <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
<%--              <img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">--%>
              <asp:Image ID="Image13" ImageUrl="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" runat="server" />
              <div class="portfolio-info">
                <h4>Tour 7</h4>
                <p>Type3</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 1"><i class="bx bx-plus"></i></a>
                  <a href="View Tour.aspx" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>*/





            //trips.Controls.Add(new LiteralControl("<div class=\"col-lg-4 col-md-6 portfolio-item filter-card\"> <div class=\"portfolio-wrap\">" +
            //     "<img src = \"" + reference_image + "\"" + "class=\"img-fluid\"/> <div class=\"portfolio-info\">"
            //     + "<p>" + departure + " to " + destination + "</p>"
            //     + "<p>" + "Price: " + price + "</p>"
            //     + "<div class=\"portfolio-links\" runat=\"server\">"
            //     + "<a href =\"" + reference_image + "\" data-gallery=\"portfolioGallery\" class=\"portfolio-lightbox\" title=\"Card 1\"><i class=\"bx bx-plus\"></i></a>"
            //    // + "<a href = \"View Tour.aspx\" class=\"portfolio-details-lightbox\" data-glightbox=\"type: external\" title=\"Portfolio Details\"  runat=\"server\" OnClick = \"store_tour_id\" CommandArgument = \"id\" ><i class=\"bx bx-link\"></i></a>"
            //     + "<asp:Button  Text = \"View Details\" runat = \"server\"  CssClass = \"btn btn-danger\" Width = \"130px\"  OnClick = \"store_tour_id\" CommandArgument = \"1\"/>"
            //     + "</div></div></div></div>"));

            trips.Controls.Add(new LiteralControl("<div class=\"col-lg-4 col-md-6 portfolio-item filter-card\"> <div class=\"portfolio-wrap\">" +
            "<img src = \"" + reference_image + "\"" + "class=\"img-fluid\"/> <div class=\"portfolio-info\">"
            + "<p>" + departure + " to " + destination + "</p>"
            + "<p>" + "Price: " + price + "</p>"
            + "<div class=\"portfolio-links\" runat=\"server\">"
            + "<a href =\"" + reference_image + "\" data-gallery=\"portfolioGallery\" class=\"portfolio-lightbox\" title=\"Card 1\"><i class=\"bx bx-plus\"></i></a>"));
          
            Button btn = new Button();
            btn.Text = "View Details";
            btn.Width = 130;
            btn.CssClass = "btn btn-danger";
            btn.CommandArgument = id.ToString();
            // btn.Attributes.Add("OnClick", "store_tour_id");
            btn.Click += new EventHandler(store_tour_id);
            trips.Controls.Add(btn);

            trips.Controls.Add(new LiteralControl( "</div></div></div></div>"));

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

        protected void load_tours_catalogue()
        {
            myDAL obj = new myDAL();

          
            SqlDataReader reader = obj.get_tours();
            int id, price;
            string departure, destination, reference_image; 
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    id = reader.GetInt32(0);
                    departure = reader.GetString(1);
                    destination = reader.GetString(2);
                    reference_image = reader.GetString(3);
                    price = reader.GetInt32(4);

                    display_tour(id, departure, destination, reference_image, price);
                }
            }

            
        }


        protected void load_buses_catalogue()
        {
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

                    display_bus(id, model, price, reference_image);
                }
          }

            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                welcomespan.InnerText = "SIKE! TRIP, " + Session["Username"].ToString() + '!';
            }
            
            load_tours_catalogue();
            load_buses_catalogue();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }
    }
}