<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbumAdd.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.PhotoAlbumAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        Select Photo<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

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
        Select Album<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>

    </body>
</html>
