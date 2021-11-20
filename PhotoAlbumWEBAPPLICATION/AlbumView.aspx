<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlbumView.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.AlbumView" %>

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
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="auto-style1">

        <div class="auto-style1">

            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="View Album"></asp:Label>

            <br />
            <br />
        Select Album
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="simple-tb">
            </asp:DropDownList>
            <br />
            <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" CssClass="example_b" />
            <br />
            <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />

    <asp:GridView ID="Gridview1" runat="server" CssClass="auto-style2" HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Width="500px" BorderStyle="Solid" ForeColor="Black" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" style="margin-right: 241px" HorizontalAlign="Center">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# "Handler1.ashx?id_Image="+ Eval("PhotoID") %>' Width="600px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            <div>
                <br />
        <br />
                <asp:Button ID="Button2" runat="server" CssClass="example_b" OnClick="Button2_Click1" Text="Main Menu" />
        <br />
        <br />
            </div>
        <br />
        <br />
        <br />
        <p>
            &nbsp;</p>
        </div>
        </div>
    </form>

    </body>
</html>
