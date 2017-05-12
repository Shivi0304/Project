<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShopkeeperDashboard.aspx.cs" Inherits="ShopkeeperDashboard" %>

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
				      <a class="navbar-brand" href="#"><img src="img/newlogo.png" class="img-responsive" style="width: 250px; margin-top: -16px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
				      <ul class="nav navbar-nav">
				     <asp:Button ID="Button3" runat="server" BackColor="#4cb7a5" Text="LogOut" Font-Bold=true ForeColor="#ffffff" Height="44px" OnClick="log"></asp:Button>
				      </ul>
				    </div>
				</div>
			  </div>
			</nav>
              <div class="container" style="padding:10%;align:left;" >
            <div class="form-action">
									<asp:Button ID="AddItem" runat="server" Text="Add Item" class="btn btn-form" OnClick="additem" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff" />
                                    
                                         

                                    <asp:Button ID="DeleteItem" runat="server" Text="Delete Item" class="btn btn-form" OnClick="delete" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"/>

                                    <asp:Button ID="UpdateItem" runat="server" Text="Update Item" class="btn btn-form" OnClick="update" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"/>
                                     <asp:Button ID="Button1" runat="server" Text="View Order" class="btn btn-form" OnClick="viewOrder" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"/>
                                    
			</div>

            <div style="align:bottom;padding-top:20px;">
                 <asp:TextBox ID="medicine_name" runat="server" Visible=false placeholder="Enter Medicine Name" Height="30px"></asp:TextBox>
                                          <asp:TextBox ID="quantity" runat="server" Visible=false placeholder="Enter Quantity" Height="30px"></asp:TextBox>
                                          <asp:TextBox ID="price" runat="server" Visible=false placeholder="Enter Price" Height="30px"></asp:TextBox>
                                      

                                     
                                      <asp:Button ID="add" runat="server" Text="ADD ITEM" Visible=false OnClick="add1" class="btn btn-form" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"></asp:Button>
                                      <asp:Button ID="cancel" runat="server" Text="CANCEL" Visible=false OnClick="cancel1" class="btn btn-form" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"></asp:Button>

            </div>
          </div>
            </div></section>
  
    
</div>
    </form>
</body>
</html>
