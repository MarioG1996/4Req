using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LProsud.Vista
{
    public partial class Comparativo_Cierre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnComparativo.Click += new EventHandler(this.compCierre);
        }

        protected void compCierre(object sender, EventArgs e)
        {
            Response.Redirect("MantenedorUsuario.aspx", true);
        }
    }
}