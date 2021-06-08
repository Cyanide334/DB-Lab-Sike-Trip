<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit Profile.aspx.cs" Inherits="DB_Lab_Sike_Trip.Edit_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.editProfile {
     background-image: url("assets/img/home3.jpg");  
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

.yeet{
    padding: 20px
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" runat="server">

    <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>About</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>About</li>
                        </ol>
                    </div>
                </div>
      </section>

    <section class="editProfile">
        
    <div class="container rounded bg-white mt-5 mb-5">
     <div class ="testbox">   
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
<%--                <img class="rounded-circle mt-5" src="https://i1.sndcdn.com/avatars-sd3AZunCX4tETjpu-5hWeSA-t500x500.jpg">--%>
                        <asp:Image ID="Image1" ImageUrl="https://i1.sndcdn.com/avatars-sd3AZunCX4tETjpu-5hWeSA-t500x500.jpg" class="rounded-circle" runat="server" />
                <span class="font-weight-bold" runat="server" id="editProfileUsername"></span><span class="text-black-50" runat="server" id="editProfileEmail"></span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <form runat="server">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
            
                    <h4 class="text-right">Edit Profile</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-12"><label class="labels"><h6>Name</h6></label><asp:TextBox ID="editProfileName" runat="server"  class="form-control"></asp:TextBox></div>
                    
                     
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels"><h6>Password</h6></label><asp:TextBox ID="editProfilePassword" runat="server"  class="form-control" TextMode="password" placeholder="Enter Password"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels"><h6>Confirm Password</h6></label><asp:TextBox ID="editProfileConfirmPassword" runat="server"  class="form-control" TextMode="password" placeholder="Confirm Password"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels"><h6>Phone Number</h6></label><asp:TextBox ID="editProfilePhone" runat="server"  class="form-control"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels"><h6>Credit Card </h6></label><asp:TextBox ID="editProfileCredit" runat="server"  class="form-control"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                     <div class="row mt-2">
                    <div class="col-md-6"><label class="labels"><h6>City</h6></label><asp:TextBox ID="editProfileCity" runat="server"  class="form-control"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels"><h6>Country</h6></label><asp:TextBox ID="editProfileCountry" runat="server"  class="form-control"></asp:TextBox></div>
                </div>
                <div class="mt-5 text-center"><asp:Button ID="editProfileSaveButton"  runat="server" Text="Save Profile" class="btn btn-primary profile-button" Width="130px" Height="40px"
                   OnClick="editProfileSaveButton_Click" /></div>
            </div>
            </form>
        </div>
        
    </div>
    </div>
</div>
        
</section>
</asp:Content>