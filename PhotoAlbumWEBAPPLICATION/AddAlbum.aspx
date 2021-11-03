<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAlbum.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.AssAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel ="stylesheet" type="text/css" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Add Albums<br />
            <br />
            Enter Name of Album<asp:TextBox ID="TextBox1" runat="server" CssClass="simple-tb"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="example_b" />
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
