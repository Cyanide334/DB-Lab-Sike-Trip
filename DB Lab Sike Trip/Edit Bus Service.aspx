<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit Bus Service.aspx.cs" Inherits="DB_Lab_Sike_Trip.Edit_Bus_Service" %>

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
                        <h2>Edit Bus Service</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Edit Tour Service</li>
                        </ol>
                    </div>
                </div>
      </section>

    <section class="editProfile">
        <form id="EBsForm" runat="server">
            <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
<%--                        <img class="rounded-circle mt-5" src="assets\img\testimonials\testimonials-3.jpg">--%>
                     <asp:Image ID="Image2" ImageUrl="assets\img\testimonials\testimonials-3.jpg" class="rounded-circle" width="150" runat="server" />
                        <span class="font-weight-bold">Sike! Tour</span><span class="text-black-50">serviceProvider@bbb.com</span><span> </span></div>
                </div>
                <div class="col-md-5 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Edit Bus Service</h4>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6"><label class="labels">Bus Make</label><asp:TextBox ID="EBSBusMake" runat="server" class="form-control" placeholder="Bus Make" value=""></asp:TextBox></div>
                            <div class="col-md-6"><label class="labels">License Number</label><asp:TextBox ID="EBSLicenseNumber" runat="server" class="form-control" value="" placeholder="License Number"></asp:TextBox></div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12"><label class="labels">Registration Number</label><asp:TextBox ID="EBSRegistrationNumber" runat="server" class="form-control" placeholder="enter new Registration Number" value=""></asp:TextBox></div>
                            <div class="col-md-12"><label class="labels">Capacity</label><asp:TextBox ID="EBSCapacity" runat="server" class="form-control" placeholder="enter new Capacity" value=""></asp:TextBox></div>
                            <div class="col-md-12"><label class="labels">Price</label><asp:TextBox ID="EBSPrice" runat="server" class="form-control" placeholder="enter new Price" value=""></asp:TextBox></div>
                        </div>
                        <div class="mt-5 text-center"><asp:Button ID="EBSSaveProfile" runat="server" class="btn btn-primary profile-button" Text="Save Profile" /></div>
                    </div>
                </div>
        
    </div>
             </div>
         </form>
</section>
</asp:Content>