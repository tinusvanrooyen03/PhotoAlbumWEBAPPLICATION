<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PhotoAlbumWEBAPPLICATION.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        Add And view a photo</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="btnUpload" />
        <asp:Label ID="lblEvent" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="Gridview1" runat="server" CssClass="Gridview" HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Width="500px">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# "Handler1.ashx?id_Image="+ Eval("PhotoID") %>' Width="600px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
    </body>
</html>
