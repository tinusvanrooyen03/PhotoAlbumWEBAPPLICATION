<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 32px">
    <form id="form1" runat="server">
        <p>
            ASP.NET PHOTO ALBUM LOGIN</p>
        <p>
            Username:
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </p>
        <p>
            Password:<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
    </body>
</html>
