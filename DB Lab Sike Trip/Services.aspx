<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="DB_Lab_Sike_Trip.Catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
        <main id="main">
            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>Services</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Services</li>
                        </ol>
                    </div>
                </div>
            </section>
            <!-- End Breadcrumbs -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="icon-box">
                                <i class="bi bi-stars"></i>
                                <h4><a href="#">Tours</a></h4>
                                <p>
                                    You can book tours according to your needs.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 mt-4 mt-md-0">
                            <div class="icon-box">
                                <i class="bi bi-circle-fill"></i>
                                <h4><a href="#">Buses</a></h4>
                                <p>
                                    State of the art buses will be provided to
                                    you.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 mt-4 mt-md-0">
                            <div class="icon-box">
                                <i class="bi bi-house"></i>
                                <h4><a href="#">Hotel</a></h4>
                                <p>
                                    The best hotels in your price range will be
                                    booked for you
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 mt-4 mt-md-0">
                            <div class="icon-box">
                                <i class="bi-egg-fried"></i>
                                <h4><a href="#">Food</a></h4>
                                <p>
                                    There is always an option of including meals
                                    in your deal.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 mt-4 mt-md-0">
                            <div class="icon-box">
                                <i class="bi bi-map-fill"></i>
                                <h4><a href="#">Tour Guide</a></h4>
                                <p>
                                    You can be provided an extremely skilled
                                    Tour Guide if you want.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 mt-4 mt-md-0">
                            <div class="icon-box">
                                <i class="bi bi-bag-plus-fill"></i>
                                <h4><a href="#">Discounts</a></h4>
                                <p>
                                    You can avail many discounts on the basis of
                                    age and association.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Services Section -->

            <!-- ======= Features Section ======= -->
            <section id="features" class="features">
                <div class="container">
                    <div class="section-title">
                        <h2>Features</h2>
                        <p>Check our Features</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-3">
                            <ul class="nav nav-tabs flex-column">
                                <li class="nav-item">
                                    <a
                                        class="nav-link active show"
                                        data-bs-toggle="tab"
                                        href="#tab-1"
                                        >Buses</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a
                                        class="nav-link"
                                        data-bs-toggle="tab"
                                        href="#tab-2"
                                        >Hotel</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a
                                        class="nav-link"
                                        data-bs-toggle="tab"
                                        href="#tab-3"
                                        >Food</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a
                                        class="nav-link"
                                        data-bs-toggle="tab"
                                        href="#tab-4"
                                        >Tour Guide</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a
                                        class="nav-link"
                                        data-bs-toggle="tab"
                                        href="#tab-5"
                                        >Discounts</a
                                    >
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-9 mt-4 mt-lg-0">
                            <div class="tab-content">
                                <div class="tab-pane active show" id="tab-1">
                                    <div class="row">
                                        <div
                                            class="col-lg-8 details order-2 order-lg-1"
                                        >
                                            <h3>State of the Art Buses!</h3>
                                            <p class="fst-italic">
                                               Tours can get extremely tiring while travelling. To make sure our customres are not exhausted, we provide the 
                                               best buses available in the market to our customers on tours.
                                            </p>
                                  
                                        </div>
                                        <div
                                            class="col-lg-4 text-center order-1 order-lg-2"
                                        >
                                            <%--<img
                                                src="assets/img/services/bus.png"
                                                alt=""
                                                class="img-fluid"
                                            />--%>
                                            <asp:Image ID="Image1" ImageUrl="assets/img/services/bus.png" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2">
                                    <div class="row">
                                        <div
                                            class="col-lg-8 details order-2 order-lg-1"
                                        >
                                            <h3>
                                                The Best Hotels in your Price
                                                Range!
                                            </h3>
                                            <p class="fst-italic">
                                                Finding a hotel on your own is
                                                very hard, especially in an
                                                unknown place. People can easily
                                                be overcharged for their stay.
                                                We are experienced individuals
                                                with thorough knowledge of
                                                hotels all around the country
                                                and we can say with a guarantee
                                                that you will get a hotel whcih
                                                has the best value for your
                                                money.
                                            </p>
                                        </div>
                                        <div
                                            class="col-lg-4 text-center order-1 order-lg-2"
                                        >
                                            <%--<img
                                                src="assets/img/services/hotel.png"
                                                alt=""
                                                class="img-fluid"
                                            />--%>
                                           <asp:Image ID="Image2" ImageUrl="assets/img/services/hotel.png" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-3">
                                    <div class="row">
                                        <div
                                            class="col-lg-8 details order-2 order-lg-1"
                                        >
                                            <h3>A Wide Variety of Meals!</h3>
                                            <p class="fst-italic">
                                                We provide our customers with
                                                the most nutritious meals. There
                                                is a wide variety of food
                                                avilable so the everyone can
                                                have something they like.
                                            </p>
                                        </div>
                                        <div
                                            class="col-lg-4 text-center order-1 order-lg-2"
                                        >
                                          <%--  <img
                                                src="assets/img/services/food..png"
                                                alt=""
                                                class="img-fluid"
                                            />--%>
                                           <asp:Image ID="Image3" ImageUrl="assets/img/services/food..png" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-4">
                                    <div class="row">
                                        <div
                                            class="col-lg-8 details order-2 order-lg-1"
                                        >
                                            <h3>
                                                Experienced Tour Guides at your
                                                Service!
                                            </h3>
                                            <p class="fst-italic">
                                                If you do not know the place
                                                that well, or want to experience
                                                the place fully, we have
                                                experienced tour guides
                                                availabile for you to avail.
                                                Having a tour guide greatly adds
                                                to the experience of visiting a
                                                place.
                                            </p>
                                        </div>
                                        <div
                                            class="col-lg-4 text-center order-1 order-lg-2"
                                        >
                                            <%--<img
                                                src="assets/img/services/guide.png"
                                                alt=""
                                                class="img-fluid"
                                            />--%>
                                      <asp:Image ID="Image4" ImageUrl="assets/img/services/guide.png" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-5">
                                    <div class="row">
                                        <div
                                            class="col-lg-8 details order-2 order-lg-1"
                                        >
                                            <h3>Avail our Discounts!</h3>
                                            <p class="fst-italic">
                                                Are you a student and short on
                                                money? We have a discount for
                                                you. On the same lines, we offer
                                                many discounts to our customers
                                                if they qualify.
                                            </p>
                                        </div>
                                        <div
                                            class="col-lg-4 text-center order-1 order-lg-2"
                                        >
                                            <%--<img
                                                src="assets/img/services/discount.png"
                                                alt=""
                                                class="img-fluid"
                                            />--%>
                                      <asp:Image ID="Image5" ImageUrl="assets/img/services/discount.png" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Features Section -->
        </main>
        <!-- End #main -->
</asp:Content>
