<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Create Tour Service.aspx.cs" Inherits="DB_Lab_Sike_Trip.Create_Tour_Service" %>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script src="createtourservicescript.js"></script>
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
                        <h2>Create Tour Service</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Create Tour Service</li>
                        </ol>
                    </div>
                </div>
      </section>

    <section class="editProfile">
    
    <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        
            <form id ="editTourForm" runat ="server">
            <div class="p-3 py-5">
                <header style ="color:Red" id="CreateTourError" runat="server"></header>
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Create Tour Service</h4>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Departure</label><asp:TextBox ID="Departure" runat="server" placeholder="departure" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Destination</label><asp:TextBox ID="Destination" runat="server" placeholder="destination" CssClass="form-control"></asp:TextBox></div>
                </div>
                 <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Departure Date</label><asp:TextBox ID="Ddate" runat="server" placeholder="dd/mm/yyyy" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Departure Time</label><asp:TextBox ID="Dtime" runat="server" placeholder="hh:mm" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Arrival Date</label><asp:TextBox ID="Adate" runat="server" placeholder="dd/mm/yyyy" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Arrival Time</label><asp:TextBox ID="Atime" runat="server" placeholder="hh:mm" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Return Date</label><asp:TextBox ID="Rdate" runat="server" placeholder="dd/mm/yyyy" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Return Time</label><asp:TextBox ID="Rtime" runat="server" placeholder="hh:mm" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Number of Days</label><asp:TextBox ID="numDays" runat="server" placeholder="Number of Days" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Total Seats</label><asp:TextBox ID="TotalSeats" runat="server" placeholder="Total Seats Available" CssClass="form-control"></asp:TextBox></div>     
                    <div class="col-md-6"><label class="labels">Price Per Seat</label><asp:TextBox ID="PPS" runat="server" placeholder="Price of Tour" CssClass="form-control"></asp:TextBox></div>

                </div>     
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Tour Guide </label><asp:TextBox ID="TourGuide" runat="server" placeholder="Tour Guide Name,empty if none" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Bus Number</label><asp:TextBox ID="BusNum" runat="server" placeholder="Tour Bus Number: ABC 1234" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Reference Image Path</label><asp:TextBox ID="ReferenceImage" runat="server" placeholder="Relative Path of Image" CssClass="form-control"></asp:TextBox></div>
                </div>
                <div class="form-group text-center" id="HomeContent_CreateTourServiceError" style="color:red"></div>
                <div class="mt-5 text-center"><asp:Button ID="createTourSaveButton" Text="Create Tour" runat="server"  CssClass="btn btn-primary profile-button" Width="130px" Height="40px" OnClick=" createTourSaveButton_Click" OnClientClick="return validate()"/></div>
            </div>
            </form>
        </div>
        
</div>

</section>
</asp:Content>
