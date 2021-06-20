<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Create Bus Service.aspx.cs" Inherits="DB_Lab_Sike_Trip.Create_Bus_Service" %>
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
                        <h2>Create Bus Service</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Create Bus Service</li>
                        </ol>
                    </div>
                </div>
      </section>

    <section class="editProfile">
        <form id="EBSForm" runat="server">
            <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                
                    <div class="p-3 py-5">
                        <header style ="color:Red" id="CreateBusError" runat="server"></header>
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Create Bus Service</h4>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6"><label class="labels">Manufacturer</label><asp:TextBox ID="BusManufacturer" runat="server" class="form-control" placeholder="Bus Manufacturer" value=""></asp:TextBox></div>
                            <div class="col-md-6"><label class="labels">Model</label><asp:TextBox ID="BusModel" runat="server" class="form-control" value="" placeholder="Bus Model"></asp:TextBox></div>
                        </div>
                         <div class="row mt-2">
                            <div class="col-md-6"><label class="labels">Registration Number</label><asp:TextBox ID="Rnum" runat="server" class="form-control" placeholder="Registration Number" value=""></asp:TextBox></div>
                            <div class="col-md-6"><label class="labels">License Number</label><asp:TextBox ID="Lnum" runat="server" class="form-control" value="" placeholder="License Number"></asp:TextBox></div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12"><label class="labels">Capacity</label><asp:TextBox ID="Capacity" runat="server" class="form-control" placeholder="Capacity" value=""></asp:TextBox></div>
                            <div class="col-md-12"><label class="labels">Price Per Day</label><asp:TextBox ID="PPD" runat="server" class="form-control" placeholder="Price Per Day" value=""></asp:TextBox></div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-6"><label class="labels">Reference Image</label><asp:TextBox ID="ReferenceImage" runat="server" class="form-control" placeholder="Relative path of Image" value=""></asp:TextBox></div>
                        </div>
                        <div class="mt-5 text-center"><asp:Button ID="createBusSaveButton" runat="server" class="btn btn-primary profile-button" Text="Save Bus" Width="130px" Height="40px" OnClick="createBusSaveButton_Click" /></div>
                    </div>
                </div>
        
             </div>
         </form>
</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
