using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LProsud.Vista
{
    public partial class CierreMetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnCierreMetas.Click += new EventHandler(this.MetasClose);
        }

        protected void MetasClose(object sender, EventArgs e)
        {
            Response.Redirect("MantenedorUsuario.aspx", true);
        }
    }
}