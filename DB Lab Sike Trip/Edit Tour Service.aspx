﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit Tour Service.aspx.cs" Inherits="DB_Lab_Sike_Trip.Edit_Tour_Service" %>
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
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="assets\img\testimonials\testimonials-1.jpg"><span class="font-weight-bold">Sike! Tour</span><span class="text-black-50">serviceProvider@bbb.com</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Edit Tour Service</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Tour Name</label><input type="text" class="form-control" placeholder="Tour name" value=""></div>
                    <div class="col-md-6"><label class="labels">Service Provider</label><input type="text" class="form-control" value="" placeholder="Service Provider"></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Departure</label><input type="text" class="form-control" placeholder="enter new Departure Location" value=""></div>
                    <div class="col-md-12"><label class="labels">Destination</label><input type="text" class="form-control" placeholder="enter new Destination" value=""></div>
                    <div class="col-md-12"><label class="labels">Price</label><input type="number" class="form-control" placeholder="enter Price" value=""></div>
                    <div class="col-md-12"><label class="labels">Number of Days</label><input type="text" class="form-control" placeholder="Number of Days"value=""></div>
                </div>

                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Departure Date</label><input type="date" class="form-control" value=""></div>
                    <div class="col-md-6"><label class="labels">Arrival Date</label><input type="date" class="form-control" value=""></div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Tour Guide Name</label><input type="text" class="form-control" placeholder="Tour Guide" value=""></div>
                    <div class="col-md-6"><label class="labels">Bus License Number</label><input type="text" class="form-control" value="" placeholder="Bus Number"></div>
                </div>
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Save Profile</button></div>
            </div>
        </div>
        
    </div>
</div>
</section>
</asp:Content>
