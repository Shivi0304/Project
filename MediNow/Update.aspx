<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

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
    <div class="bg1-color">
			<nav class="navbar navbar-default navbar-fixed-top">
			  <div class="container">
			  	<div class="col-md-12">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#"><img src="img/me.png" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
				      <ul class="nav navbar-nav">
				        <li class="active"><a href="#banner">Home</a></li>
				        <li class=""><a href="#service">Services</a></li>
				        <li class=""><a href="#about">About</a></li>
				        <li class=""><a href="#testimonial">Testimonial</a></li>
				        <li class=""><a href="#contact">Feedback</a></li>
                         <li class=""><a href="#contact">LogOut</a></li>
				      </ul>
				    </div>
                       
				</div>
               
			  </div>
            
        </div>
        
			</nav>
	
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"  
           >

        <Columns>
                <asp:templatefield HeaderText="Select Shop">
            <itemtemplate>
                <asp:checkbox ID="cbSelect" GroupName="abc" CssClass="gridCB" runat="server" style="margin-left:20px;"></asp:checkbox>
            </itemtemplate>
        </asp:templatefield>
         <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" 
                SortExpression="MedicineName" />
         <asp:BoundField DataField="Quantity" HeaderText="Quantity Available" 
                SortExpression="Symptom" />
                 <asp:BoundField DataField="Price" HeaderText="Price Per Tablet" 
                SortExpression="Disease" />
                   <asp:BoundField DataField="ShopName" HeaderText="Shop Name" 
                SortExpression="Disease" />
                  <asp:BoundField DataField="Pincode" HeaderText="Price Per Tablet" 
                SortExpression="Disease" />
                
              
           
        </Columns>
    </asp:GridView>
    </div>
        <asp:Button ID="continue" runat="server" Text="Update" class="btn btn-form" style="margin-left:42%;margin-top:5%" OnClick="up" ></asp:Button>
    </form>
</body>
</html>
