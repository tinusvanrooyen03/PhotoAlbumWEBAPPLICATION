<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePhotos.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.ManagePhotos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel ="stylesheet" type="text/css" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style7 {
            color: white;
            width: 200px;
            height: 35px;
            border-radius: 5px;
            transition-property: background-color,border-radius,width,height,color;
            transition-duration: 0.215s;
            transition-delay: 0.215s;
            text-align: center;
            float: none;
            border-bottom: 1px solid blue;
            font-family: 'Raleway', sans-serif;
            background-color: transparent;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            margin-left: 111px;
        }
        .auto-style8 {
            color: white;
            width: 200px;
            height: 35px;
            border-radius: 5px;
            transition-property: background-color,border-radius,width,height,color;
            transition-duration: 0.215s;
            transition-delay: 0.215s;
            text-align: center;
            float: none;
            border-bottom: 1px solid blue;
            font-family: 'Raleway', sans-serif;
            background-color: transparent;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            margin-left: 28px;
        }
        .auto-style9 {
            color: white;
            width: 200px;
            height: 35px;
            border-radius: 5px;
            transition-property: background-color,border-radius,width,height,color;
            transition-duration: 0.215s;
            transition-delay: 0.215s;
            text-align: center;
            float: none;
            border-bottom: 1px solid blue;
            font-family: 'Raleway', sans-serif;
            background-color: transparent;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            margin-left: 11px;
        }
        .auto-style10 {
            color: white;
            width: 200px;
            height: 35px;
            border-radius: 5px;
            transition-property: background-color,border-radius,width,height,color;
            transition-duration: 0.215s;
            transition-delay: 0.215s;
            text-align: center;
            float: none;
            border-bottom: 1px solid blue;
            font-family: 'Raleway', sans-serif;
            background-color: transparent;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            margin-left: 38px;
        }
        .auto-style11 {
            color: white;
            width: 200px;
            height: 35px;
            border-radius: 5px;
            transition-property: background-color,border-radius,width,height,color;
            transition-duration: 0.215s;
            transition-delay: 0.215s;
            text-align: center;
            float: none;
            border-bottom: 1px solid blue;
            font-family: 'Raleway', sans-serif;
            background-color: transparent;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Manage Photos"></asp:Label>
            <br />
            <br />
        </div>
            Select a photo:&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style11">
            </asp:DropDownList>
            <br />
            <br />
            Photo Name:
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a Value"></asp:RequiredFieldValidator>
            <br />
            <br />
            Captured Date:
            <asp:TextBox ID="TextBox2" runat="server" type ="date" CssClass="simple-tb"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            <br />
            Geolocation:<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style8"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            <br />
            Tags:<asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            <br />
            Captured By:<asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter A Value"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Update" CssClass="example_b" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="example_b" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="example_b" OnClick="Button3_Click" Text="Main Menu" />
        </div>
    </form>
</body>
</html>
