<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopdetails.aspx.cs" Inherits="Shopdetails" %>

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
                <table align="center" valign="center" style="margin-top:160px;">
                <tr>
                <td>
      <center>  <asp:Label ID="L1" runat="server" Columns="40"  Height="30px" Font-Size="20px"  Text="Enter Shop Details" Font-Bold="true" ForeColor="#ffffff" ></asp:Label></center> </td></tr>
                  <tr>
                <td>
         <asp:TextBox ID="TextBox2" runat="server" Columns="40" Height="50px" placeholder="Enter Shop Name" ></asp:TextBox></td></tr>
           <tr>
                <td>
         <asp:TextBox ID="TextBox3" runat="server" Columns="40" Height="50px" placeholder="Enter Pincode" ></asp:TextBox></td></tr>
         <tr>
         <td align="center"><asp:Button ID="Button1" runat="server" Text="UPDATE"  Font-Size="20px" BackColor="#4cb7a5" ForeColor="#ffffff"  Font-Bold="true" Height="50px" Width="120px" OnClick="update"></asp:Button></td></tr>
                </table>
			  </div>
              	
			</nav>
		
		</div>
	</section>
	<!--/ banner-->
    </div>
    </form>
</body>
</html>
