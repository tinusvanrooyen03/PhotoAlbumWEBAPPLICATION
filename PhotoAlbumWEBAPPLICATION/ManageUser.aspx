<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.ManageUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </div>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <p>
            <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" />
        </p>
        <asp:Label ID="lblUID" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
