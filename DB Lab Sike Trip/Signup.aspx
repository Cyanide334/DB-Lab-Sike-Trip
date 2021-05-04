<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="DB_Lab_Sike_Trip.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
     <script type="text/javascript" src="signupscript.js"></script>
    <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>Signup</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Signup</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->
     <section id="contact" class="contact">
         
         



      <div class="container"> 
        <div class="row justify-content-center">
          <div class="col-lg-8 mt-lg-0">
              <div class="row mt-3">
                    <div class="text-center">
                       <h4> Please Signup Below</h4>
                    </div>
              </div>
            <form  ID ="SignUpForm" role="form" class="php-email-form_1" runat="server">
              <div class="row mt-3">
                <div class="col-md-6 form-group">
                  <asp:TextBox  runat="server" class="form-control" id="fullname" placeholder="Fullname" ></asp:TextBox>
                </div>
                  <div class="col-md-6 form-group">
                  <asp:TextBox  runat="server" class="form-control" id="username" placeholder="Username" ></asp:TextBox>
                </div>
              </div>
                 <div class="row mt-3">
                <div class="form-group">
                  <asp:TextBox  runat="server" class="form-control" id="email" placeholder="E-mail" ></asp:TextBox>
                </div>
              </div>
               <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                 <asp:TextBox TextMode="password"  runat="server" class="form-control" id="signupPassword" placeholder="Password" ></asp:TextBox>
                </div>
                    <div class="col-md-6 form-group mt-3 mt-md-0">
                  <asp:TextBox TextMode="password"  runat="server" class="form-control" id="signupConfirmPassword" placeholder="Confirm Password" ></asp:TextBox>
                </div>
               </div>
            <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                        <asp:TextBox runat=  "server" class="form-control" name="dob" id="dob" placeholder="Date of Birth (not required)" onfocus="(this.type='date')"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
               <asp:TextBox  runat="server" class="form-control" id="signupcountry" placeholder="Country" ></asp:TextBox>
            </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                   <asp:TextBox  runat="server" class="form-control" id="signupcity" placeholder="City" ></asp:TextBox>  
                </div>
             </div>
             <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
               <asp:TextBox  runat="server" class="form-control" id="signupPhoneNumber" placeholder="Phone Number" ></asp:TextBox>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <asp:TextBox  runat="server" class="form-control" id="signupCreditCardNumber" placeholder="Credit Card Number" ></asp:TextBox>
                </div>
             </div>
                 </div>
            <div class="row mt-3">
            <div class="text-center">
               <asp:Button ID="signupSave" Text="Sign Up" runat="server" CssClass="btn btn-danger" Width="150px" OnClickClient="signupSave_Click"/>
            </div>
            </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

</asp:Content>