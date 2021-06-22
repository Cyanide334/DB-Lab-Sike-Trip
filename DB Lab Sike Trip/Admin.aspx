<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DB_Lab_Sike_Trip.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
            .warpper{
              margin:50px;
              
              display:flex;
              flex-direction: column;
              align-items: flex-start;
            
            }
            .ServiceLogTable{
                margin:20px;
                align-items:center;
                overflow:scroll;
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
            #delete_services:checked ~ .panels #delete_services-panel
            {
              display:block
            }
            #view_log:checked ~ .tabs #view_log-tab,
            #edit_services:checked ~ .tabs #edit_services-tab,
            #create_services:checked ~ .tabs #create_services-tab,
            #delete_services:checked ~ .tabs #delete_services-tab
            {
              background:#fffffff6;
              color:#d9232d;
              border-top: 3px solid #d9232d;
            } 
            .createBtn {
              padding: 0;
            }

            .createBtn ul {
              margin: 0;
              padding: 0;
              display: flex;
              list-style: none;
              align-items: center;
            }

            .createBtn li {
              position: relative;
            }

            .createBtn a {
              display: flex;
              align-items: center;
              justify-content: space-between;
              padding: 10px 0 10px 30px;
              font-family: "Poppins", sans-serif;
              font-size: 15px;
              font-weight: 500;
              color: #556270;
              white-space: nowrap;
              transition: 0.3s;
            }

            .createBtn a i {
              font-size: 12px;
              line-height: 0;
              margin-left: 5px;
            }

            .createBtn a:hover, .createBtn .active, .createBtn li:hover > a {
              color: #d9232d;
            }

            .createBtn .getstarted {
              background: #d9232d;
              padding: 8px 25px;
              margin-left: 10px;
              border-radius: 4px;
              font-weight: 400;
              color: #fff;
            }

            .createBtn .getstarted:hover {
              color: #fff;
              background: #e1444d;
            }

            .createBtn .dropdown ul {
              display: block;
              position: absolute;
              left: 14px;
              top: calc(100% + 30px);
              margin: 0;
              padding: 10px 0;
              z-index: 99;
              opacity: 0;
              visibility: hidden;
              background: #fff;
              box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
              transition: 0.3s;
            }

            .createBtn .dropdown ul li {
              min-width: 200px;
            }

            .createBtn .dropdown ul a {
              padding: 10px 20px;
              font-size: 15px;
              text-transform: none;
              font-weight: 400;
            }

            .createBtn .dropdown ul a i {
              font-size: 12px;
            }

            .createBtn .dropdown ul a:hover, .createBtn .dropdown ul .active:hover, .createBtn .dropdown ul li:hover > a {
              color: #d9232d;
            }

            .createBtn .dropdown:hover > ul {
              opacity: 1;
              top: 100%;
              visibility: visible;
            }

            .createBtn .dropdown .dropdown ul {
              top: 0;
              left: calc(100% - 30px);
              visibility: hidden;
            }

            .createBtn .dropdown .dropdown:hover > ul {
              opacity: 1;
              top: 0;
              left: 100%;
              visibility: visible;
            }
            
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
     <form runat="server">
        <div class="warpper">
          <input class="radio" id="view_log" name="group" type="radio" checked>
          <input class="radio" id="edit_services" name="group" type="radio">
          <input class="radio" id="create_services" name="group" type="radio">
          <input class="radio" id="delete_services" name="group" type="radio">
          
          <div class="tabs">
              <label class="tab" id="view_log-tab" for="view_log">View Log</label>
              <label class="tab" id="edit_services-tab" for="edit_services">Edit Services</label>
              <label class="tab" id="create_services-tab" for="create_services">Create Services</label>
              <label class="tab" id="delete_services-tab" for="delete_services">Delete Services</label>

          </div>
          <div class="panels">
              <div class="panel" id="view_log-panel">
                <div class="panel-title">Service Log</div>
                  <div class ="ServiceLogTable">
                      <asp:GridView ID="LogTable" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#d9232d" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#d9232d" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
                  </div>

              </div>
              <div class="panel" id="edit_services-panel">
                                    <!-- ======= Catalogue Section ======= -->
                 
                           <!-- ======= Portfolio Section ======= -->
                        <section id="portfolio" class="portfolio" runat="server">
        
                          <div class="container" >
                              <div class="section-title">
                                    <h2>Sike! Trip</h2>
                                     <p>Trips & Tours</p>
                                  </div>

                            <div class="row portfolio-container" runat="server" id="trips">
                            </div>
      
                          </div>
                        </section>
                          <!-- buses section -->
                              <section id="Section1" class="portfolio" runat="server">
        
                          <div class="container" >
                              <div class="section-title">
                                  <h2>Sike! Trip</h2>
                                     <p>Buses</p>
                                  </div>  
                            <div class="row portfolio-container" runat="server" id="buses">
                            </div>
      
                          </div>
                        </section>
                      
                              <!-- End Portfolio Section -->
              </div>
              <div class="panel" id="create_services-panel">
                <div class="panel-title">Create a New Service</div>
                  <div class="row mt-2">
                                
                          <%--<div class="mt-5 text-center"><asp:Button ID="createTour" runat="server" class="btn btn-primary profile-button" Text="Create Tour Service" Width="130px" Height="40px" OnClick="goto_create_tour" /></div>
                          <div class="mt-5 text-center"><asp:Button ID="createBus" runat="server" class="btn btn-primary profile-button" Text="Create Bus Service" Width="130px" Height="40px" OnClick="goto_create_bus" /></div>
                      --%>
                      <nav id="createBtn" class="createBtn">
                    <ul>
                        <br><br><br>
                        <li>
                            <a href="Create Bus Service.aspx"  class="getstarted">Create a Bus</a>
                        </li>
                    
                       
                        <li>
                            <a href="Create Tour Service.aspx"  class="getstarted">Create a Tour</a>
                        </li>
                    </ul>
                          </nav>
                      
                      

                  </div>
                        
              </div> 
          <div class="panel" id="delete_services-panel">
                <div class="panel-title">Tour Services</div>
                  <div class ="ServiceLogTable">
                      <asp:GridView ID="TourTable" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#d9232d" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#d9232d" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
                  </div>
              <div class="row">
                    <header runat="server" id="errorboxTour"></header>
                        <div class="row mt-2">
                            <nav id="deleteTour" class="createBtn">
                
                            <ul>
                                <li>
                                   <div class="col-md-12"><label class="labels"></label><asp:TextBox ID="tour_input" runat="server" placeholder="Enter Tour ID" CssClass="form-control cancelBox" Width ="300px"></asp:TextBox></div>
                                </li>
                                <li>
                                     <div class="col-md-12"><asp:Button ID="deleteTourBtn" Text="Delete Tour" runat="server"  CssClass="btn btn-danger " Width="200px" Height="40px" OnClientClick="return validate()" OnClick="delete_tour"/></div>         
                                </li>
                            </ul>
                                </nav>
                            </div>
        

                        </div>
              <div class ="ServiceLogTable">
                      <asp:GridView ID="BusTable" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#d9232d" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#d9232d" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
                  </div>
              <div class="row">
                    <header runat="server" id="errorboxBus"></header>
                        <div class="row mt-2">
                            <nav id="deleteBus" class="createBtn">
                
                            <ul>
                                <li>
                                   <div class="col-md-12"><label class="labels"></label><asp:TextBox ID="bus_input" runat="server" placeholder="Enter Bus ID" CssClass="form-control cancelBox" Width ="300px"></asp:TextBox></div>
                                </li>
                                <li>
                                     <div class="col-md-12"><asp:Button ID="deleteBusBtn" Text="Delete Bus" runat="server"  CssClass="btn btn-danger " Width="200px" Height="40px" OnClientClick="return validate()" OnClick="delete_bus"/></div>         
                                </li>
                            </ul>
                                </nav>
                            </div>
        

                        </div>
              </div>
          </div>
        </div>

         </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
