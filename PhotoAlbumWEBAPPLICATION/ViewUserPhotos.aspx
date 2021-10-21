<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUserPhotos.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.ViewUserPhotos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel ="stylesheet" type="text/css" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:GridView ID="Gridview1" runat="server" CssClass="grid1" HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Width="500px">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# "Handler1.ashx?id_Image="+ Eval("PhotoID") %>' Width="600px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
    </form>
</body>
</html>
