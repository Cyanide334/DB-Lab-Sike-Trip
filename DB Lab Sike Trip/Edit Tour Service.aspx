﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit Tour Service.aspx.cs" Inherits="DB_Lab_Sike_Trip.Edit_Tour_Service" %>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script src="edittourservicescript.js"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.editProfile {
     background-image: url("assets/img/home1.jpg");  
     background-size: cover;
}
.editProfile .form-control:focus {
    box-shadow: none;
    border-color: #d9232d
}

.editProfile .profile-button {
    background: #d9232d;
    box-shadow: none;
    border: none
}

.editProfile .profile-button:hover {
    background: #d9232d
}

.editProfile .profile-button:focus {
    background: #d9232d;
    box-shadow: none
}

.editProfile .profile-button:active {
    background: #d9232d;
    box-shadow: none
}

.editProfile .back:hover {
    color: #d9232d;
    cursor: pointer
}

.editProfile .labels {
    font-size: 11px
}
.editProfile img {
    max-width:150px;
    max-height:150px;
}

.editProfile .add-experience:hover {
    background: #d9232d;
    color: #fff;
    cursor: pointer;
    border: solid 1px #d9232d
}



    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" runat="server">

    <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>Edit Tour Service</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Edit Tour Service</li>
                        </ol>
                    </div>
                </div>
      </section>

    <section class="editProfile">
    <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <asp:Image ID="Image1" ImageUrl="assets\img\testimonials\testimonials-1.jpg" class="rounded-circle" runat="server" />
                <span class="font-weight-bold">Sike! Tour</span><span class="text-black-50">serviceProvider@bbb.com</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <form id ="editTourForm" runat ="server">
            <div class="p-3 py-5">
                <header style ="color:Red" id="EditTourError" runat="server"></header>
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Edit Tour Service</h4>
                </div>

                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Departure</label><asp:TextBox ID="Departure" runat="server" placeholder="departure" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Destination</label><asp:TextBox ID="Destination" runat="server" placeholder="destination" CssClass="form-control"></asp:TextBox></div>
                </div>
                 <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Departure Date</label><asp:TextBox ID="Ddate" runat="server" placeholder="departure" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Departure Time</label><asp:TextBox ID="Dtime" runat="server" placeholder="destination" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Arrival Date</label><asp:TextBox ID="Adate" runat="server" placeholder="departure" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Arrival Time</label><asp:TextBox ID="Atime" runat="server" placeholder="destination" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Return Date</label><asp:TextBox ID="Rdate" runat="server" placeholder="departure" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Return Time</label><asp:TextBox ID="Rtime" runat="server" placeholder="destination" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Number of Days</label><asp:TextBox ID="numDays" runat="server" placeholder="Number of Days" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Available Seats</label><asp:TextBox ID="TotalSeats" runat="server" placeholder="Number of Days" CssClass="form-control"></asp:TextBox></div>     
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Price Per Seat</label><asp:TextBox ID="PPS" runat="server" placeholder="Number of Days" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Reservation Count</label><asp:TextBox ID="ReservationCount" runat="server" placeholder="Number of Days" CssClass="form-control"></asp:TextBox></div>
                </div>

          
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Tour Guide </label><asp:TextBox ID="TourGuide" runat="server" placeholder="Tour Guide Name" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Bus License Number</label><asp:TextBox ID="BusNum" runat="server" placeholder="Bus License Number" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Reference Image Path</label><asp:TextBox ID="ReferenceImage" runat="server" placeholder="Number of Days" CssClass="form-control"></asp:TextBox></div>
                </div>

                <div class="form-group text-center" id="HomeContent_EditTourServiceError" style="color:red"></div>
                <div class="mt-5 text-center"><asp:Button ID="editTourServiceSave" Text="Save Tour" runat="server"  CssClass="btn btn-primary profile-button" Width="130px" Height="40px" OnClientClick="return validate()"/></div><%--OnClick="editTourSaveButton_Click"--%>
            </div>
                </form>
        </div>
        
    </div>
</div>

</section>
</asp:Content>

