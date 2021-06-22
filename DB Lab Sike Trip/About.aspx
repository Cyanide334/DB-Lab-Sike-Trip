<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DB_Lab_Sike_Trip.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <main id="main">
            <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>About</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>About</li>
                        </ol>
                    </div>
                </div>
            </section>
            <!-- End Breadcrumbs -->

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">
                    <div class="row content">
                        <div class="col-lg-6">
                            <h2>Planning Your Trips for you!</h2>
                            <h3>
                                Are you afraid of travelling to a new place? Is
                                planning your trip becoming a hassle? We are
                                here to help you out.
                            </h3>
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0">
                            <p>
                                Here at SIKE! Trips, we understand the
                                importance of holdiays and we firmly believe in
                                providing people the comfort of not caring about
                                the hassles of arranging things for their tours.
                                We want our customers to be relieved from the
                                fatigue and stress of carefully planning the
                                tours. You will get a package of:
                            </p>
                            <ul>
                                <li>
                                    <i class="ri-check-double-line"></i> Trips
                                </li>
                                <li>
                                    <i class="ri-check-double-line"></i> Buses
                                </li>
                                <li>
                                    <i class="ri-check-double-line"></i> Tour Guides & Drivers
                                </li>
                            </ul>
                            <p class="fst-italic">
                                SIKE! taking care of your trips.
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End About Section -->

            <!-- ======= Team Section ======= -->
            <section id="team" class="team section-bg">
                <div class="container">
                    <div class="section-title">
                        <h2>Team</h2>
                        <p>Our Founders</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="member d-flex align-items-start">
                                <div class="pic">
                                    <%--<img
                                        src="assets/img/team/team-1.jpg"
                                        class="img-fluid"
                                        alt=""
                                    />--%>
                     <asp:Image ID="Image1" ImageUrl="assets/img/team/team-1.jpg" class="rounded-circle" width="150" runat="server" />
                                </div>
                                <div class="member-info">
                                    <h4>Shenk Chan</h4>
                                    <span>Chief Executive Officer</span>
                                    <p>
                                        He ran a multimillion company at the age
                                        of 9. Tutored the great Azad Chaiwala at age 10.
                                    </p>
                                    <div class="social">
                                        <a href=""
                                            ><i class="ri-twitter-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-facebook-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-instagram-fill"></i
                                        ></a>
                                        <a href="">
                                            <i class="ri-linkedin-box-fill"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-4 mt-lg-0">
                            <div class="member d-flex align-items-start">
                                <div class="pic">
                                    <%--<img
                                        src="assets/img/team/team-2.jpg"
                                        class="img-fluid"
                                        alt=""
                                    />--%>
                     <asp:Image ID="Image2" ImageUrl="assets/img/team/team-2.jpg" class="rounded-circle" width="150" runat="server" />
                                </div>
                                <div class="member-info">
                                    <h4>Muhammad Hasaan</h4>
                                    <span>CC</span>
                                    <p>A silent hardworker. Will make you laugh with his clowning</p>
                                    <div class="social">
                                        <a href=""
                                            ><i class="ri-twitter-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-facebook-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-instagram-fill"></i
                                        ></a>
                                        <a href="">
                                            <i class="ri-linkedin-box-fill"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-4">
                            <div class="member d-flex align-items-start">
                                <div class="pic">
                                    <%--<img
                                        src="assets/img/team/team-3.jpg"
                                        class="img-fluid"
                                        alt=""
                                    />--%>
                     <asp:Image ID="Image3" ImageUrl="assets/img/team/team-3.jpg" class="rounded-circle" width="150" runat="server" />
                                </div>
                                <div class="member-info">
                                    <h4>Ayesha Kanwal</h4>
                                    <span>Captain Anxiety</span>
                                    <p>
                                       ADHD++
                                    </p>
                                    <div class="social">
                                        <a href=""
                                            ><i class="ri-twitter-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-facebook-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-instagram-fill"></i
                                        ></a>
                                        <a href="">
                                            <i class="ri-linkedin-box-fill"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-4">
                            <div class="member d-flex align-items-start">
                                <div class="pic">
                                    <%--<img
                                        src="assets/img/team/team-4.jpg"
                                        class="img-fluid"
                                        alt=""
                                    />--%>
                     <asp:Image ID="Image4" ImageUrl="assets/img/team/team-4.jpg" class="rounded-circle" width="150" runat="server" />
                                </div>
                                <div class="member-info">
                                    <h4>Hamas</h4>
                                    <span>Chad</span>
                                    <p>
                                      yeet
                                    </p>
                                    <div class="social">
                                        <a href=""
                                            ><i class="ri-twitter-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-facebook-fill"></i
                                        ></a>
                                        <a href=""
                                            ><i class="ri-instagram-fill"></i
                                        ></a>
                                        <a href="">
                                            <i class="ri-linkedin-box-fill"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Team Section -->

          
        </main>
        <!-- End #main -->

</asp:Content>
