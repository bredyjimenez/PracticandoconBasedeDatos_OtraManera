<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="PracticandoconBasedeDatos_OtraManera.consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre de usuario:"></asp:Label>
            <asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Height="66px" OnClick="btnBuscar_Click" /><br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br /><br />
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Default.aspx" Text="Retornar" runat="server"></asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT clave, mail FROM usuarios WHERE (nombre = @nombre)">
            <SelectParameters>
                <asp:Parameter Name="nombre" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
