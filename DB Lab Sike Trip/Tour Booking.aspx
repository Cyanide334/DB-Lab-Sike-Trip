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
      .testbox .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .testbox .name-item input, .city-item input {
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

    <div class="testbox">
    <form id="TourBookingForm" action="/" runat="server">
      <div class="banner">
        <h1>Tour Booking Form</h1>
      </div>
      <div class="item">
        <p>Passenger contact name</p>
        <div class="name-item">
<%--          <input type="text" name="name" placeholder="First" />
          <input type="text" name="name" placeholder="Last" />--%>
           <asp:TextBox ID="TourBookingFirst" placeholder="First" runat="server"></asp:TextBox>
           <asp:TextBox ID="TourBookingLast" placeholder="Last" runat="server"></asp:TextBox>
        </div>
      </div>
      <div class="item">
        <p>Email</p>
<%--        <input type="email" name="email"/>--%>
         <asp:TextBox ID="TourBookingEmail" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
      </div>
      <div class="item">
        <p>Phone</p>
<%--        <input type="text" name="phone" placeholder="### ### ####"/>--%>
          <asp:TextBox ID="TourBookingPhone" placeholder="### ### ####" runat="server"></asp:TextBox>
      </div>
      <div class="item">
        <p>Address</p>
<%--        <input type="text" name="name" placeholder="Street address" required/>
        <input type="text" name="name" placeholder="Street address line 2" required/>--%>
           <asp:TextBox ID="TourBookingStreet1" placeholder="Street address" runat="server"></asp:TextBox>
           <asp:TextBox ID="TourBookingStreet2" placeholder="Street address line 2" runat="server"></asp:TextBox>
        <div class="city-item">
<%--          <input type="text" name="name" placeholder="City" required/>
          <input type="text" name="name" placeholder="Region" required/>
          <input type="text" name="name" placeholder="Postal / Zip code" required/>--%>
           <asp:TextBox ID="TourBookingCity" placeholder="City" runat="server"></asp:TextBox>
           <asp:TextBox ID="TourBookingRegion" placeholder="Region" runat="server"></asp:TextBox>
            <asp:TextBox ID="TourBookingPostalCode" placeholder="Postal / Zip Code" runat="server"></asp:TextBox>
          <%--<select required>
            <option selected value="" disabled>Country</option>
            <option value="1">Russia</option>
            <option value="2">Germany</option>
            <option value="3">France</option>
            <option value="4">Armenia</option>
            <option value="5">USA</option>
          </select>--%>
         <asp:DropDownList ID="TourBookingCountry" runat="server">
        <asp:ListItem Text="Select" Value="Select Country"></asp:ListItem>
        <asp:ListItem Text="Russia" Value="1"></asp:ListItem>
        <asp:ListItem Text="Germany" Value="2"></asp:ListItem>
        <asp:ListItem Text="France" Value="3"></asp:ListItem>
        <asp:ListItem Text="Armenia" Value="4"></asp:ListItem>
        <asp:ListItem Text="Japan" Value="5"></asp:ListItem>
        </asp:DropDownList>
        </div>
      </div>
      <div class="item">
        <p>Total number of adults</p>
        <%--<input type="text" name="adults"/>--%>
         <asp:TextBox ID="TourBookingAdults1" runat="server"></asp:TextBox>
      </div>
      <div class="item">
        <p>Adults' names</p>
        <textarea rows="3"></textarea>
      </div>
      <div class="item">
        <p>Total number of children</p>
<%--        <input type="text" name="adults"/>--%>
         <asp:TextBox ID="TourBookingChildren" runat="server"></asp:TextBox>
      </div>
      <div class="item">
        <p>Children names and ages</p>
        <textarea rows="3"></textarea>
      </div>
      <div class="item">
        <p>Type of travel</p>
        <%--<select required>
          <option value="">Business</option>
          <option value="1">Adventure</option>
          <option value="2">Cultural</option>
          <option value="3">Cruising</option>
          <option value="4">Active mobility</option>
          <option value="5">Active vacation</option>
          <option value="6">Quiet vacation</option>
          <option value="7">Package tour</option>
          <option value="8">Creative trip</option>
          <option selected value="9">Honeymoon</option>
        </select>--%>
          <asp:DropDownList ID="TourBookingTravelType" runat="server">
        <asp:ListItem Text="Select" Value="Select Type"></asp:ListItem>
        <asp:ListItem Text="Business" Value="1"></asp:ListItem>
        <asp:ListItem Text="Adventure" Value="2"></asp:ListItem>
        <asp:ListItem Text="Cultural" Value="3"></asp:ListItem>
        <asp:ListItem Text="Cruising" Value="4"></asp:ListItem>
        <asp:ListItem Text="Active mobility" Value="5"></asp:ListItem>
        <asp:ListItem Text="Quiet vacation" Value="6"></asp:ListItem>
        <asp:ListItem Text="Package Tour" Value="7"></asp:ListItem>
        <asp:ListItem Text="Creative Trip" Value="8"></asp:ListItem>
        <asp:ListItem Text="Honeymoon" Value="9"></asp:ListItem>
        </asp:DropDownList>
      </div>
      <div class="item">
        <p>Destination</p>
<%--        <input type="text" name="destination"/>--%>
         <asp:TextBox ID="TourBookingDestination" runat="server"></asp:TextBox>
      </div>
      <div class="item">
        <p>Preferred hotel / resort</p>
        <%--<input type="text" name="hotel"/>--%>
        <asp:TextBox ID="TourBookingHotel" runat="server"></asp:TextBox>
      </div>
      <div class="item">
        <p>Number of rooms</p>
<%--        <input type="text" name="number"/>--%>
        <asp:TextBox ID="TourBookingNumber" runat="server"></asp:TextBox>
      </div>
      <div class="item">
        <p>Size of group</p>
<%--        <input type="text" name="size"/>--%>
        <asp:TextBox ID="TourBookingSize" runat="server"></asp:TextBox>
      </div>
      <div class="item">
        <p>King / double / suite / penthouse</p>
<%--        <input type="text" name="room"/>--%>
        <asp:TextBox ID="TourBookingRoom" runat="server"></asp:TextBox>
      </div>
      <div class="question">
        <p>Transportation to and from hotel</p>
        <div class="question-answer">
          <div>
<%--            <input type="radio" value="none" id="radio_1" name="question1"/>--%>
            
            <asp:RadioButton ID="TourBookingRadioY1" GroupName="Question1" runat="server" value="none" ClientIDMode="Static"/>
            <label for="TourBookingRadioY1" class="radio"><span>Yes</span></label>
          </div>
          <div>
<%--            <input type="radio" value="none" id="radio_2" name="question1"/>--%>
            
            <asp:RadioButton ID="TourBookingRadioN1" GroupName="Question1" runat="server" ClientIDMode="Static"/>
              <label for="TourBookingRadioN1" class="radio"><span>No</span></label>
          </div>
        </div>
      </div>
      <div class="item">
        <p>Estimated trip amount</p>
<%--        <input type="number" name="amount" placeholder="USD 0.00"/>--%>
           <asp:TextBox ID="TourBookingAmount" placeholder="USD 0.00" runat="server"></asp:TextBox>
      </div>
      <div class="question">
        <p>Is anyone traveling over the Age of 55?</p>
        <div class="question-answer">
          <div>
<%--            <input type="radio" value="none" id="radio_3" name="question2"/>--%>
           
            <asp:RadioButton ID="TourBookingRadioY2" GroupName="Question2" runat="server" ClientIDMode="Static"/>
               <label for="TourBookingRadioY2" class="radio"><span>Yes</span></label>
          </div>
          <div>
<%--            <input type="radio" value="none" id="radio_4" name="question2"/>--%>
            
            <asp:RadioButton ID="TourBookingRadioN2" GroupName="Question2" runat="server" ClientIDMode="Static"/>
              <label for="TourBookingRadioN2" class="radio"><span>No</span></label>
          </div>
        </div>
        <div class="question">
          <p>Does anyone traveling have a military background?</p>
          <div class="question-answer">
            <div>
<%--              <input type="radio" value="none" id="radio_5" name="question3"/>--%>
             
            <asp:RadioButton ID="TourBookingRadioY3" GroupName="Question3" runat="server" ClientIDMode="Static"/>
                <label for="TourBookingRadioY3" class="radio"><span>Yes</span></label>
            </div>
            <div>
<%--              <input type="radio" value="none" id="radio_6" name="question3"/>--%>
             
            <asp:RadioButton ID="TourBookingRadioN3" GroupName="Question3" runat="server" ClientIDMode="Static"/>
                 <label for="TourBookingRadioN3" class="radio"><span>No</span></label>
            </div>
          </div>
        </div>
        <div class="item">
          <p>Special instructions</p>
          <textarea rows="3"></textarea>
        </div>
        <div class="item">
          <p>Activities: spa, golf, excursion, event ticket, shows, etc.</p>
          <textarea rows="3"></textarea>
        </div>
        <div class="question">
          <p>Include travel insurance</p>
          <div class="question-answer">
            <div>
<%--              <input type="radio" value="none" id="radio_7" name="question4"/>--%>
              
            <asp:RadioButton ID="TourBookingRadioY4" GroupName="Question4" runat="server" ClientIDMode="Static"/>
                <label for="TourBookingRadioY4" class="radio"><span>Yes</span></label>
            </div>
            <div>
<%--              <input type="radio" value="none" id="radio_8" name="question4"/>--%>
              
            <asp:RadioButton ID="TourBookingRadioN4" GroupName="Question4" runat="server" ClientIDMode="Static"/>
                <label for="TourBookingRadioN4" class="radio"><span>No</span></label>
            </div>
          </div>
        </div>
        <div class="btn-block">
<%--          <button type="submit">Book</button>--%>
            <asp:Button ID="TourBookingSubmitButton" Text="Book" runat="server" CssClass="aspButton"></asp:Button>
        </div>
    </form>
    </div>
  </section>
</asp:Content>
