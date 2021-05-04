﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DB_Lab_Sike_Trip.LogIn" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server"> <script type="text/javascript" src="loginscript.js"></script></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="HomeContent" runat="server">
 
    <!--======= Breadcrumbs ======= -->
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

              <div id="loginerror"></div>

            <form id="loginform" action="forms/login.js" method="get" role="form" class="php-email-form"  runat="server">
                <div class="row mt-3">
                <div class="col-md-6 form-group">
<%--                  <asp:TextBox runat="server" class="form-control" id="username" placeholder="loginUsername"  value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></asp:TextBox>--%>
                  <asp:TextBox runat="server" class="form-control" id="username" placeholder="Username"  onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' " ></asp:TextBox>
                    </div>
              </div>
               <div class="row mt-3">
                <div class="col-md-6 form-group mt-3 mt-md-0">
               <%--    <asp:TextBox runat="server" TextMode="password" class="form-control" id="loginPassword" placeholder="Password" value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></asp:TextBox>--%>
                <asp:TextBox runat="server" TextMode="password" class="form-control" id="password" placeholder="Password (alphabets, numbers and underscore allowed only)" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' " ></asp:TextBox>
                </div>
                </div>
            <div class="row mt-3">
            <div class="col-md-6 text-center">
               <asp:Button ID="btnSave" type="submit" onClientClick="return Something()" Text="Save Form" runat="server" />
            </div>
            </div>

            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

</asp:Content>