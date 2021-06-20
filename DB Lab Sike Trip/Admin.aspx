<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DB_Lab_Sike_Trip.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
            .warpper{
              margin:50px;
              
              display:flex;
              flex-direction: column;
              align-items: flex-start;
            
            }
            .tab{
              cursor: pointer;
              padding:10px 20px;
              margin:0px 2px;
              background:#d9232d;
              display:inline-block;
              color:#fff;
              border-radius:3px 3px 0px 0px;
              box-shadow: 0 0.5rem 0.8rem #00000080;
            }
            .panels{
              background:#fffffff6;
              box-shadow: 0 2rem 2rem #00000080;
              min-height:200px;
              width:100%;
              border-radius:3px;
              overflow:hidden;
              padding:20px;  
            }
            .panel{
              display:none;
              animation: fadein .8s;
            }
            @keyframes fadein {
                from {
                    opacity:0;
                }
                to {
                    opacity:1;
                }
            }
            .panel-title{
              font-size:1.5em;
              font-weight:bold
            }
            .radio{
              display:none;
            }
            #view_log:checked ~ .panels #view_log-panel,
            #edit_services:checked ~ .panels #edit_services-panel,
            #create_services:checked ~ .panels #create_services-panel,
            {
              display:block
            }
            #view_log:checked ~ .tabs #view_log-tab,
            #edit_services:checked ~ .tabs #edit_services-tab,
            #create_services:checked ~ .tabs #create_services-tab,
            {
              background:#fffffff6;
              color:#d9232d;
              border-top: 3px solid #d9232d;
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
                        <h2>Admin Page</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Admin</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->
        <div class="warpper">
          <input class="radio" id="view_log" name="group" type="radio" checked>
          <input class="radio" id="edit_services" name="group" type="radio">
          <input class="radio" id="create_services" name="group" type="radio">
          
          <div class="tabs">
              <label class="tab" id="view_log-tab" for="view_log">View Log</label>
              <label class="tab" id="edit_services-tab" for="edit_services">Edit Services</label>
              <label class="tab" id="create_services-tab" for="create_services">Create Services</label>

          </div>
          <div class="panels">
              <div class="panel" id="view_log-panel">
                <div class="panel-title">Service Log</div>
                <p>Without CSS, every web page would be drab plain text and images that flowed straight down the page. With CSS, you can add color and background images and change the layout of your page — your web pages can feel like works of art!</p>
              </div>
              <div class="panel" id="edit_services-panel">
                                    <!-- ======= Catalogue Section ======= -->

                           <!-- ======= Portfolio Section ======= -->
                        <section id="portfolio" class="portfolio" runat="server">
        
                          <div class="container" >
                              <div class="section-title">
                                    <h2>Sike! Trips</h2>
                                     <p>Trips & Tours</p>
                                  </div>
                            <div class="row">
                              <div class="col-lg-12 d-flex justify-content-center">
                                <ul id="portfolio-flters">
                                  <li data-filter="*" class="filter-active">All</li>
                                </ul>
                              </div>
                            </div>
        
                            <div class="row portfolio-container" runat="server" id="trips">
                            </div>
      
                          </div>
                        </section>
                          <!-- buses section -->
                              <section id="Section1" class="portfolio" runat="server">
        
                          <div class="container" >
                              <div class="section-title">
                                     <p>Buses</p>
                                  </div>  
                            <div class="row portfolio-container" runat="server" id="buses">
                            </div>
      
                          </div>
                        </section>
                              <!-- End Portfolio Section -->
              </div>
              <div class="panel" id="create_services-panel">
                <div class="panel-title">Create a New Tour</div>
                <p>We recommend that you complete Learn HTML before learning CSS.</p>
              </div> 
          </div>
        </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
