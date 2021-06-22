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
                <div class="col-md-12"><label class="labels"></label><asp:TextBox ID="service_input" runat="server" placeholder="Enter Service ID" CssClass="form-control" Width ="300px"></asp:TextBox></div>
                <div class="col-md-12"><asp:Button ID="cancelReservationBtn" Text="Cancel Reservation" runat="server"  CssClass="btn btn-primary profile-button" Width="200px" Height="40px" OnClientClick="return validate()" OnClick="cancel_reservation"/></div>         
            </div>
        </div>
            </div>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
