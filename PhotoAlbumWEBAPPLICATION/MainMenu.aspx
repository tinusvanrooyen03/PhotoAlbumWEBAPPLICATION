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
        .auto-style3 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            color: #fff;
            text-transform: uppercase;
            text-decoration: none;
            background: #60a3bc;
            padding: 20px;
            border-radius: 50px;
            display: inline-block;
            transition: all 0.4s ease 0s;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Main Menu"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="example_b" OnClick="Button1_Click" Text="View Your Photos" Width="252px" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="example_b" OnClick="Button2_Click" Text="Send Photos" Width="254px" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="example_b" Text="Add Albums" OnClick="Button3_Click" Width="249px" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" CssClass="example_b" OnClick="Button4_Click" Text="Add Photos To Album" Width="255px" />
            <br />
            <br />
        </div>
            </div>
            <asp:Button ID="Button5" runat="server" CssClass="example_b" OnClick="Button5_Click" Text="View Albums" Height="65px" Width="259px" />
        </div>
        <p class="auto-style1">
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Manage Account" CssClass="example_b" />
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button7" runat="server" CssClass="example_b" Text="Manage Albums" Width="256px" />
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button8" runat="server" CssClass="example_b" Text="Manage Photos" Width="262px" />
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
