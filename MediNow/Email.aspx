<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Email" Async="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <asp:Label ID="Label2" runat="server" Text="In process"></asp:Label>
    </div>
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      <br /> 
      <asp:TextBox
      ID="TextBox1" runat="server"></asp:TextBox>
    </form>
</body>
</html>
