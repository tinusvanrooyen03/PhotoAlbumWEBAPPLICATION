<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUserPhotos.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.ViewUserPhotos" %>

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
            text-align: center;
            margin-left: 533px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div>
            All user Photos<br />
            <br />
        <asp:GridView ID="Gridview1" runat="server" CssClass="grid1" HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Width="500px" style="margin-left: 424px" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# "Handler1.ashx?id_Image="+ Eval("PhotoID") %>' Width="600px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Button" />
            </Columns>

<HeaderStyle BackColor="#7779AF" ForeColor="White"></HeaderStyle>
        </asp:GridView>
        </div>
        </div>
        <p class="auto-style1">
            Add to Album</p>
        <p class="auto-style2">
            <asp:GridView ID="GridView2" runat="server" CssClass="btn">
            </asp:GridView>
        </p>
    </form>
</body>
</html>
