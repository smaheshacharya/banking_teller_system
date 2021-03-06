﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addaccount.aspx.cs" Inherits="FinalProject.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../src/css/bootstrap.css" rel="stylesheet" />
    <link href="../src/css/style.css" rel="stylesheet" />
    <link href="../src/assets/font-awesome-4.1.0/css/font-awesome.css" rel="stylesheet" />
    <script src="../src/js/jquery-1.10.2.js"></script>
    <script src="../src/js/bootstrap.js"></script>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 945px;
        }
        .auto-style2 {
            left: 0px;
            top: -615px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">MBB</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       <li><a href="#">Home</a></li>
            <li><a href="#">About </a></li>
               <li><a href="#">Contact </a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services <span class="caret"></span></a>
          <ul class="dropdown-menu">
            
            
            <li role="separator" class="divider"></li>
               <li><a href="#">Add Account </a></li>
            <li><a href="#">Deposite</a></li>
               <li role="separator" class="divider"></li>
               <li><a href="#">-Cheque </a></li>
               <li><a href="#">-Cash </a></li>
               <li role="separator" class="divider"></li>
               <li><a href="#">Withdraw </a></li>
               <li><a href="#">Loan </a></li>
              
           
            
          </ul>
           
        </li>
      </ul>
      <div class="navbar-form navbar-right">
       <a href="../login.aspx" class="btn btn-info"> <span>Login</span> </a>
          
      </div>
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
        <div class="container">
                <div class="row">
           <div class="col-lg-12">
            
                    <h3>Add Account:</h3>
                </div>
            </div>

        </div>

        <hr />
         <div class="container">
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Lable1" runat="server" Text="Username:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="susername" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
         <div class="row">
                 <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Email:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="semail" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
             
              </div>
             <div class="row">
               <div class="col-lg-3 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Ward/house:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="shouse" runat="server" CssClass="form-control form-horizontal" TextMode="Number" ></asp:TextBox>
                    </div>
                </div>
             
               <div class="col-lg-3">
          
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="VDC:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="svdc" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
       </div>
       
           <div class="row">
               <div class="col-lg-3 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="District:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="sdistrict" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
               
               
          
                
               <div class="col-lg-3">
          
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Mobile No:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="smobile" runat="server" CssClass="form-control form-horizontal" OnTextChanged="TextBox5_TextChanged" TextMode="Number" ></asp:TextBox>
                    </div>
                </div>
       </div>
                 
               <div class="row">
                   <div class="col-lg-3 col-lg-offset-4">
                    <div class="auto-style2">
                   <div class="auto-style1">
                   <div class="form-group">
                        <asp:Label ID="Label11" runat="server" Text="Gender:"></asp:Label>
                        <br />
                         <asp:Label ID="Label12" runat="server" Text="male:"></asp:Label>
                        <asp:RadioButton ID="smale" runat="server" GroupName="gender" Checked="True" />
                         <asp:Label ID="Label13" runat="server" Text="female:"></asp:Label>
                        <asp:RadioButton ID="sfemale" runat="server" GroupName="gender" />
                    </div>
                       </div>
                </div>
                       </div>
                   
            
                             
                    <div class="col-lg-3">
                   <div class="form-group">
                        <asp:Label ID="Label14" runat="server" Text="User Type:"></asp:Label>
                       <br />
                       <asp:DropDownList ID="sdrop" runat="server">
                           <asp:ListItem>Customer</asp:ListItem>
                           <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                   </div>
                    </div>
                       
               
                   </div>
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Father's name:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="sfather" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Grandfather's name:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="sgrandfather" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="whname" runat="server" Text="Wife/Husband name" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="swifename" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Upload Scanned ID card:" CssClass="lable"></asp:Label>
                        
                      <asp:FileUpload ID="fileupload" runat="server" Csslass="btn btn-default" Value="Upload" />
                   
            
                         </div>
                </div>
                    </div>
                     <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
            
                         </div>
                </div>
                    </div>
                   <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Add" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server"  CssClass="btn btn-danger" Text="Exit" />
                         </div>
                </div>
                    </div>
                    <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
              <asp:Label ID="add_account_result" runat="server" Text=""></asp:Label>
                </div>
                    </div>
       </div>
        




        <hr />
       <footer>
             <div class="container">
				   	<div class="row">
                           <div class="footer">
				   		<div class="col-lg-3 col-lg-offset-1 ">
                           <a href="info@muktinathbank.com.np" >Email:info@muktinathbank.com.np</a>
                            <a href="www.muktinathbank.com.np" >URL:www.muktinathbank.com.np</a>
       
				   		</div>
                               <div class="col-lg-3 col-lg-offset-1 ">
                          <p>Phone:01-4168685,4168686</p>
                                   <p>Fax:01-41686884</p> 

       
				   		</div>
                                      <div class="col-lg-3 col-lg-offset-1 font-footer">
                          <a class="btn" href="facebook.com"><span class="fa fa-2x fa-facebook"></span></a>
                               <a class="btn" href="google.com"><span class="fa fa-2x fa-google"></span></a>
                               <a class="btn" href="twitter.com"><span class="fa fa-2x fa-twitter"></span></a>

       
				   		</div>
                               
                               </div>
				   	</div>
				   </div>

        </footer>
    </form>
</body>
</html>
