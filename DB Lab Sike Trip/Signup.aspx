<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="DB_Lab_Sike_Trip.WebForm5" %>

<asp:Content ID="Content2" ContentPlaceHolderID="scripts" runat="server">
    <script src="signupscript.js"></script>
</asp:Content>

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
            <form  ID ="SignUpForm" class="php-email-form_1" runat="server">
              <div class="row mt-3">
                <div class="col-md-6 form-group">
                  <asp:TextBox  runat="server" class="form-control" id="signUpFullName" placeholder="Fullname" ></asp:TextBox>
                </div>
                  <div class="col-md-6 form-group">
                  <asp:TextBox  runat="server" class="form-control" id="signUpUsername" placeholder="Username" ></asp:TextBox>
                </div>
              </div>
                 <div class="row mt-3">
                <div class="form-group">
                  <asp:TextBox  runat="server" class="form-control" id="signUpEmail" placeholder="E-mail" ></asp:TextBox>
                </div>
              </div>
               <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                 <asp:TextBox TextMode="password"  runat="server" class="form-control" id="signUpPassword" placeholder="Password" ></asp:TextBox>
                </div>
                    <div class="col-md-6 form-group mt-3 mt-md-0">
                  <asp:TextBox TextMode="password"  runat="server" class="form-control" id="signUpConfirmPassword" placeholder="Confirm Password" ></asp:TextBox>
                </div>
               </div>
            <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                        <asp:TextBox runat=  "server" class="form-control" name="dob" id="dob" placeholder="Date of Birth (not required)" onfocus="(this.type='date')"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
               <asp:TextBox  runat="server" class="form-control" id="signUpCountry" placeholder="Country" ></asp:TextBox>
            </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                   <asp:TextBox  runat="server" class="form-control" id="signUpCity" placeholder="City" ></asp:TextBox>  
                </div>
             </div>
             <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
               <asp:TextBox  runat="server" class="form-control" id="signUpPhoneNumber" placeholder="Phone Number" ></asp:TextBox>
                 </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <asp:TextBox  runat="server" class="form-control" id="signUpCreditCardNumber" placeholder="Credit Card Number" ></asp:TextBox>
                </div>
             </div>
            
            <div class="row mt-3">
                <div class="form-group text-center" id="signUpError" style="color:red">
                
                </div>
            </div>
            <div class="row mt-3">
                <div class="text-center">
                   <asp:Button ID="signupSave" Text="Sign Up" runat="server" CssClass="btn btn-danger" Width="150px" OnClick="SignupSave_Click" OnClientClick="return validate()"/>
                </div>
            </div>
            </form>

          </div>
            
        </div>

      </div>
    </section><!-- End Contact Section -->

</asp:Content>