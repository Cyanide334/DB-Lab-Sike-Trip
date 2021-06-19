<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Tour Booking.aspx.cs" Inherits="DB_Lab_Sike_Trip.Tour_Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      .testbox body, div, form, input, select, textarea, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      .testbox h1 {
      position: absolute;
      margin: 0;
      line-height: 55px;
      font-size: 55px;
      color: #fff;
      z-index: 2;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      max-width:700px;
      margin-left:auto;
      margin-right:auto;
      }
      .testbox form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 30px 0 #d9232d; 
      }
      .testbox .banner {
      position: relative;
      height: 230px;
      background-image: url("assets/img/home3.jpg");  
      background-size: cover;
      background-repeat: no-repeat; 
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .testbox .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      .testbox input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      .testbox input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      .testbox select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
     .testbox  textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #d9232d;
      }
      .testbox .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #d9232d;
      color: #d9232d;
      }
      .testbox .item {
      position: relative;
      margin: 10px 0;
      }
      .testbox input[type=radio], input[type=checkbox]  {
      display: none;
      }
      .testbox label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .testbox .question span {
      margin-left: 30px;
      }
      .testbox label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      .testbox input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid #d9232d;
      }
      .testbox label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid #d9232d;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      .testbox input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .testbox .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      .testbox .aspButton {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #d9232d;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
     .testbox  .aspButton:hover {
      box-shadow: 0 0 18px 0 #d9232d;
      }
      @media (max-width: 700px) {
      .testbox .tour-id, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .testbox .tour-id input, .city-item input {
      width: calc(50% - 20px);
      }
     .testbox  .city-item select {
      width: calc(50% - 8px);
      }

      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" runat="server">

    <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>Tour Booking</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Services</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->

   <section class="tourbooking">
<div>
    <div class="testbox">
    <form id="Form1" action="/" runat="server">
            <section id ="DisplayViewTour" class="viewProfile" visible = "true" runat ="server"> <%--it disappers bcz of this--%>
         <header style ="color:Red" id="tourbookingerror" runat="server"></header>
      <div class="banner">
        <h1>Tour Booking Form</h1>
      </div>
        <div class="item">
        <p>Number of Travellers</p>
           <asp:TextBox ID="TourBookingTravellers" placeholder="Enter Number of Travellers" runat="server"></asp:TextBox>
      </div>
        <div class="item">
        <p>Credit Card Information</p>
           <asp:TextBox ID="TourBookingCCnumber" placeholder="Enter Credit Card Number" runat="server"></asp:TextBox>
      </div>
        <hr>
              <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Tour ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourId">
                <asp:textBox runat="server" id="display_tourid" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
             <hr>
              <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Price</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourPrice">
                <asp:textBox runat="server" id="display_calculated_price" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
            <hr>
              <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Departure</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourDeparture">
                <asp:textBox runat="server" id="display_departure" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Destination</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourDestination">
                <asp:textBox runat="server" id="display_destination" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Departure Date</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourDepartureDate">
                      <asp:textBox runat="server" id="display_departure_date" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                     <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Departure Time</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourDepartureTime">
                      <asp:textBox runat="server" id="display_departure_time" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Arrival Time</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourArrivalTime">
                      <asp:textBox runat="server" id="display_arrival_time" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                      <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Return Date</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourReturnDate">
                      <asp:textBox runat="server" id="display_return_date" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                    <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Price per Person</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourPricePerPerson">
                      <asp:textBox runat="server" id="display_price_of_tour" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                    <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Number of Days</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourNumberOfDays">
                      <asp:textBox runat="server" id="dsiplay_number_of_days" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                    <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Bus Number</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourBusNumber">
                      <asp:textBox runat="server" id="display_bus_number" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                    <hr>
                   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Tour Guide Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" id="TourGuideName">
                      <asp:textBox runat="server" id="display_tour_guide" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>  
                 </section> 

                <section id="btn" class="testbox">  
                       <div id ="showBookTourButton" runat="server" visible ="true">
                           <p class="text-secondary mb-1"> You have not booked any tours</p>
                    <asp:Button ID="TourBookingButton" Text="Book" runat="server" CssClass="btn btn-danger" OnClick="TourBookingButton_Click" PostBackUrl="Home.aspx"/></asp:Button>
                </div>
                </section>
    </form>
    </div>
    </div>
  </section>
</asp:Content>
