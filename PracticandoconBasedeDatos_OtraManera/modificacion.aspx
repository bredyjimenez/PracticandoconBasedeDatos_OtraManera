<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacion.aspx.cs" Inherits="PracticandoconBasedeDatos_OtraManera.modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre de usuario:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Clave:"></asp:Label>
            <asp:TextBox ID="txtClave" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Mail:"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br /><br />
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Default.aspx" Text="Retornar" runat="server"></asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT clave, mail FROM usuarios WHERE (nombre = @nombre)" UpdateCommand="UPDATE usuarios SET clave = @clave, mail = @mail WHERE (nombre = @nombre)">
            <SelectParameters>
                <asp:Parameter Name="nombre" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="clave" />
                <asp:Parameter Name="mail" />
                <asp:Parameter Name="nombre" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
