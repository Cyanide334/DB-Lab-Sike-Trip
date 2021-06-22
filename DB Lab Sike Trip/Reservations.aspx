<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="DB_Lab_Sike_Trip.Reservations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
            .wrapper{
                display:flex;
                flex-direction:column;
                align-items:center;
            }
            .ServiceLogTable{
                
                margin:20px;
                width:100%;
                max-width:1200px;
                overflow:scroll;
                
            }
            .cancel {
              padding: 0;
            }

            .cancel ul {
              margin: 0;
              padding: 0;
              display: flex;
              list-style: none;
              align-items: center;
            }

            .cancel li {
              position: relative;
              padding:10px;
              margin:10px;
            }

            .cancel a {
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

            .cancel a i {
              font-size: 12px;
              line-height: 0;
              margin-left: 5px;
            }

            .cancel a:hover, .cancel .active, .cancel li:hover > a {
              color: #d9232d;
            }

            .cancel .getstarted {
              background: #d9232d;
              padding: 8px 25px;
              margin-left: 10px;
              border-radius: 4px;
              font-weight: 400;
              color: #fff;
            }

            .cancel .getstarted:hover {
              color: #fff;
              background: #e1444d;
            }

            .cancel .dropdown ul {
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

            .cancel .dropdown ul li {
              min-width: 200px;
            }

            .cancel .dropdown ul a {
              padding: 10px 20px;
              font-size: 15px;
              text-transform: none;
              font-weight: 400;
            }

            .cancel .dropdown ul a i {
              font-size: 12px;
            }

            .cancel .dropdown ul a:hover, .cancel .dropdown ul .active:hover, .cancel .dropdown ul li:hover > a {
              color: #d9232d;
            }

            .cancel .dropdown:hover > ul {
              opacity: 1;
              top: 100%;
              visibility: visible;
            }

            .cancel .dropdown .dropdown ul {
              top: 0;
              left: calc(100% - 30px);
              visibility: hidden;
            }

            .cancel .dropdown .dropdown:hover > ul {
              opacity: 1;
              top: 0;
              left: 100%;
              visibility: visible;
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
                        <h2>Reservations</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Reservations</li>
                        </ol>
                    </div>
                </div>
            </section>

      <!-- End Breadcrumbs -->
    <form runat="server">
        <div class ="wrapper">
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
<div class="row">
    <header runat="server" id="errorbox"></header>
        <div class="row mt-2">
            <nav id="cancel" class="cancel">
                
            <ul>
                <li>
                   <div class="col-md-12"><label class="labels"></label><asp:TextBox ID="service_input" runat="server" placeholder="Enter Service ID" CssClass="form-control cancelBox" Width ="300px"></asp:TextBox></div>
                </li>
                <li>
                     <div class="col-md-12"><asp:Button ID="cancelReservationBtn" Text="Cancel Reservation" runat="server"  CssClass="btn btn-danger " Width="200px" Height="40px" OnClientClick="return validate()" OnClick="cancel_reservation"/></div>         
                </li>
            </ul>
                </nav>
            </div>
        

        </div>
            </div>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
