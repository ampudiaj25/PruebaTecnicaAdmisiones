using DevExpress.Web;
using DXWebAdmisiones.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DXWebAdmisiones {
    public partial class BlogTimeline : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
        }

        protected void odsInscripciones_Selected(object sender, ObjectDataSourceStatusEventArgs e)
        {
            if (e.ReturnValue != null)
            {
                List<Inscripcion> datos = (List<Inscripcion>)e.ReturnValue;

                foreach (Inscripcion dato in datos)
                {
                    dato.nombresAspirante = $"{dato.Aspirante.primerApellido} {dato.Aspirante.segundoApellido}";
                    dato.apellidosAspirante = $"{dato.Aspirante.primerNombre} {dato.Aspirante.segundoNombre}";
                }
            }
        }

        protected void btnExportExcel_Click(object sender, EventArgs e)
        {
            gridExporter.WriteXlsxToResponse();
        }
    }
}