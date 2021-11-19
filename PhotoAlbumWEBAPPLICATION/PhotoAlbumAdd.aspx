<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbumAdd.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.PhotoAlbumAdd" %>

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
        <br />
        Select Photo<asp:DropDownList ID="DropDownList2" runat="server" CssClass="simple-tb" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>

            <br />
            <br />

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
            <div class="auto-style1">
        <br />
        Select Album<asp:DropDownList ID="DropDownList3" runat="server" CssClass="simple-tb">
                </asp:DropDownList>
        <br />
        <br />
            </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="example_b" />
        </div>
        <p class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>

    </body>
</html>
