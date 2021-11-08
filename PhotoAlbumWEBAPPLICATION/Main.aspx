<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.Main" %>

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
            margin-left: 109px;
        }
        .auto-style3 {
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
            margin-left: 24px;
        }
        .auto-style4 {
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
            margin-left: 2px;
        }
        .auto-style5 {
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
            margin-left: 59px;
        }
        .auto-style6 {
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
            margin-left: 9px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
    <p class="auto-style1">
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Upload And Send Photos"></asp:Label>
            </p>
        <p class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Captured Date: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Captured By: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="Geo Location"></asp:Label>
            :&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6"></asp:TextBox>
        </p>
        <p class="auto-style1">
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Tags:     "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
        <p class="auto-style1">
            &nbsp;<asp:Label ID="Label6" runat="server" Text="User ID:       "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style5" ForeColor="Black">
            </asp:DropDownList>
        </p>
        <p class="auto-style1">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="example_b" />
            </p>
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="btnUpload" CssClass="example_b" />
        <br />
        <asp:Label ID="lblEvent" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <div>
            </div>
        </div>
    </form>
    </body>
</html>
