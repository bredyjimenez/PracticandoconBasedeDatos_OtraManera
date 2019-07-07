<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PracticandoconBasedeDatos_OtraManera.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/alta.aspx">Alta de usuario</asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink2" NavigateUrl="~/consulta.aspx" runat="server" Text="Consulta de usuario"></asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink3" NavigateUrl="~/baja.aspx" runat="server" Text="Baja de usuario"></asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink4" NavigateUrl="~/modificacion.aspx" runat="server" Text="Modificación de usuario"></asp:HyperLink><br /><br />
        </div>
    </form>
</body>
</html>
