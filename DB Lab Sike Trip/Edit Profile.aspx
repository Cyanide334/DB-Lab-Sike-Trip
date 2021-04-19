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
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="https://i1.sndcdn.com/avatars-sd3AZunCX4tETjpu-5hWeSA-t500x500.jpg"><span class="font-weight-bold">Amelly</span><span class="text-black-50">amelly12@bbb.com</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <form runat="server">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
            
                    <h4 class="text-right">Edit Profile</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Name</label><asp:TextBox ID="editProfileName" runat="server" placeholder="name"></asp:TextBox></div>
                    <div class="col-md-6"><label class="labels">Username</label><asp:TextBox ID="editProfileUsername" runat="server" placeholder="username"></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Password</label><asp:TextBox ID="editProfilePassword" runat="server" placeholder="enter new password"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels">PhoneNumber</label><asp:TextBox ID="editProfilePhone" runat="server" placeholder="enter phone number"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels">Email ID</label><asp:TextBox ID="editProfileEmail" runat="server" placeholder="enter email id"></asp:TextBox></div>
                    <div class="col-md-12"><label class="labels">Date of Birth</label><asp:TextBox ID="editProfileDateOfBirth" runat="server" placeholder=""></asp:TextBox></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Country</label><asp:TextBox ID="editProfileCountry" runat="server" placeholder="country"></asp:TextBox>
                    
                </div>
                <div class="mt-5 text-center"><asp:Button ID="editProfileSaveButton"  runat="server" Text="Save Profile" /></div>
            </div>
            </form>
        </div>
        
    </div>
    </div>
</div>
        
</section>
</asp:Content>
