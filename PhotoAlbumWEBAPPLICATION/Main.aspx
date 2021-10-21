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
            margin-left: 392px;
            margin-right: auto;
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
            Captured Date: <asp:TextBox ID="TextBox1" runat="server" CssClass="simple-tb"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Captured By:
            <asp:TextBox ID="TextBox2" runat="server" CssClass="simple-tb"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Geo Lccation:
            <asp:TextBox ID="TextBox3" runat="server" CssClass="simple-tb"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Tags:
            <asp:TextBox ID="TextBox4" runat="server" CssClass="simple-tb"></asp:TextBox>
        </p>
        <p class="auto-style1">
            UserID:
            <asp:TextBox ID="TextBox5" runat="server" CssClass="simple-tb"></asp:TextBox>
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
        <asp:GridView ID="Gridview1" runat="server" CssClass="auto-style2" HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Width="500px" BorderStyle="Solid" ForeColor="Black" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" style="margin-right: 241px">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# "Handler1.ashx?id_Image="+ Eval("PhotoID") %>' Width="600px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
        </div>
    </form>
    </body>
</html>
