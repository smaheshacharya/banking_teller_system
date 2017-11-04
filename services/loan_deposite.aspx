<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loan_deposite.aspx.cs" Inherits="FinalProject.services.loan_deposite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../src/css/bootstrap.css" rel="stylesheet" />
    <link href="../src/css/style.css" rel="stylesheet" />
    <link href="../src/assets/font-awesome-4.1.0/css/font-awesome.css" rel="stylesheet" />
    <script src="../src/js/jquery-1.10.2.js"></script>
    <script src="../src/js/bootstrap.js"></script>
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
            
                    <h3>Loan Deposite:</h3>
                </div>
            </div>

        </div>

        <hr/>
          <div class="container">
                <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
           
             
                    <div class="form-group">
                        <asp:Label ID="Lable1" runat="server" Text="Acc No:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="laccount" runat="server" CssClass="form-control form-horizontal" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                    </div>

                        <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
         
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="ammount in digit" CssClass="lable"></asp:Label>
                        &nbsp;with interest:<asp:TextBox ID="lammount" runat="server" CssClass="form-control form-horizontal" TextMode="Number"  ></asp:TextBox>
                    </div>
                </div>
                            </div>
             
                  <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
             
                      <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Depositer Name:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="lname" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                
              </div>
                      </div>

                     
                  <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
                    
                        
                         <asp:Button ID="Submit" runat="server"  CssClass="btn btn-info" Text="Deposite loan" OnClick="Submit_Click" />
                         <asp:Button ID="Sumbit" runat="server"  CssClass="btn btn-danger" Text="Exit"  />
                </div>
             
          </div>
              <hr />
                        <div class="row">
           <div class="col-lg-12">
                    
                   <h3>Loan Detail:</h3>     
                </div>
             
          </div>

                        <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
                    
               <asp:Label ID="rel_loan" runat="server" Text=""></asp:Label>
                </div>
             
          </div>
                             <div class="row">
           <div class="col-lg-12">
               <asp:GridView ID="loan_grid" runat="server" CssClass="table table-bordered table-condensed" CellPadding="4" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" />
                   <EditRowStyle BackColor="#2461BF" />
                   <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#EFF3FB" />
                   <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#F5F7FB" />
                   <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                   <SortedDescendingCellStyle BackColor="#E9EBEF" />
                   <SortedDescendingHeaderStyle BackColor="#4870BE" />
               </asp:GridView>
             
                                 </div>
             
          </div>
        </div>
        <hr/>
        <footer>
             
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
            </footer>
 
    </form>
</body>
</html>
