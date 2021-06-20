<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View Profile.aspx.cs" Inherits="DB_Lab_Sike_Trip.View_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
            body{
        margin-top:20px;
        color: #1a202c;
        text-align: left;
        background-color: #e2e8f0;    
    }
    .main-body {
        padding: 15px;
    }
    .card {
        box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
    }

    .card {
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 0 solid rgba(0,0,0,.125);
        border-radius: .25rem;
    }

    .card-body {
        flex: 1 1 auto;
        min-height: 1px;
        padding: 1rem;
    }

    .gutters-sm {
        margin-right: -8px;
        margin-left: -8px;
    }

    .gutters-sm>.col, .gutters-sm>[class*=col-] {
        padding-right: 8px;
        padding-left: 8px;
    }
    .mb-3, .my-3 {
        margin-bottom: 1rem!important;
    }

    .bg-gray-300 {
        background-color: #e2e8f0;
    }
    .h-100 {
        height: 100%!important;
    }
    .shadow-none {
        box-shadow: none!important;
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
                        <h2>Profile</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Profile</li>
                        </ol>
                    </div>
                </div>
            </section>

      <!-- End Breadcrumbs -->
      <form id="ViewProfileForm" form action="/" runat="server">
    <section class="viewProfile" runat="server" id="DisplayProfileSection" visible="true">
        
            <div class="container">
    <div class="main-body" >
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
<%--                    <img src="https://i1.sndcdn.com/avatars-sd3AZunCX4tETjpu-5hWeSA-t500x500.jpg" alt="Admin" class="rounded-circle" width="150">--%>
                    <asp:Image ID="Image1" ImageUrl="https://i1.sndcdn.com/avatars-sd3AZunCX4tETjpu-5hWeSA-t500x500.jpg" class="rounded-circle" width="150" runat="server" />
                    <div class="mt-3">

                     <asp:textBox runat="server" id="display_username" style="border: none"></asp:textBox>

                      <p class="text-muted font-size-sm" id="City_And_Country_display"></p>
                         <asp:Button ID="ViewProfileFollowButton" Text="View Reservations" runat="server" class="btn btn-danger" OnClick ="goto_reservations"></asp:Button>
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_name" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <asp:textBox runat="server" id="display_email" style="border: none" ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                       <asp:textBox runat="server" id="display_phone" style="border: none" ReadOnly="True"></asp:textBox>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">City</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_city" style="border: none" ReadOnly="True"></asp:textBox>
                    </div>
                  </div>
                    <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Country</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_country" style="border: none" ReadOnly="True"></asp:textBox>
                    </div>
                  </div>
                    <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Date of Birth</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_dob" style="border: none" ReadOnly="True"></asp:textBox>
                    </div>
                  </div>

                </div>
              </div>
            </div>
            </div>
          </div>
        </div>
        
    </section>
           <section id="contact" class="contact">
      <div class="container"> 
        <div class="row ms-5 justify-content-center">

          <div class="col-lg-8 mt-lg-0">
           <div id ="showLogInButton" runat="server" visible ="true">
                
                       <div class="col-md-6 text-center">
                           <h4 id = "NotAlreadyLoggedIn" runat="server" > You are not logged in from an account</h4>
                            <br />
                            <br />
                           <h4 id = "ID1" runat="server" > Login From an account</h4>
                            <br />
                            <br />
                           <br />
                      <asp:Button ID="LogInButton" Text="Login" runat="server"  CssClass="btn btn-danger" Width="100px" OnClick="LogInButton_Click" PostBackUrl="Login.aspx"/>
                    </div>
                  
                 </div>
               </div>
             </div>
           </div>
          </section>

     </form>
</asp:Content>

