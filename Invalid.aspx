<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invalid.aspx.cs" Inherits="Invalid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <center>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" 
                Font-Size="X-Large" ForeColor="#FF3300" Text="You Are Session Expired !"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Click here to Login</asp:HyperLink>
        </div>
    </center>
    </form>
  
</body>
</html>
