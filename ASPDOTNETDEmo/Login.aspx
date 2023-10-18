

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPDOTNETDEmo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frm1" runat="server">
        <asp:Label runat="server" Text="Enter a Name" ID="Label1" />
<asp:TextBox ID="TextBox1" runat="server" />
    <br />
    <br />
    
        <asp:Label runat="server" Text="Enter Password" ID="Label2" />
<asp:TextBox ID="TextBox2" TextMode="Password" runat="server" />

    <br /><br />
    <asp:Button ID="Button2" runat="server"  Text="Login"  OnClick="Button2_Click1"/>
    </form>
</body>
</html>


