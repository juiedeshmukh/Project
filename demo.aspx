<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
            Text="Submit" />
    
        <br />
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    
    </div>
    <br />
    </form>
</body>
</html>
