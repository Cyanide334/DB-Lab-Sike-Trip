<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DB_Lab_Sike_Trip.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">

    <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/home1.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">Welcome to <span id="welcomespan" runat="server">SIKE! TRIP</span></h2>
              <p class="animate__animated animate__fadeInUp">We will provide the best tour packages!</p>
              <a href="#TourCatalogueform" class="btn-get-started animate__animated animate__fadeInUp scrollto">Book Now</a>
            </div>
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/home2.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">Sike! Bus</h2>
              <p class="animate__animated animate__fadeInUp">
                We provide the best bus service on the most popular routes!
              </p>
               <a href="#TourCatalogueform" class="btn-get-started animate__animated animate__fadeInUp scrollto">Book Now</a>
            </div>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/home3.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">Fulfillment</h2>
              <p class="animate__animated animate__fadeInUp">Get the right tour for you</p>
              <a href="Search Tours.aspx" class="btn-get-started animate__animated animate__fadeInUp scrollto">Search Now</a>
            </div>
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">   

    <section id="clients" class="clients section-bg">
      <div class="container">

        <div class="row">

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
<%--            <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">--%>
              <asp:Image ID="Image1" ImageUrl="assets/img/clients/client-1.png" class="img-fluid" runat="server" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
<%--            <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">--%>
              <asp:Image ID="Image2" ImageUrl="assets/img/clients/client-2.png" class="img-fluid" runat="server" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
<%--            <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">--%>
              <asp:Image ID="Image3" ImageUrl="assets/img/clients/client-3.png" class="img-fluid" runat="server" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
<%--            <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">--%>
              <asp:Image ID="Image4" ImageUrl="assets/img/clients/client-4.png" class="img-fluid" runat="server" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
<%--            <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">--%>
              <asp:Image ID="Image5" ImageUrl="assets/img/clients/client-5.png" class="img-fluid" runat="server" />
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center">
<%--            <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">--%>
              <asp:Image ID="Image6" ImageUrl="assets/img/clients/client-6.png" class="img-fluid" runat="server" />
          </div>

        </div>

      </div>
    </section><!-- End Clients Section -->


    <!-- ======= Catalogue Section ======= -->

    <form runat="server" id="TourCatalogueform">
    <section id="TourCatalogue1" class="portfolio" runat="server">
        
      <div class="container" >
          <div class="section-title">
                <h2>Sike! Trip</h2>
                 <p>Trips & Tours</p>
              </div>
       
        <div class="row portfolio-container" runat="server" id="trips">
            
      
          
        </div>
     
      </div>
    </section>
      <!-- buses section -->
          <section id="BusCatalogue" class="portfolio" runat="server">
        
      <div class="container" >
          <div class="section-title">
              <h2>Sike! Trip</h2>
                 <p>Buses</p>
              </div>  
        
        <div class="row portfolio-container" runat="server" id="buses">
        </div>
       
      </div>
    </section>
        </form>
          <!-- End Portfolio Section -->


  </main><!-- End #main -->




</asp:Content>
