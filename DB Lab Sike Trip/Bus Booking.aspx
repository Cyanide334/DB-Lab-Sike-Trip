<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Bus Booking.aspx.cs" Inherits="DB_Lab_Sike_Trip.BusBooking" %>
 <asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script src="busbookingscript.js"></script>
      </asp:Content>
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
      font-size: 36px;
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
      box-shadow: 0 0 20px 0 #d9232d; 
      }
      .testbox .banner {
      position: relative;
      height: 210px;
      background-image: url("assets/img/home1.jpg");      
      background-size: cover;
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
      .testbox input, textarea, select {
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
      .testbox textarea {
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
      .testbox input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .testbox .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #a9a9a9;
      }
      .testbox .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      .testbox [type="date"]::-webkit-calendar-picker-indicator {
      right: 0;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      .testbox input[type="time"]::-webkit-inner-spin-button {
      margin: 2px 22px 0 0;
      }
      .testbox input[type=radio], input.other {
      display: none;
      }
     .testbox  label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 10px 0;
      cursor: pointer;
      }
      .testbox .question span {
      margin-left: 30px;
      }
      .testbox label.radio:before {
      content: "";
      position: absolute;
      top: 2px;
      left: 0;
      width: 15px;
      height: 15px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      .testbox #radio_5:checked ~ input.other {
      display: block;
      }
      .testbox input[type=radio]:checked + label.radio:before {
      border: 2px solid #d9232d;
      background: #d9232d;
      }
      .testbox label.radio:after {
      content: "";
      position: absolute;
      top: 7px;
      left: 5px;
      width: 7px;
      height: 4px;
      border: 3px solid #fff;
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
      .testbox .aspButton:hover {
      box-shadow: 0 0 18px 0 #d9232d;
      }
      @media (max-width: 700px)
      {
      .testbox .name-item, .city-item 
      {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .testbox .name-item input, .city-item input
      {
      width: calc(50% - 20px);
      }
      .testbox .city-item select
      {
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
                        <h2>Bus Booking</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Services</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->
    <section>
     <div class="testbox">
      <form ID ="BusBooking" runat="server">
     <section id ="DisplayBusBooking" class="viewProfile" visible = "true" runat ="server"> <%--it disappers bcz of this--%>
        <div class="banner">
          <h1>Bus Booking Form</h1>
        </div>
          <div class="item">
          <p>Number of days you need the bus booked for </p>
        <asp:textBox runat="server" id="bus_booking_days" style="border: none"  ReadOnly="False"></asp:textBox> 
        </div>
           <hr>
         <div class="item">
          <p> Please Enter the date of booking in dd/mm/yyyy format</p>
        <asp:textBox runat="server" id="bus_booking_date" style="border: none"  ReadOnly="False"></asp:textBox> 
        </div>
           <hr>
        <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Bus Make</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
              <asp:textBox runat="server" id="display_manufacturer" style="border: none"  ReadOnly="True"></asp:textBox> 
        </div>
            </div>
           <hr>
        <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">License Number</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" >
          <asp:textBox runat="server" id="display_model" style="border: none"  ReadOnly="True"></asp:textBox> 
        </div>
            </div>
           <hr>
        <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Registration Number</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
         <asp:textBox runat="server" id="display_booking_registrationnumber" style="border: none"  ReadOnly="True"></asp:textBox> 
        </div>
            </div>
           <hr>
        <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Capacity</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
          <asp:textBox runat="server" id="display_booking_capacity" style="border: none"  ReadOnly="True"></asp:textBox> 
        </div>
            </div>
           <hr>
        <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Price per day</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" >
          <asp:textBox runat="server" id="display_booking_priceperkm" style="border: none"  ReadOnly="True"></asp:textBox> 
        </div>
            </div>
           <hr>
        <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Credit Card</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" >
          <asp:textBox runat="server" id="creditcard" style="border: none"  ReadOnly="True"></asp:textBox> 
        </div>
            </div>
       

          <%--<div class="btn-block" id="busbookingbutton">
          <asp:Button ID="btnSave" Text="Send" runat="server" CssClass="aspButton" />
        </div>--%>

           <%--have to get it to its position and do smthn about not showing the buses if none is chosen--%>
                <section id="bbb" class="btn-block">      
                  <div class="form-group mt-3 mt-md-0 text-center" id="BookBusError" style="color: red"></div>     
                    <br>
                      <asp:Button ID="ViewBusBookingButton" Text="Confirm Bus Booking" runat="server" class="btn btn-danger" CssClass="btn btn-danger" OnClick="BookButton_Click" onClientClick="return validate()"></asp:Button>
                              
            </section>
         </section>
      </form>
    </div>
 
  </section>
</asp:Content>
 
