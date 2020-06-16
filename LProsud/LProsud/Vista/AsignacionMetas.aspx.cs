using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LProsud.Vista
{
    public partial class Asignacion_Metas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnasignacion.Click += new EventHandler(this.metasClose);
        }

        protected void metasClose(object sender, EventArgs e)
        {
            Response.Redirect("MantenedorUsuario.aspx", true);
        }
    }
}