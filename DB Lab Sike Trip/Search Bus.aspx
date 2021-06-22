<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Search Bus.aspx.cs" Inherits="DB_Lab_Sike_Trip.Search_Bus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeContent" runat="server">
        <!-- ======= Breadcrumbs ======= -->
            <section id="breadcrumbs" class="breadcrumbs">
                <div class="container">
                    <div
                        class="d-flex justify-content-between align-items-center"
                    >
                        <h2>Search Bus</h2>
                        <ol>
                            <li><a href="Home.aspx">Home</a></li>
                            <li>Search Bus</li>
                        </ol>
                    </div>
                </div>
            </section>
      <!-- End Breadcrumbs -->
    <form  runat="server">
     <section id="contact" class="contact">
      <div class="container"> 
        <div class="row ms-5 justify-content-center">

          <div class="col-lg-8 mt-lg-0">
              <div class="row mt-3">
                    <div class="col-md-6 text-center">
                       <h4>Enter Minimum or Maximum Price Below</h4>
                    </div>
              </div>
            
              <div class="row mt-3">
                <div class="col-md-6 form-group">
                   <asp:Label ID="sbterror" ForeColor="Red" runat="server" ></asp:Label>
                  <asp:TextBox runat="server" class="form-control" id="inputMinPrice" placeholder="Enter Minimum Price"  ></asp:TextBox>
                </div>
              </div>
               <div class="row mt-3">
                <div class="col-md-6 form-group">
                   <asp:Label ID="Label1" ForeColor="Red" runat="server" ></asp:Label>
                  <asp:TextBox runat="server" class="form-control" id="inputMaxPrice" placeholder="Enter Maximum Price"  ></asp:TextBox>
                </div>
              </div>
            <div class="row mt-3">
            <div class="col-md-6 form-group mt-3 mt-md-0 text-center" id="searchtourerror" style="color:red">
               
            </div>
            </div>
            <div class="row mt-3">
            <div class="col-md-6 text-center">
               <asp:Button ID="searchToursBtn" Text="Search" runat="server"  CssClass="btn btn-danger" Width="100px" OnClick="search_buses"  />
            </div>
            </div>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
    
      <!-- buses section -->
          <section id="portfolio" class="portfolio" runat="server">
        
      <div class="container" >
          
        
        <div class="row portfolio-container" runat="server" id="buses">
        </div>
       
      </div>
    </section>
        </form>
          <!-- End Portfolio Section -->
          <!-- End Portfolio Section -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
