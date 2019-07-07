using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // importar

namespace PracticandoconBasedeDatos_OtraManera
{
    public partial class consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["nombre"].DefaultValue = txtBusqueda.Text;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
                Label2.Text = "Clave:" + datos["clave"] + "<br>Mail:" + datos["mail"];
            else
                Label2.Text = "No existe un usuario con dicho nombre";
        }
    }
}