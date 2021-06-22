
<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View Bus.aspx.cs" Inherits="DB_Lab_Sike_Trip.View_Bus" %>
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
    
    /* .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      max-width:700px;
      margin-left:auto;
      margin-right:auto;
      }*/

 </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" runat="server">

     <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>View Bus</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>View Bus</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->
        <form id="ViewBusForm"  runat="server">
            <%--have to fix this--%>
<%--    <section id ="DisplayBus" class="viewProfile" visible = "true" runat ="server">--%> 
    <section class="viewProfile">

            <div class="container">
    <div class="main-body">
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                     <asp:Image ID="Image1" ImageUrl="assets\img\testimonials\testimonials-2.jpg" class="rounded-circle" width="150" runat="server" />
                    <div class="mt-3">
                      <h4>Sike! Bus</h4>
                      <p class="text-secondary mb-1">Press Book to Proceed</p>
                      <asp:Button ID="book_btn" Text="Book" runat="server"  CssClass="btn btn-danger" Width="100px"  OnClick="BookButton_Click"/>

                         <%--have to get it to its position and do smthn about not showing the buses if none is chosen--%>
                      <%--    <section id="contact" class="contact">      
                 <div id ="showBookButton" runat="server" visible ="true">
                           <p class="text-secondary mb-1"> You have not booked any buses</p>
                     </div>          
            </section>--%>

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
                      <h6 class="mb-0">Manufacturer</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_manufacturer" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Model</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_model" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Registration Number</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_registrationnumber" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Capacity</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_capacity" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Price per day</h6>
                    </div>
                     
                    <div class="col-sm-9 text-secondary">
                      <asp:textBox runat="server" id="display_priceperkm" style="border: none"  ReadOnly="True"></asp:textBox> 
                    </div>
                  </div>
                     <hr>
              
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
    </section>


     </form>
</asp:Content>
