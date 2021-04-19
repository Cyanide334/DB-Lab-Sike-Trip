<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="DB_Lab_Sike_Trip.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
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
            <form id="SignupForm" form action="forms/signup.js" method="get" role="form" class="php-email-form" runat="server">
              <div class="row mt-3">
                <div class="col-md-6 form-group">
<%--                  <input type="text" name="name" class="form-control" id="fullname" placeholder="Fullname" required>--%>
                     <asp:TextBox ID="SIgnUpName"  placeholder="Fullname" runat="server"></asp:TextBox>
                </div>
                  <div class="col-md-6 form-group">
<%--                  <input type="text" name="name" class="form-control" id="username" placeholder="Username" required >--%>
                      <asp:TextBox ID="SignUpUsername" placeholder="Username" runat="server"></asp:TextBox>
                </div>
              </div>
                 <div class="row mt-3">
                <div class="form-group">
<%--                  <input type="email" name="email" class="form-control" id="email" placeholder="Email" required >--%>
                    <asp:TextBox ID="SignUpEmail" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                </div>
              </div>
               <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <%--<input type="password" class="form-control" name="password" id="password" placeholder="Password" required>--%>
                    <asp:TextBox ID="SignUpPassword" TextMode="password" placeholder="Password" runat="server"></asp:TextBox>
                </div>
                    <div class="col-md-6 form-group mt-3 mt-md-0">
<%--                <input type="password" class="form-control" name="password2" id="password2" placeholder="Confirm Password" required>--%>
                    <asp:TextBox ID="SignUpPasswordConfirmation" TextMode="password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                </div>
               </div>
            <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
<%--                <input type="text" class="form-control" name="dob" id="dob" placeholder="Date of Birth (not required)" onfocus="(this.type='date')">--%>
                    <asp:TextBox ID="SignUpDOB" TextMode="date" placeholder="Date of Birth (not required)"  runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
<%--                <input type="text" class="form-control" name="country" id="country" placeholder="Country" required>--%>
                   <asp:TextBox ID="SignUpCountry" placeholder="Country" runat="server"></asp:TextBox>
            </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
<%--               <input type="text" class="form-control" name="city" id="city" placeholder="City" required>  --%>
                  <asp:TextBox ID="SignUpCity" placeholder="City" runat="server"></asp:TextBox>
                </div>
             </div>
             <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
<%--             <input type="tel" class="form-control" name="phone" id="phone" placeholder="Phone Number" required>--%>
                 <asp:TextBox ID="SignUpPhone" placeholder="Phone Number" runat="server"></asp:TextBox>
            </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
<%--              <input type="text" class="form-control" name="ccnum" id="ccnum" placeholder="Credit Card Number" required>  --%>
                  <asp:TextBox ID="SignUpCreditCard" placeholder="Credit Card Number" runat="server"></asp:TextBox>
                </div>
             </div>
            <div class="row mt-3">
            <div class="text-center">
<%--           <button type="submit">Signup</button>--%>
               <asp:Button ID="SignUpButton" Text="Signup" runat="server"></asp:Button>
            </div>
            </div>

            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

</asp:Content>
