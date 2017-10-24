<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="officer_login.aspx.cs" Inherits="FinalProject.officer_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="src/css/bootstrap.css" rel="stylesheet" />
    <link href="src/css/style.css" rel="stylesheet" />
    <link href="src/assets/font-awesome-4.1.0/css/font-awesome.css" rel="stylesheet" />
    <script src="src/js/jquery-1.10.2.js"></script>
    <script src="src/js/bootstrap.js"></script>
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
     
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
        <div class="container">
                <div class="row">
<div class="col-lg-12 ">
            
                    <h3>Admin  login:</h3>
                </div>
            </div>

        </div>

        <hr/>
          <div class="container">
                <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
           
             
                    <div class="form-group">
                        <asp:Label ID="offusername" runat="server" Text="Username:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="username" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>


                           <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
         
                    <div class="form-group">
                        <asp:Label ID="offpassword" runat="server" Text="Password:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-horizontal" TextMode="Password"   ></asp:TextBox>
                    </div>
               </div>
                               </div>

       
                
      
                  <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
                    
                        
                         <asp:Button ID="Submit" runat="server"  CssClass="btn btn-info" Text="login" OnClick="Submit_Click" />
                         <asp:Button ID="Sumbit" runat="server"  CssClass="btn btn-danger" Text="Exit" />
                </div>
             
          </div>
                         <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
                    
                        
               <asp:Label ID="result" runat="server" Text=""></asp:Label>
                </div>
             
          </div>
              </div>
       
        
       
    </form>
</body>
</html>
