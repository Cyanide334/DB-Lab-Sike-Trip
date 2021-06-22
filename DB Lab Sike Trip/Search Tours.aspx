<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Search Tours.aspx.cs" Inherits="DB_Lab_Sike_Trip.Search_Tours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="scripts" runat="server">
        <script src="searchtourscript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" runat="server">
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">
            <div
                class="d-flex justify-content-between align-items-center">
                <h2>Search Tours</h2>
                <ol>
                    <li><a href="Home.aspx">Home</a></li>
                    <li>Search Tours</li>
                </ol>
            </div>
        </div>
    </section>
    <!-- End Breadcrumbs -->
    <form id="logInForm" class="php-email-form_1" runat="server">
        <section id="contact" class="contact">
            <div class="container">
                <div class="row ms-5 justify-content-center">

                    <div class="col-lg-8 mt-lg-0">
                        <div class="row mt-3">
                            <div class="col-md-6 text-center">
                                <h4>Enter Departure or Destination below</h4>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-6 form-group">
                                <asp:Label ID="sbterror" ForeColor="Red" runat="server"></asp:Label>
                                <asp:TextBox runat="server" class="form-control" ID="inputDeparture" placeholder="Enter Departure"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6 form-group">
                                <asp:Label ID="Label1" ForeColor="Red" runat="server"></asp:Label>
                                <asp:TextBox runat="server" class="form-control" ID="inputDestination" placeholder="Enter Destination"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6 text-center">
                                 <div class="form-group mt-3 mt-md-0 text-center" id="SearchTourError" style="color: red"></div>
                                <br>
                                <asp:Button ID="searchToursBtn" Text="Search" runat="server" CssClass="btn btn-danger" Width="100px" OnClick="search_tours" OnClientClick="return validate()" />
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </section>
        <!-- End Contact Section -->

        <section id="portfolio" class="portfolio" runat="server">
            <div class="container">
                <div class="row portfolio-container" runat="server" id="trips">
                </div>

            </div>
        </section>

    </form>
    <!-- End Portfolio Section -->
</asp:Content>

