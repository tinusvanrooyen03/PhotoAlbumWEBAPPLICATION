<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel ="stylesheet" type="text/css" href="StyleSheet1.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Register" CssClass="simple-tb"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter your first name:" CssClass="simple-tb"></asp:Label>
        </p>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="simple-tb"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Enter your last name:" CssClass="simple-tb"></asp:Label>
        </p>
        <asp:TextBox ID="txtLastName" runat="server" CssClass="simple-tb"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Enter username:" CssClass="simple-tb"></asp:Label>
        </p>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="simple-tb"></asp:TextBox>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Enter password:" CssClass="simple-tb"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtPass1" runat="server" CssClass="simple-tb"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Re-enter password:" CssClass="simple-tb"></asp:Label>
        </p>
        <asp:TextBox ID="txtPass2" runat="server" CssClass="simple-tb"></asp:TextBox>
        <p>
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Width="125px" CssClass="example_b" />
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" Width="125px" CssClass="example_b" />
        </p>
        <p>
            <asp:Label ID="lblErr" runat="server" ForeColor="#FF3300" Text="Password must atleast be 8 characters and must contain upper and lower case letters, a numerical value and a special character"></asp:Label>
        </p>
    </form>
</body>
</html>
