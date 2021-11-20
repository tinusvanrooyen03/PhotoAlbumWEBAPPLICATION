<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAlbums.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.ManageAlbums" %>

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
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Manage Albums"></asp:Label>
            <br />
            <br />
            Select Album: <asp:DropDownList ID="DropDownList1" runat="server" CssClass="simple-tb">
            </asp:DropDownList>
            <br />
            <br />
            Album Name:
            <asp:TextBox ID="TextBox1" runat="server" CssClass="simple-tb"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update " CssClass="example_b" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Delete " CssClass="example_b" OnClick="Button2_Click" />
            <br />
            <br />
        </div>
            <asp:Button ID="Button3" runat="server" CssClass="example_b" OnClick="Button3_Click" Text="Main Menu" />
        </div>
    </form>
</body>
</html>
