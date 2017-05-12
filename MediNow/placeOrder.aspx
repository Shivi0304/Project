<%@ Page Language="C#" AutoEventWireup="true" CodeFile="placeOrder.aspx.cs" Inherits="placeOrder" %>

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
   <%-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("[id*=AddressChoice] input").live("click", function () {

            var selectedText = $(this).next().html();
            if (selectedText == "Use Default") {
               
                document.getElementById('addressNew').style.display = 'block';
                 document.getElementById('addressDefault').style.display = 'none';
            else
                 document.getElementById('addressDefault').style.display = 'block';
                  document.getElementById('addressNew').style.display = 'none';
            }
        });
    </script>--%>
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
				      <a class="navbar-brand" href="#"><img src="img/newlogo.png" class="img-responsive" style="width: 250px; margin-top: -16px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
				      <ul class="nav navbar-nav">
				       <asp:Button ID="Button6" runat="server" BackColor="#4cb7a5" Text="Home" ForeColor="#ffffff" Height="44px" OnClick="h"></asp:Button>
				   
				      
				        <asp:Button ID="Button2" runat="server" BackColor="#4cb7a5" Text="Track Order" ForeColor="#ffffff" Height="44px" OnClick="tr"></asp:Button>
                          <asp:Button ID="Button3" runat="server" BackColor="#4cb7a5" Text="Cancel Order" ForeColor="#ffffff" Height="44px" OnClick="cancel"></asp:Button>
                            <asp:Button ID="Button4" runat="server" BackColor="#4cb7a5" Text="Chat With Doctor" ForeColor="#ffffff" Height="44px" OnClick="chat"></asp:Button>
                             <asp:Button ID="Button5" runat="server" BackColor="#4cb7a5" Text="My Dashboard" ForeColor="#ffffff" Height="44px" OnClick="dash"></asp:Button>
                              <asp:Button ID="Button1" runat="server" BackColor="#4cb7a5" Text="LogOut" ForeColor="#ffffff" Height="44px" OnClick="log"></asp:Button>
				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
               
              <div class="container" style="padding:10%;align:left;" >
               <div class="form-action">
                    
               </div>
                <div class="row">
                    <%--<asp:RadioButtonList ID="AddressChoice" runat="server" enabled="true"  AutoPostBack="true"  OnSelectedIndexChanged="addressChange">
                        <asp:ListItem Text="Use Default" Value="0"></asp:ListItem>
                        <asp:ListItem  Text="Enter New" Value="1" ></asp:ListItem>
                    </asp:RadioButtonList>
           --%>
               <div>
                    
                    
                    
                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
              <asp:Table ID="Table1" runat="server" align="center" valign="center" >
                
                <asp:TableRow ID="TableRow2" runat="Server" >
                    <asp:TableCell ID="TableCell4" runat="Server"  Width="502px" >
                        <div class="form-group">
                                    <asp:TextBox runat="server"  class="form-control br-radius-zero" name="Address" Rows=3 id="address" placeholder="Enter Address"  />
                              
                          </div>       
                    </asp:TableCell>
                    </asp:TableRow>  
                     <asp:TableRow ID="TableRow21" runat="Server" >
                    <asp:TableCell ID="TableCell7" runat="Server">
                           <div class="form-group">
                                    <asp:TextBox runat="server"  class="form-control br-radius-zero" name="Phone Number" id="phoneNumber" placeholder="Phone Number" data-rule="len=10" data-msg="Please enter a valid phone number" />
                                    <div class="validation"></div>
                           </div>
                  </asp:TableCell>
               </asp:TableRow>  
               <asp:TableRow ID="TableRow10" runat="Server">
                    <asp:TableCell ID="TableCell10" runat="Server" >
                        <div class="form-action">
									<asp:Button ID="submit" runat="server" Text="Confirm Details"   class="btn btn-form" style="margin-left:25%" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff" onClick="submitAddress"/>
                                    <asp:Button ID="edit" runat="server" Text="Edit Details" class="btn btn-form" OnClick="editAddress" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff" style="margin-left:5%" />
						</div>
                  
                  </asp:TableCell>
              
                </asp:TableRow>
                 <asp:TableRow ID="TableRow1" runat="Server" >
                    <asp:TableCell ID="TableCell1" runat="Server">
                           <div class="form-group">
                                    <asp:Label runat="server"  class="form-control br-radius-zero" name="Sum" id="l1"  data-rule="len=10" data-msg="Please enter a valid phone number" />
                                    <div class="validation"></div>
                           </div>
                  </asp:TableCell>
               </asp:TableRow>  
         </asp:Table>
                </asp:Panel>
                   <asp:Button ID="placeorder" runat="server" Text="PLACE ORDER" OnClick="place"  class="btn btn-form" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff" visible="false" style=" margin-left:42%;margin-top:5%"></asp:Button>



               </div>
                </div>
               
            
              </div>
              </div></section>
              </div>
              </form>
</body>
</html>