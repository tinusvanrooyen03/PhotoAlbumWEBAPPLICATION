<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.MainMenu" %>

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
            <div class="auto-style1">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Main Menu"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="example_b" OnClick="Button1_Click" Text="View Your Photos" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="example_b" OnClick="Button2_Click" Text="Send Photos" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="example_b" Text="Add Albums" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" CssClass="example_b" OnClick="Button4_Click" Text="Add Photos To Album" />
            <br />
            <br />
        </div>
            </div>
            <asp:Button ID="Button5" runat="server" CssClass="example_b" OnClick="Button5_Click" Text="View Albums" />
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
