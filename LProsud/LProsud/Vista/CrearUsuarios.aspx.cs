using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LProsud.Vista
{
    public partial class CrearUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


      
                Button1.Click += new EventHandler(this.CreateUsuario);
       
        }

        protected void CreateUsuario(object sender, EventArgs e)
        {
            Response.Redirect("MantenedorUsuario.aspx",true);
        }
    }
}