<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SymptomMedicine.aspx.cs" Inherits="SymptomMedicine" %>

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
            
        </div>
        
			</nav>
	<div>
    <center>
  <asp:GridView ID="gv" runat="server" 

            AutoGenerateColumns="False" CellPadding="4"
            ForeColor="#333333" GridLines="Both" 
            style="margin-top:50px"
            EmptyDataText="no data present " Font-Bold="True" Font-Size="16px"  >

        <AlternatingRowStyle BackColor="White" BorderStyle="Ridge" />


        <Columns>
                <asp:templatefield HeaderText="Select Medicine">
            <itemtemplate>
                <asp:checkbox ID="cbSelect" GroupName="abc" CssClass="gridCB" runat="server" style="margin-left:20px"></asp:checkbox>
            </itemtemplate>
        </asp:templatefield>
         <asp:BoundField DataField="Medicine" HeaderText="MedicineName" 
                SortExpression="MedicineName" ItemStyle-Width="120" />
         <asp:BoundField DataField="Symptom" HeaderText="Symptom" 
                SortExpression="Symptom" ItemStyle-Width="120" />
                 <asp:BoundField DataField="D_Name" HeaderText="Disease" 
                SortExpression="Disease" ItemStyle-Width="120"  />
              
           
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
    </div>
<asp:Button ID="continue" runat="server" Text="CONTINUE" class="btn btn-form" style="margin-left:42%;margin-top:5%" OnClick="con" Font-Bold="true" Font-Size="20px" ForeColor="#ffffff" ></asp:Button>
    </form>
</body>
</html>
