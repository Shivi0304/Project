<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" Async="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
 
<body>
 
    <form id="form1" runat="server">
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
				      <a class="navbar-brand" href="#"><img src="img/newlogo.png" class="img-responsive" style="width: 250px; margin-top: -16px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
				      <ul class="nav navbar-nav">
				       
				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
			<asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
           
          
              <asp:Table ID="Table1" runat="server" align="center" valign="center" style="margin-top:100px;">
               <asp:TableRow ID="TableRow2" runat="Server" >
                <asp:TableCell ID="TableCell4" runat="Server"  >
             <div class="form-group">
                                    <asp:TextBox runat="server"  name="name" Columns="50" class="form-control br-radius-zero" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div></div>       </asp:TableCell>
                                      <asp:TableCell ID="TableCell7" runat="Server">
  <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control br-radius-zero" TextMode="Email" name="email" id="email" placeholder="Your Email"  data-rule="email" data-msg="Please enter a valid email" />
                                       <div id="checkusernameoremail" runat="server">                             
                            <asp:Label ID="lblStatus" runat="server" Font-Bold="true" ForeColor="#ffffff"></asp:Label>  
                        </div>   <div class="validation"></div></div>
                            
         
                </asp:TableCell>
               
                </asp:TableRow>
             
            
                  <asp:TableRow ID="TableRow8" runat="Server">
                <asp:TableCell ID="TableCell8" runat="Server">
       <div class="form-group">
       <br />
                                    <asp:TextBox runat="server"  class="form-control br-radius-zero" TextMode="Password" id="Password" placeholder="Password" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="Password length must be between 7 to 10 characters"
ControlToValidate="Password"    Font-Bold="true" Font-Size="Medium" ForeColor="#ffffff"
ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" />
                                    <div class="validation"> </div></div>
                </asp:TableCell>
                <asp:TableCell ID="TableCell9" runat="Server">
    <div class="form-group"><asp:TextBox ID="ps" runat="server" class="form-control br-radius-zero" TextMode="Password" name="ConfirmPassword"  data-rule="required" data-msg="Please write something for us" placeholder="Confirm Password"/>
                    <asp:CompareValidator id="comparePasswords" runat="server" ControlToCompare="Password" ControlToValidate="ps" ErrorMessage="Your passwords do not match up!"   Display="Dynamic" Font-Bold="true" Font-Size="Medium" ForeColor="#ffffff" />                  <div class="validation"> </div></div>
                </asp:TableCell>
   
      
            
          
                </asp:TableRow>
              
                
                
            
                 <asp:TableRow ID="TableRow3" runat="Server">
                <asp:TableCell ID="TableCell2" runat="Server">
            <div class="form-group">
                                    <asp:TextBox runat="server" name="City" Columns="50" class="form-control br-radius-zero" id="TextBox2"   placeholder="Your City" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div></div>
                </asp:TableCell>
                  <asp:TableCell ID="TableCell3" runat="Server">
             <div class="form-group">
                                    <asp:TextBox runat="server"  name="State" Columns="50"  class="form-control br-radius-zero" id="TextBox3"   placeholder="Your State" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div></div>
                </asp:TableCell>
                </asp:TableRow>
               
                 <asp:TableRow ID="TableRow5" runat="Server">
                <asp:TableCell ID="TableCell5" runat="Server">
           <div class="form-group">
                                    <asp:TextBox runat="server"  name="Pincode" Columns="50" TextMode="Number" class="form-control br-radius-zero" id="TextBox4"   placeholder="Your Pincode" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div></div>
                </asp:TableCell>
                  <asp:TableCell ID="TableCell6" runat="Server">
 <div class="form-group">
                                    <asp:TextBox runat="server"  name="Contact" Columns="50" TextMode="Phone" class="form-control br-radius-zero" id="TextBox5"  placeholder="Your Contact Number" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div></div>
                </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow ID="TableRow9" runat="Server">
                  <asp:TableCell ID="TableCell1" runat="Server" >
         <div class="form-group">
                                    <asp:TextBox runat="server"  name="address" Columns="50" class="form-control br-radius-zero" id="TextBox1" TextMode="MultiLine"  placeholder="Your Address" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div></div>
                </asp:TableCell>
                <asp:TableCell ID="TableCell11" runat="Server"  >
                        <div class="form-group">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="False" Value="Customer">Customer</asp:ListItem>
                            <asp:ListItem Selected="False" Value="Doctor">Doctor</asp:ListItem>
                            <asp:ListItem Selected="False" Value="Shopkeeper">Shopkeeper</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                     </asp:TableCell>
                </asp:TableRow>
              
                 <asp:TableRow ID="TableRow10" runat="Server">
                <asp:TableCell ID="TableCell10" runat="Server" >
            <div class="form-action">
									<asp:Button ID="submit" runat="server" Text="Sign Up" class="btn btn-form" OnClick="Submit"/>
								</div>
                </asp:TableCell>
                 <asp:TableCell></asp:TableCell>
                </asp:TableRow>
             
               
              
             
                  
           
    </asp:Table>
     
                
   </asp:Panel>
		</div>
	</section>
    </div>
    </form>

      
</body>
   
</html>
