<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel ="stylesheet" type="text/css" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body style="height: 32px">
    <form id="form1" runat="server">
        <p class="auto-style1">
            <img alt="" class="auto-style2" src="Images/56aadb196de34027aa0e84f12487b296%20(1).png" /></p>
        <p class="auto-style1">
            Login</p>
        <p class="auto-style1">
            Username:
            <asp:TextBox ID="txtUsername" runat="server" CssClass="simple-tb"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Password:<asp:TextBox ID="txtPassword" runat="server" CssClass="simple-tb"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click1" CssClass="example_b" />
            <asp:Button ID="Button1" runat="server" CssClass="example_b" Text="Register" OnClick="Button1_Click" />
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
    </body>
</html>
