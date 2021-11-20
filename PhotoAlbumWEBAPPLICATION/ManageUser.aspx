<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.ManageUser" %>

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
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Manage Your Account"></asp:Label>
            <br />
            <br />
            FirstName<asp:TextBox ID="TextBox1" runat="server" CssClass="simple-tb"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            Lastname
            <asp:TextBox ID="TextBox2" runat="server" CssClass="simple-tb"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            Username<asp:TextBox ID="TextBox3" runat="server" CssClass="simple-tb"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            Password<asp:TextBox ID="TextBox4" runat="server" CssClass="simple-tb" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update User" CssClass="example_b" />
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete User" CssClass="example_b" />
        </p>
            <p>
                <asp:Button ID="Button3" runat="server" CssClass="example_b" OnClick="Button3_Click" Text="Main Menu" />
        </p>
        </div>
        <p class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
