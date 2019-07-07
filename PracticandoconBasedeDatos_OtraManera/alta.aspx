<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta.aspx.cs" Inherits="PracticandoconBasedeDatos_OtraManera.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtNombre" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" AssociatedControlID="txtClave" Text="Clave:"></asp:Label>
            <asp:TextBox ID="txtClave" TextMode="Password" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" AssociatedControlID="txtMail" Text="Mail:"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="btnAlta" runat="server" Text="Alta" OnClick="btnAlta_Click" />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br /><br />
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Default.aspx" Text="Retornar" runat="server"></asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" InsertCommand="INSERT INTO usuarios(nombre, clave, mail) VALUES (@nombre, @clave, @mail)" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="nombre" />
                <asp:Parameter Name="clave" />
                <asp:Parameter Name="mail" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
