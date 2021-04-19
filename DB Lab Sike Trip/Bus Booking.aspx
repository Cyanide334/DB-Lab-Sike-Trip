<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Bus Booking.aspx.cs" Inherits="DB_Lab_Sike_Trip.BusBooking" %>
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
      .testbox button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #d9232d;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      .testbox button:hover {
      box-shadow: 0 0 18px 0 #d9232d;
      }
      @media (max-width: 700px) {
      .testbox .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .testbox .name-item input, .city-item input {
      width: calc(50% - 20px);
      }
      .testbox .city-item select {
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
      <form action="/">
        <div class="banner">
          <h1>Bus Booking Form</h1>
        </div>
        <div class="item">
          <p>Name</p>
          <div class="name-item">
            <input type="text" name="name" placeholder="First" />
            <input type="text" name="name" placeholder="Last" />
          </div>
        </div>
        <div class="item">
          <p>Email</p>
          <input type="text" name="name"/>
        </div>
        <div class="item">
          <p>Phone</p>
          <input type="text" name="name"/>
        </div>
        <div class="item">
          <p>Number of Passengers</p>
          <input type="text" name="name"/>
        </div>
        <div class="item">
          <p>Contact Address</p>
          <input type="text" name="name" placeholder="Street address" />
          <input type="text" name="name" placeholder="Street address line 2" />
          <div class="city-item">
            <input type="text" name="name" placeholder="City" />
            <input type="text" name="name" placeholder="Region" />
            <input type="text" name="name" placeholder="Postal / Zip code" />
            <select>
              <option value="">Country</option>
              <option value="1">Russia</option>
              <option value="2">Germany</option>
              <option value="3">France</option>
              <option value="4">Armenia</option>
              <option value="5">USA</option>
            </select>
          </div>
        </div>
        <div class="question">
          <p>Vehicle</p>
          <div class="question-answer">
            <div>
              <input type="radio" value="none" id="radio_1" name="vehicle" />
              <label for="radio_1" class="radio"><span>Limousine (8-12 person)</span></label>
            </div>
            <div>
              <input type="radio" value="none" id="radio_2" name="vehicle" />
              <label for="radio_2" class="radio"><span>SUV (6-7 person)</span></label>
            </div>
            <div>
              <input type="radio" value="none" id="radio_3" name="vehicle" />
              <label for="radio_3" class="radio"><span>Van (12-15 person)</span></label>
            </div>
            <div>
              <input type="radio" value="none" id="radio_4" name="vehicle" />
              <label for="radio_4" class="radio"><span>Bus (50+ person)</span></label>
            </div>
            <div>
              <input type="radio" value="none" id="radio_5" name="vehicle" />
              <label for="radio_5" class="radio other"><span>other:</span></label>
              <input class="other" type="text" name="name" />
            </div>
          </div>
        </div>
        <div class="item">
          <p>Pick Up Date</p>
          <input type="date" name="bdate" />
          <i class="fas fa-calendar-alt"></i>
        </div>
        <div class="item">
          <p>Pick Up Time</p>
          <input type="time" name="name" />
          <i class="fas fa-clock"></i>
        </div>
        <div class="item">
          <p>If pick up from the airport, please enter airport name</p>
          <input type="text" name="name"/>
        </div>
        <div class="item">
          <p>Flight Number</p>
          <input type="text" name="name"/>
        </div>
        <div class="item">
          <p>Pick Up Point</p>
          <input type="text" name="name" placeholder="Street address" />
          <input type="text" name="name" placeholder="Street address line 2" />
          <div class="city-item">
            <input type="text" name="name" placeholder="City" />
            <input type="text" name="name" placeholder="Region" />
            <input type="text" name="name" placeholder="Postal / Zip code" />
            <select>
              <option value="">Country</option>
              <option value="1">Russia</option>
              <option value="2">Germany</option>
           <option value="3">France</option>
              <option value="4">Armenia</option>
              <option value="5">USA</option>
            </select>
          </div>
        </div>
        <div class="item">
          <p>Destination</p>
          <input type="text" name="name" placeholder="Street address" />
          <input type="text" name="name" placeholder="Street address line 2" />
          <div class="city-item">
            <input type="text" name="name" placeholder="City" />
            <input type="text" name="name" placeholder="Region" />
            <input type="text" name="name" placeholder="Postal / Zip code" />
            <select>
              <option value="">Country</option>
              <option value="1">Russia</option>
              <option value="2">Germany</option>
              <option value="3">France</option>
              <option value="4">Armenia</option>
              <option value="5">USA</option>
            </select>
          </div>
        </div>
        <div class="item">
          <p>Notes</p>
          <textarea rows="3"></textarea>
        </div>
        <div class="btn-block">
          <button type="submit" href="/">SEND</button>
        </div>
      </form>
    </div>
  </body>
  </section>
</asp:Content>
