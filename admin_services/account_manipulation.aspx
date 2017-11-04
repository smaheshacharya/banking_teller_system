<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account_manipulation.aspx.cs" Inherits="FinalProject.admin_services.add_staff" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
         <div class="navbar-form navbar-right">
      
              <a href="indexuser.aspx" class="btn btn-info"> <span>Log out</span> </a>
          
      </div>
     
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
         <div class="container">
                <div class="row">
           <div class="col-lg-12">
            
                    <h3>Account Manipulation:</h3>
                </div>
            </div>

        </div>

        <hr />
         <div class="container">
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Lable1" runat="server" Text="Username:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="amusername" runat="server" CssClass="form-control form-horizontal" >type username</asp:TextBox>
                    </div>
                </div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    </div>
         <div class="row">
                 <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Email:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="amemail" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
             
              </div>
             <div class="row">
               <div class="col-lg-3 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Ward/house:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="amhouse" runat="server" CssClass="form-control form-horizontal" TextMode="Number" ></asp:TextBox>
                    </div>
                </div>
             
               <div class="col-lg-3">
          
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="VDC:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="amvdc" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
       </div>
       
           <div class="row">
               <div class="col-lg-3 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="District:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="amdistrict" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
               
               
          
                
               <div class="col-lg-3">
          
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Mobile No:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="ammobile" runat="server" CssClass="form-control form-horizontal" TextMode="Number" ></asp:TextBox>
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
                        <asp:RadioButton ID="ammale" runat="server" GroupName="gender" Checked="True" />
                         <asp:Label ID="Label13" runat="server" Text="female:"></asp:Label>
                        <asp:RadioButton ID="amfemale" runat="server" GroupName="gender" />
                    </div>
                       </div>
                </div>
                       </div>
                   
            
                             
                    <div class="col-lg-3">
                   <div class="form-group">
                        <asp:Label ID="Label14" runat="server" Text="User Type:"></asp:Label>
                       <br />
                       <asp:DropDownList ID="amdrop" runat="server">
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
                        <asp:TextBox ID="amfather" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Grandfather's name:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="amgrandfather" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Wife name:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="amwifename" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
                <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Upload Scanned ID card:" CssClass="lable"></asp:Label>
                        
                      <asp:FileUpload ID="supload" runat="server" Csslass="btn btn-default" Value="Upload" />
                   
              <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                         </div>
                </div>
                    </div>
                   <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Update" OnClick="Button1_Click" />
                         <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" Text="delete" OnClick="Button3_Click" />
                        

               
                         </div>
                </div>
                    </div>
                    <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
          
              <asp:Label ID="lresult" runat="server"></asp:Label>
                </div>
                    </div>
                   <div class="row">
          <div class="col-lg-10 col-lg-offset-1">
          
              <h3>Account Detail</h3>
                    </div>
                       </div>
             <hr />
                   <div class="row">
          <div class="col-lg-12 ">
              <div class="col-lg-3 col-offset-6">
           <asp:TextBox ID="search" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                   <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="search" OnClick="Button2_Click1"/>
                        
              </div>
              <asp:GridView ID="amgrid" runat="server" AutoGenerateSelectButton="True" CssClass="table table-bordered table-condensed table-responsive " OnSelectedIndexChanged="amgrig_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                         <div class="row">
          <div class="col-lg-6 col-lg-offset-4">
              <asp:Label ID="label" runat="server" Visible="False"></asp:Label>
             
                </div>
                    </div>
       </div>
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
