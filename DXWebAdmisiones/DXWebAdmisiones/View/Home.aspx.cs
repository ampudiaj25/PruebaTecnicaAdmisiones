using DevExpress.Web;
using DXWebAdmisiones.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebAdmisiones {
    public partial class Home : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void callbackPanel_Callback(object sender, CallbackEventArgsBase e)
        {
            int paisId;
            if (int.TryParse(e.Parameter, out paisId))
            {
                odsDepartamentos.SelectParameters["paisId"].DefaultValue = paisId.ToString();
                cmbDepartamento.DataBind();
            }
        }

        protected void callbackPanelCiudad_Callback(object sender, CallbackEventArgsBase e)
        {
            int id;
            if (int.TryParse(e.Parameter, out id))
            {
                odsCiudad.SelectParameters["deptoId"].DefaultValue = id.ToString();
                cmbCiudad.DataBind();
            }
        }
    }
}