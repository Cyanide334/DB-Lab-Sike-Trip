<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View Tour.aspx.cs" Inherits="DB_Lab_Sike_Trip.View_Tour" %>
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
                    >
                        <h2>View Tour</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>View Tour</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->
    <section class="viewProfile">

            <div class="container">
    <div class="main-body">
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="assets\img\testimonials\testimonials-3.jpg" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4>Sike! Tours</h4>
                      <p class="text-secondary mb-1">Service Provider</p>
                      <p class="text-muted font-size-sm">spUserName1234@bbb.com</p>
                      <button class="btn btn-danger">Book</button>
                      <button class="btn btn-outline-danger">Message</button>
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
                      <h6 class="mb-0">Departure</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      Lahore
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Destination</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      Murree
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Departure Date</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      dd-mm-yyyy
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Arrival Date</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        dd-mm-yyyy
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Booking Price</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      Rs. 15000
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Tour Rating Points</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     10
                    </div>
                  </div>
                    <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Bus Number</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     LEX-1234
                    </div>
                  </div>
                    <hr>
                   <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Tour Guide Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     None Assigned
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>

    </section>
</asp:Content>
