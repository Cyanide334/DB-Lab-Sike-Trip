<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DB_Lab_Sike_Trip.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
     <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>Login</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Login</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->
     <section id="contact" class="contact">
      <div class="container"> 
        <div class="row ms-5 justify-content-center">

          <div class="col-lg-8 mt-lg-0">
              <div class="row mt-3">
                    <div class="col-md-6 text-center">
                       <h4> Please Login Below</h4>
                    </div>
              </div>
            <form action="forms/login.js" method="get" role="form" class="php-email-form">
              <div class="row mt-3">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="username" placeholder="Username" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' ">
                </div>
              </div>
               <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="password" class="form-control" name="password" id="password" placeholder="Password" value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' ">
                </div>
               </div>
            <div class="row mt-3">
            <div class="col-md-6 text-center">
               <button type="submit">Login</button>
            </div>
            </div>

            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
        

</asp:Content>
