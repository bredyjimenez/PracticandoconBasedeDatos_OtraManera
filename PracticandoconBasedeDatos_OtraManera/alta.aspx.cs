using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticandoconBasedeDatos_OtraManera
{
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnAlta_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["nombre"].DefaultValue = txtNombre.Text;
            SqlDataSource1.InsertParameters["clave"].DefaultValue = txtClave.Text;
            SqlDataSource1.InsertParameters["mail"].DefaultValue = txtMail.Text;
            SqlDataSource1.Insert();
            Label4.Text = "Se efectuó la carga";
            txtNombre.Text = " ";
            txtClave.Text = " ";
            txtMail.Text = " ";
        }
    }
}