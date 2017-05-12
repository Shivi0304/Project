

















































<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Chat" %>

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
				         <asp:Button ID="Button6" runat="server" BackColor="#4cb7a5" Text="Home" ForeColor="#ffffff" Height="44px" OnClick="h"></asp:Button>
				   
				      
				        <asp:Button ID="Button2" runat="server" BackColor="#4cb7a5" Text="Place Order" ForeColor="#ffffff" Height="44px" OnClick="ev"></asp:Button>
                          <asp:Button ID="Button3" runat="server" BackColor="#4cb7a5" Text="Track Order" ForeColor="#ffffff" Height="44px" OnClick="tr"></asp:Button>
                            <asp:Button ID="Button4" runat="server" BackColor="#4cb7a5" Text="Cancel Order" ForeColor="#ffffff" Height="44px" OnClick="chat"></asp:Button>
                             <asp:Button ID="Button5" runat="server" BackColor="#4cb7a5" Text="My Dashboard" ForeColor="#ffffff" Height="44px" OnClick="dash"></asp:Button>
                              <asp:Button ID="Button7" runat="server" BackColor="#4cb7a5" Text="LogOut" ForeColor="#ffffff" Height="44px" OnClick="log"></asp:Button>
				      </ul>
				    </div>
				</div>
			  </div>
               
   <div  ><div  style="padding-top:5%; padding-left:35%; padding-right: 35%;">
   <asp:textbox ID="txtchat" TextMode="MultiLine" runat="server" Width="100%" Font-Size="18px" ></asp:textbox>
    </div>
    <div style="padding-top:1%; padding-left:35%; padding-right: 15%;">
    <asp:Label ID="Label1" runat="server" Text="Nickname" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"></asp:Label>
       <asp:TextBox ID="txtnickname" runat="server" Width="50%" Font-Size="20px"></asp:TextBox>
    </div>
     <div style="padding-top:1%; padding-left:35%; padding-right: 15%;">
    <asp:Label ID="Label2" runat="server" Text="Message" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"></asp:Label>
       <asp:TextBox ID="txtmessage" runat="server" Width="50%" Font-Size="20px"></asp:TextBox>
    </div>
    <div style="padding-top:1%; padding-left:35%; padding-right: 15%;">
 <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" style="margin-left:150px" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff"   Visible=true class="btn btn-form" />
    </div></div> 
			</nav></div></div>
   
 
    </form>
</body>
</html>
