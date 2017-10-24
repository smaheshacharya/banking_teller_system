<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="FinalProject.signup1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
       <link href="src/css/bootstrap.css" rel="stylesheet" />
    <link href="src/css/style.css" rel="stylesheet" />
    <link href="src/assets/font-awesome-4.1.0/css/font-awesome.css" rel="stylesheet" />
    <script src="src/js/jquery-1.10.2.js"></script>
    <script src="src/js/bootstrap.js"></script>
<body>
    <form id="form1" runat="server">
       <div class="container">
            
            <div class="row">
                <div class="col-md-5 col-offset-4">
                   

                    <h1>Sign up into system:</h1>
                </div>
            
        
   
 

        </div>

        <hr/>
         
                <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
           
             
                    <div class="form-group">
                        <asp:Label ID="Lable1" runat="server" Text="Username:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="gusername" runat="server" CssClass="form-control form-horizontal" ></asp:TextBox>
                    </div>
                </div>
                    </div>
                    <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
           
             
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Password:" CssClass="lable"></asp:Label>
                        <asp:TextBox ID="gpassword" runat="server" CssClass="form-control form-horizontal" TextMode="Password" ></asp:TextBox>
                    </div>
                </div>
                    </div>

         
                       <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
           
             
                    <div class="form-group">
                        
                    </div>
                </div>
                    </div>
     
                
      
                  <div class="row">
           <div class="col-lg-6 col-lg-offset-4">
                    
                        
                         <asp:Button ID="Submit" runat="server"  CssClass="btn btn-info" Text="signup" OnClick="Submit_Click" />
          
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
