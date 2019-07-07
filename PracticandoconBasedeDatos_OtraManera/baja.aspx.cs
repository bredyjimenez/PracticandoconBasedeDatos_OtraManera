using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticandoconBasedeDatos_OtraManera
{
    public partial class baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["nombre"].DefaultValue = txtNombre.Text;
            int cant;
            cant = SqlDataSource1.Delete();
            if (cant == 1)
                Label2.Text = "Se borró el usuario";
            else
                Label2.Text = "No existe dicho nombre";
        }
    }
}