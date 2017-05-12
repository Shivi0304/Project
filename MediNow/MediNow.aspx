<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MediNow.aspx.cs" Inherits="MediNow" %>

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
<body  id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form1" runat="server">
    <div>
    	<!--banner-->
	<section id="banner" class="banner">
		<div class="bg-color1">
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
				        <li class="active"><a href="~/MediNow.aspx">Home</a></li>
				  
                           <li class=""><a href="#service">service</a></li>
       
				    
				        <li class=""><a href="#contact">Feedback</a></li>
                        <asp:Button ID="Button1" runat="server" BackColor="#4cb7a5" Text="LogOut" ForeColor="#ffffff" Height="44px" OnClick="ev"></asp:Button>
                         
                        
                      </ul>
				    </div>
                     
				</div>
			  </div>
			</nav>
			<div class="container">
				<div class="row">
					<div class="banner-info">
						<div class="banner-logo text-center">
							<img src="img/newlogo.png" class="img-responsive">
						</div>
						<div class="banner-text text-center">
							<h1 class="white">Healthcare at your desk!!</h1>
						
						</div>
						<div class="overlay-detail text-center">
			               <a href="#service"><i class="fa fa-angle-down"></i></a>
			             </div>		
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ banner-->
	<!--service-->
	<section id="service" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<h2 class="ser-title">Our Services</h2>
					<hr class="botm-line">
					<p>Instant medical assistance at any point of time at your doorstep.</p>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="service-info">
						<div class="icon">
							<i class="fa fa-stethoscope"></i>
						</div>
						<div class="icon-info">
					<asp:HyperLink ID="h1" runat="server" NavigateUrl="~/EnterSymptoms.aspx">		<h4>Place Order</h4></asp:HyperLink>
                    		<p>Select required medicine and get it delivered.</p>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CancelOrder.aspx">		<h4>Cancel Order</h4></asp:HyperLink>
							<p>Cancel the order placed.</p>
						</div>
					</div>
					<div class="service-info">
						<div class="icon">
							<i class="fa fa-ambulance"></i>
						</div>
						<div class="icon-info">
							<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TrackOrder.aspx">			<h4>Track order</h4></asp:HyperLink>
							<p>Get to know the status of your order.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="service-info">
						<div class="icon">
							<i class="fa fa-user-md"></i>
						</div>
						<div class="icon-info">
					<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Chat.aspx">				<h4>Medical Counseling</h4></asp:HyperLink>
							<p>Online chat with our panel of doctors.</p>
						</div>
					</div>
					<div class="service-info">
						<div class="icon">
							<i class="fa fa-medkit"></i>
						</div>
						<div class="icon-info">
						<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/userDashboard.aspx">			<h4>Dash board</h4></asp:HyperLink>
							<p>Have a look at all your orders.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ service-->
	
	
		<!--doctor team-->
	<section id="doctor-team" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="ser-title">Meet Our Doctors!</h2>
					<hr class="botm-line">
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
			      <div class="thumbnail"> 
			      	<img src="img/doctor1.jpg" alt="..." class="team-img">
			        <div class="caption">
			          <h3>Dr. Julia Robert</h3>
			          <p>Doctor<br>
                         email id: julia@gmail.com<br>
                         contact no:9878675467</p>
			          <ul class="list-inline">
			            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
			            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
			            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			          </ul>
			        </div>
			      </div>
			    </div>
			    <div class="col-md-3 col-sm-3 col-xs-6">
			      <div class="thumbnail"> 
			      	<img src="img/doctor2.jpg" alt="..." class="team-img">
			        <div class="caption">
			          <h3>Dr. Jon Brown</h3>
			          <p>Doctor<br>
                      email id: brown@gmail.com<br>
                         contact no:9879975467</p>
			          <ul class="list-inline">
			            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
			            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
			            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			          </ul>
			        </div>
			      </div>
			    </div>
			    <div class="col-md-3 col-sm-3 col-xs-6">
			      <div class="thumbnail"> 
			      	<img src="img/doctor3.jpg" alt="..." class="team-img">
			        <div class="caption">
			          <h3>Dr. Ashley Hudson</h3>
			          <p>Doctor<br>
                      email id: hudsonash@gmail.com<br>
                         contact no:987997890</p>
			          <ul class="list-inline">
			          <ul class="list-inline">
			            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
			            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
			            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			          </ul>
			        </div>
			      </div>
			    </div>
			    <div class="col-md-3 col-sm-3 col-xs-6">
			      <div class="thumbnail"> 
			      	<img src="img/doctor4.jpg" alt="..." class="team-img">
			        <div class="caption">
			          <h3>Phunsuk Wyangdu 
                      </h3>
			          <p>Doctor<br>
                      email id: virus@gmail.com<br>
                         contact no:9908975467</p>
			          <ul class="list-inline">
			          <ul class="list-inline">
			            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
			            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
			            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			          </ul>
			        </div>
			      </div>
			    </div></div>
                
			    </div>
	</section>
	<!--/ doctor team-->
	
	
	<!--cta 2-->
	<section id="cta-2" class="section-padding">
		<div class="container">
			<div class=" row">
				<div class="col-md-2"></div>
	            <div class="text-right-md col-md-4 col-sm-4">
	              <h2 class="section-title white lg-line">« A few words<br> about us »</h2>
	            </div>
	            <div class="col-md-4 col-sm-5">
	               We at MediNow aim at providing quality services to our customers.It is the right platform if you are in an emergency and you need instant medical assistance.
	              <p class="text-right text-primary"><i>—Team MediNow</i></p>
	            </div>
	            <div class="col-md-2"></div>
	        </div>
		</div>
	</section>
	<!--cta-->
	<!--contact-->
	<section id="contact" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="ser-title">Contact us</h2>
					<hr class="botm-line">
				</div>
				<div class="col-md-4 col-sm-4">
			      <h3>Contact Info</h3>
			    
			      <p><i class="fa fa-envelope-o fa-fw pull-left fa-2x"></i>medinow.app@gmail.com</p>
			      <div class="space"></div>
			      <p><i class="fa fa-phone fa-fw pull-left fa-2x"></i>+91 977 666 1795</p>
			    </div>
				<div class="col-md-8 col-sm-8 marb20">
					<div class="contact-info">
							<h3 class="cnt-ttl">Feedback</h3>
							<div class="space"></div>
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>
							<form action="" method="post" role="form" class="contactForm">
							    <div class="form-group">
                                    <asp:TextBox runat="server" input type="text" name="name" class="form-control br-radius-zero" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" input type="email" class="form-control br-radius-zero" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" input type="text" class="form-control br-radius-zero" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="message" runat="server" class="form-control br-radius-zero"  TextMode="MultiLine"  data-rule="required" data-msg="Please write something for us" placeholder="Message"/>
                                    <div class="validation"></div>
                                </div>
                                
								<div class="form-action">
									<asp:Button ID="submit" runat="server" Text="Send Message" OnClick="sendfeedback" class="btn btn-form"/>
								</div>
							</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ contact-->
	<!--footer-->
	<footer id="footer">
		<div class="top-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4 marb20">
							<div class="ftr-tle">
								<h4 class="white no-padding">About Us</h4>
							</div>
							<div class="info-sec">
								<p>Praesent convallis tortor et enim laoreet, vel consectetur purus latoque penatibus et dis parturient.</p>
							</div>
					</div>
					<div class="col-md-4 col-sm-4 marb20">
						<div class="ftr-tle">
							<h4 class="white no-padding">Quick Links</h4>
						</div>
						<div class="info-sec">
							<ul class="quick-info">
								<li><a href="index.html"><i class="fa fa-circle"></i>Home</a></li>
								<li><a href="#service"><i class="fa fa-circle"></i>Service</a></li>
								<li><a href="#contact"><i class="fa fa-circle"></i>Appointment</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 marb20">
						<div class="ftr-tle">
							<h4 class="white no-padding">Follow us</h4>
						</div>
						<div class="info-sec">
							<ul class="social-icon">
								<li class="bglight-blue"><i class="fa fa-facebook"></i></li>
								<li class="bgred"><i class="fa fa-google-plus"></i></li>
								<li class="bgdark-blue"><i class="fa fa-linkedin"></i></li>
								<li class="bglight-blue"><i class="fa fa-twitter"></i></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-line">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						© Copyright Medilab Theme. All Rights Reserved
                        <div class="credits">
                            <!-- 
                                All the links in the footer should remain intact. 
                                You can delete the links only if you purchased the pro version.
                                Licensing information: https://bootstrapmade.com/license/
                                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Medilab
                            -->
                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--/ footer-->
    
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>
    
  </body>
    </div>
    </form>
</body>
</html>
