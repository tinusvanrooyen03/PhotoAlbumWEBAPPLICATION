<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.WebForm1" %>

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
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Register" Font-Size="XX-Large"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter your first name:"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="simple-tb"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter A Value" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Enter your last name:"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server" CssClass="simple-tb"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter A Value" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Enter username:"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="simple-tb" OnTextChanged="txtUsername_TextChanged" style="margin-left: 39px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter A Value" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Enter password:"></asp:Label>
            <asp:TextBox ID="txtPass1" runat="server" CssClass="simple-tb" style="margin-left: 35px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter A Value" ControlToValidate="txtPass1"></asp:RequiredFieldValidator>
        </p>
        <p>
            Re-enter password:<asp:TextBox ID="txtPass2" runat="server" CssClass="simple-tb" OnTextChanged="txtPass2_TextChanged" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter A Value" ControlToValidate="txtPass2"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Width="125px" CssClass="example_b" />
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" Width="125px" CssClass="example_b" />
        </p>
        <p>
            <asp:Label ID="lblErr" runat="server" ForeColor="#FF3300" Text="Password must atleast be 8 characters and must contain upper and lower case letters, a numerical value and a special character"></asp:Label>
        </p>
        </div>
    </form>
</body>
</html>
