using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PracticandoconBasedeDatos_OtraManera
{
    public partial class modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["nombre"].DefaultValue = txtNombre.Text;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
            {
                txtClave.Text = datos["clave"].ToString();
                txtMail.Text = datos["mail"].ToString();
            }
            else
                Label2.Text = "No existe un usuario con dicho nombre";
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["nombre"].DefaultValue = txtNombre.Text;
            SqlDataSource1.UpdateParameters["clave"].DefaultValue = txtClave.Text;
            SqlDataSource1.UpdateParameters["mail"].DefaultValue = txtMail.Text;
            int cant;
            cant = SqlDataSource1.Update();
            if (cant == 1)
            {
                Label5.Text = "Se modificaron los datos";
            }
            else
                Label5.Text = "No existe dicho codigo de usuario";
        }
    }
}