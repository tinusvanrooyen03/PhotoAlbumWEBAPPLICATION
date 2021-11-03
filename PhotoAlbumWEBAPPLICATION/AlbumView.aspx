<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlbumView.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.AlbumView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel ="stylesheet" type="text/css" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">

    <asp:GridView ID="Gridview1" runat="server" CssClass="auto-style2" HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Width="500px" BorderStyle="Solid" ForeColor="Black" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" style="margin-right: 241px">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# "Handler1.ashx?id_Image="+ Eval("PhotoID") %>' Width="600px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        Select Album<asp:TextBox ID="TextBox2" runat="server" CssClass="simple-tb" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" CssClass="example_b" />
        <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>

    </body>
</html>
