<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DB_Lab_Sike_Trip.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
    <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contact</h2>
          <ol>
            <li><a href="Home.aspx">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">



        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>CC69, JT, Lahore</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>shenkchan@gmail.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+92 0666-4206969</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            <form action="forms/contact.php" method="post" role="form" class="php-email-form" runat="server">
              <div class="row">
                <div class="col-md-6 form-group">
                  <asp:TextBox  runat="server" class="form-control" id="contactName" placeholder="Your Name" ></asp:TextBox>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <asp:TextBox  runat="server" class="form-control" id="TextBox1" placeholder="Your E-Mail" ></asp:TextBox>
                </div>
              </div>
              <div class="form-group mt-3">
                <asp:TextBox  runat="server" class="form-control" id="TextBox2" placeholder="Subject" ></asp:TextBox>
              </div>
              <div class="form-group mt-3">
               <asp:TextBox  runat="server" class="form-control" id="TextBox3" placeholder="You" ></asp:TextBox>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><asp:Button CssClass="btn btn-danger" Text="Send Message" runat="server"></asp:Button></div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->


</asp:Content>