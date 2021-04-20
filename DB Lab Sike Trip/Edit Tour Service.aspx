<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit Tour Service.aspx.cs" Inherits="DB_Lab_Sike_Trip.Edit_Tour_Service" %>
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
<%--                <img class="rounded-circle mt-5" src="assets\img\testimonials\testimonials-1.jpg">--%>
                    <asp:Image ID="Image1" ImageUrl="assets\img\testimonials\testimonials-1.jpg" class="rounded-circle" runat="server" />
                <span class="font-weight-bold">Sike! Tour</span><span class="text-black-50">serviceProvider@bbb.com</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <form id ="editTourForm" runat ="server">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Edit Tour Service</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Tour Name</label><asp:TextBox ID="editTourServiceName" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Service Provider</label><asp:TextBox ID="txtName" runat="server" placeholder="Service Provider" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Departure</label><asp:TextBox ID="editTourServiceDeparture" runat="server" placeholder="departure" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Destination</label><asp:TextBox ID="editTourServiceDestination" runat="server" placeholder="destination" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    
                    <div class="col-md-6"><label class="labels">Number of Days</label><asp:TextBox ID="editTourServiceNumberOfDays" runat="server" placeholder="Number of Days" CssClass="form-control"></asp:TextBox></div>
                    
                </div>

                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Departure Date</label><asp:TextBox ID="TextBox1" runat="server" placeholder="Departure Date" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Arrival Date</label><asp:TextBox ID="TextBox2" runat="server" placeholder="Arrival Date" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Tour Guide Name</label><asp:TextBox ID="editTourServiceGuide" runat="server" placeholder="Tour Guide Name" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Bus License Number</label><asp:TextBox ID="editTourServiceBusLicense" runat="server" placeholder="Bus License Number" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="mt-5 text-center"><asp:Button ID="editTourServiceSave" Text="Save Tour" runat="server"  CssClass="btn btn-primary profile-button" Width="130px" Height="40px"/></div>
            </div>
                </form>
        </div>
        
    </div>
</div>

</section>
</asp:Content>

