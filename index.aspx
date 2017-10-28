<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FinalProject.index" %>

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
       <li><a href="index.aspx">Home</a></li>
            <li><a href="#">About </a></li>
               <li><a href="#">Contact </a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services <span class="caret"></span></a>
          <ul class="dropdown-menu">
            
            
            <li role="separator" class="divider"></li>
               <li><a href="services/addacount.aspx">Add Account </a></li>
            <li><a href="#">Deposite</a></li>
               <li role="separator" class="divider"></li>
              
               <li><a href="services/deposite_cash.aspx">-Cash </a></li>
               <li role="separator" class="divider"></li>
               <li><a href="services/withdraw.aspx">Withdraw </a></li>
               <li><a href="services/loan.aspx">Loan </a></li>
              
           
            
          </ul>
           
        </li>
      </ul>
      <div class="navbar-form navbar-right">
       
        <a href="login.aspx" class="btn btn-info" <span>Login</span> </a>
          <a href="officer_login.aspx" class="btn btn-info" <span>S/A Login</span> </a>
      </div>
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


        <div class="container">
       <div class="row">
           <div class="col-lg-12 banner">
               <h2 class="h2">Muktinath Bikash Bank Ltd.</h2>
               <h2 class="h2">Kamaladi kathmandu 20</h2>
               <img src="src/img/smalllogo1.png" class="img img" />
           </div>

         </div>

        </div>
         <div class="container content">
            <div class="row">
                <div class="col-lg-4">
                    <img src="src/img/about.jpg" class="img-circle img-responsive"/>
                    <p>
                        A book is a set of sheets of paper, parchment, or similar materials that are fastened together to hinge at one side. A single sheet within a book is a leaf, and each side of a leaf is a page. Writing or images can be printed or drawn on a book's pages. An electronic image that is formatted to resemble a book on a computer screen, smartphone or e-reader device is known as an electronic book or e-book.
                        The simplest form of technology is the development and use of basic tools. The prehistoric discovery of how to control fire and the later Neolithic Revolution increased the available sources of food, and the invention of the wheel helped humans to travel in and control their environment. Developments in historic times, including the printing press, the telephone, and the Internet, have lessened physical barriers to communication and allowed humans to interact freely on a global scale. The steady progress of military technology has brought weapons of ever-increasing destructive power, from clubs to nuclear weapons.

                    </p>
                    </div>
                     <div class="col-lg-4">
                         <img src="src/img/about.jpg"  class="img-circle img-responsive" />
                         <p>
                             Cloud computing is a computing-infrastructure and software model for enabling ubiquitous access to shared pools of configurable resources (such as computer networks, servers, storage, applications and services),[1][2] which can be rapidly provisioned with minimal management effort, often over the Internet. Cloud computing allows users and enterprises with various computing capabilities to store and process data either in a privately-owned cloud, or on a third-party server located in a data center - thus making data-accessing mechanisms more efficient and reliable.[3][need quotation to verify] Cloud computing relies on sharing of resources to achieve coherence and economy of scale, similar to a utility.
                         </p> 
                </div>
                     <div class="col-lg-4">
                   
                         <img src="src/img/about.jpg" class="img-circle img-responsive" />
                         <p>
                             In economics, a service is a transaction in which no physical goods are transferred from the seller to the buyer. The benefits of such a service are held to be demonstrated by the buyer's willingness to make the exchange. Public services are those that society (nation state, fiscal union, region) as a whole pays for. Using resources, skill, ingenuity, and experience, service providers benefit service consumers.
                         </p>
            </div>

        
                </div>
             </div>
        	   <div class="container">
				   	<div class="row">
				   		<div class="col-lg-12 ">
				   			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3531.3494656411463!2d85.31907181454515!3d27.73736518277955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb192455b84055%3A0x5caeacf4f4c3787f!2sBasundhara+kathmandu!5e0!3m2!1sen!2s!4v1489649497578" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
       
				   		</div>
				   	</div>
				   </div>
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
                                   <p>Fax:01-41686884<p> 

       
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
