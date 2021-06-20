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
              <a href="Tour Booking.aspx" class="btn-get-started animate__animated animate__fadeInUp scrollto">Book Now</a>
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
               <a href="Bus Booking.aspx" class="btn-get-started animate__animated animate__fadeInUp scrollto">Book Now</a>
            </div>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/home3.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">Fulfillment</h2>
              <p class="animate__animated animate__fadeInUp">You will be spiritually enlightened!</p>
              <a href="Tour Booking.aspx" class="btn-get-started animate__animated animate__fadeInUp scrollto">Book Now</a>
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

       <!-- ======= Portfolio Section ======= -->
    <form runat="server">
    <section id="portfolio" class="portfolio" runat="server">
        
      <div class="container" >
          <div class="section-title">
                <h2>Sike! Trips</h2>
                 <p>Trips & Tours</p>
              </div>
        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
            </ul>
          </div>
        </div>
       
        <div class="row portfolio-container" runat="server" id="trips">
            
      
          
        </div>
     
      </div>
    </section>
      <!-- buses section -->
          <section id="Section1" class="portfolio" runat="server">
        
      <div class="container" >
          <div class="section-title">
                 <p>Buses</p>
              </div>  
        
        <div class="row portfolio-container" runat="server" id="buses">
        </div>
       
      </div>
    </section>
        </form>
          <!-- End Portfolio Section -->

         <section id="catalogue" class="catalogue">
      <div class="container">
                <div class="section-title">
                     <h2>Sike! Bus</h2>
                     <p>Buses &amp; Routes</p>
                 </div>
        <div class="row">

          <div class="col-lg-6">
            <div class="catalogue-item">
<%--              <img src="assets/img/testimonials/testimonials-1.jpg" class="catalogue-img" alt="">--%>
              <asp:Image ID="Image16" ImageUrl="assets/img/portfolio/portfolio-4.jpg" class="catalogue-img" runat="server" />
              <h3>Richman Buses</h3>
              <h4>Premium & Luxorius</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="catalogue-item mt-4 mt-lg-0">
<%--              <img src="assets/img/testimonials/testimonials-2.jpg" class="catalogue-img" alt="">--%>
              <asp:Image ID="Image17" ImageUrl="assets/img/testimonials/testimonials-2.jpg" class="catalogue-img" runat="server" />
              <h3>Lahore to Multan</h3>
              <h4>Economy</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="catalogue-item mt-4">
<%--              <img src="assets/img/testimonials/testimonials-3.jpg" class="catalogue-img" alt="">--%>
              <asp:Image ID="Image18" ImageUrl="assets/img/testimonials/testimonials-3.jpg" class="catalogue-img" runat="server" />
              <h3>Some Other Route</h3>
              <h4>Pretty Cheap Bus</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="catalogue-item mt-4">
<%--              <img src="assets/img/testimonials/testimonials-4.jpg" class="catalogue-img" alt="">--%>
              <asp:Image ID="Image19" ImageUrl="assets/img/testimonials/testimonials-4.jpg" class="catalogue-img" runat="server" />
              <h3>Matt Brandon</h3>
              <h4>Freelancer</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="catalogue-item mt-4">
<%--              <img src="assets/img/testimonials/testimonials-5.jpg" class="catalogue-img" alt="">--%>
              <asp:Image ID="Image20" ImageUrl="assets/img/testimonials/testimonials-5.jpg" class="catalogue-img" runat="server" />
              <h3>John Larson</h3>
              <h4>Entrepreneur</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="catalogue-item mt-4">
<%--              <img src="assets/img/testimonials/testimonials-6.jpg" class="catalogue-img" alt="">--%>
              <asp:Image ID="Image21" ImageUrl="assets/img/testimonials/testimonials-6.jpg" class="catalogue-img" runat="server" />
              <h3>Emily Harison</h3>
              <h4>Store Owner</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Eius ipsam praesentium dolor quaerat inventore rerum odio. Quos laudantium adipisci eius. Accusamus qui iste cupiditate sed temporibus est aspernatur. Sequi officiis ea et quia quidem.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Bus Section -->
    
        <!-- End Catalogue Section -->

   

  </main><!-- End #main -->




</asp:Content>
