<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

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
				      <a class="navbar-brand" href="#"><img src="img/newlogo.png" class="img-responsive" style="width: 250px; margin-top: -16px;"></a>
				    </div>
				    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
				      <ul class="nav navbar-nav">
                           <asp:Button ID="Button2" runat="server" BackColor="#4cb7a5" Text="Home" ForeColor="#ffffff" Height="44px" OnClick="h"></asp:Button>
                          <asp:Button ID="Button3" runat="server" BackColor="#4cb7a5" Text="LogOut" ForeColor="#ffffff" Height="44px" OnClick="log"></asp:Button>
				     
				      </ul>
				    </div>
                       
				</div>
               
			  </div>
            
        </div>
        
			</nav>
         
    <center>
<asp:GridView ID="gv" runat="server" 
            AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4"
            ForeColor="#333333" GridLines="Both" 
            style="margin-top:50px"
            EmptyDataText="no data present " Font-Bold="True" Font-Size="16px"  >

        <AlternatingRowStyle BackColor="White" BorderStyle="Ridge" />

        <Columns>
           
         <asp:BoundField DataField="SID" HeaderText="SID" 
                SortExpression="MedicineName" ControlStyle-CssClass="col-xs-push-12" ItemStyle-Width="50" />
         <asp:BoundField DataField="OrderID" HeaderText="Order_ID" 
                SortExpression="Symptom" ItemStyle-Width="120" />
                 <asp:BoundField DataField="Item" HeaderText="Item" 
                SortExpression="Disease" ItemStyle-Width="50" />
                      <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Disease" ItemStyle-Width="80" />
                      <asp:BoundField DataField="Price_Per_Quantity" HeaderText="Price" 
                SortExpression="Disease" ItemStyle-Width="100" />
                      <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" 
                SortExpression="Disease" ItemStyle-Width="160"/>
                 <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Disease" ItemStyle-Width="150" />
                 <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" 
                SortExpression="Disease" ItemStyle-Width="50" />
              
           
        </Columns>
       <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4cb7a5" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    </center>
    </div>
    </form>
</body>
</html>
