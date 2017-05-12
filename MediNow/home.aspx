<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Medilab Free Bootstrap HTML5 Template</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <!-- =======================================================
        Theme Name: Medilab
        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        Author: BootstrapMade.com
        Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>
<body  id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form2" runat="server">
    <div>
    	<!--banner-->
	<section id="banner" class="banner">
		<div class="bg-color">
			<nav class="navbar navbar-default navbar-fixed-top">
			  <div class="container">
			  	<div class="col-md-12">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#"><img src="img/newlogo.png" alt="..." class="img-responsive" style="width: 250px; margin-top: -16px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
				      <ul class="nav navbar-nav">
				      
				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
                        <div class="banner-info">
						<div class="banner-logo text-center">
							<img src="img/newlogo.png" class="img-responsive">
						</div>
                        <div class="banner-text text-center">
                        <h1 class="white">Healthcare at your desk!!</h1></div>
						
						
					</div>
				</div>
                <div class="col-sm-6">
                     <!-- <div class="container" align="center" style="margin-top:100px;">
                        
                            <div class="form-control br-radius-zero"><asp:TextBox runat="server"  id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></asp:TextBox></div>
                            <div class="form-control br-radius-zero"><asp:TextBox  runat="server"  name="Password" id="Password" placeholder="Password" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject"></asp:TextBox></div>
                            <div class="form-control br-radius-zero"><asp:Button ID="submit" runat="server" Text="Login"></asp:Button></div>
                      </div>  -->
                      <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
              <asp:Table ID="Table1" runat="server" align="center" valign="center" style="margin-top:100px;">
                 <asp:TableRow ID="TableRow1" runat="Server" >
                     <asp:TableCell ID="TableCell11" runat="Server"  >
                        <div class="form-group">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem >Customer</asp:ListItem>
                            <asp:ListItem>Doctor</asp:ListItem>
                            <asp:ListItem>Shopkeeper</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                     </asp:TableCell>
               </asp:TableRow>  
                <asp:TableRow ID="TableRow2" runat="Server" >
                    <asp:TableCell ID="TableCell4" runat="Server"  >
                        <div class="form-group">
                                    <asp:TextBox runat="server"  class="form-control br-radius-zero" name="email" id="l_email" placeholder="Your User ID" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                          </div>       
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell7" runat="Server">
                           <div class="form-group">
                                    <asp:TextBox runat="server"  class="form-control br-radius-zero" name="Password" id="l_Password" TextMode="Password" placeholder="Password" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <div class="validation"></div>
                           </div>
                  </asp:TableCell>
               </asp:TableRow>  
               <asp:TableRow ID="TableRow10" runat="Server">
                    <asp:TableCell ID="TableCell10" runat="Server" >
                        <div class="form-action">
									<asp:Button ID="l_submit" runat="server" Text="Sign In" class="btn btn-form" OnClick="signin"/>
						</div>
                     </asp:TableCell>
                     <asp:TableCell ID="TableCell1" runat="Server" >
                       <asp:LinkButton ID="Register_new" runat="server" OnClick="signup" ForeColor="White">Not registered?</asp:LinkButton>
                     </asp:TableCell>
                </asp:TableRow>
         </asp:Table>
                </asp:Panel>
                </div>
             </div>
           </div>
		</div>
    </section>
	<!--/ banner-->
    	
    
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>
    </form>   
 </body>
 </html>
