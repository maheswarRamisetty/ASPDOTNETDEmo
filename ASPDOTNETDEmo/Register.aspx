<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ASPDOTNETDEmo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label runat="server" Text="Enter a Name" ID="Label1"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" />

   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" /><br /><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label runat="server" Text="Enter an Email" ID="Label2"/>
     <asp:TextBox ID="TextBox2" runat="server" />
    <br /><br/>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label runat="server" Text="Enter a phonenumber" ID="Label3" />
     <asp:TextBox ID="TextBox3" runat="server" />
       <br /><br/>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
     <asp:Label runat="server" Text="Enter Password" ID="Label4" />
        <asp:TextBox ID="TextBox4" runat="server"  TextMode="Password" />
    <br /><br/>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       <asp:Label runat="server" Text="Enter Confirm Password" ID="Label5" />
<asp:TextBox ID="TextBox5" runat="server" TextMode="Password"  />
  <br /><br/>
   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Button ID="Button1" runat="server"  Text="Register" OnClick="Button1_Click"/>
    </form>
</body>
</html>
