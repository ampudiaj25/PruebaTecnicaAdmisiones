using DevExpress.Web;
using DXWebAdmisiones.Model;
using MiProyecto.Controllers;
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

        protected void cbSave_Callback(object source, DevExpress.Web.CallbackEventArgs e)
        {
            AspiranteController aspiranteController = new AspiranteController();
            Aspirante aspirante = new Aspirante()
            {
                primerNombre = txtPrimerNombre.Text,
                segundoNombre = txtSegundoNombre.Text,
                primerApellido = txtPrimerApellido.Text,
                segundoApellido = txtSegundoApellido.Text,
                fechaNacimiento = deFechaNacimiento.Date,
                codigoPaisNacimiento = (int)cmbPais.Value,
                codigoDeptoNacimiento = (int)cmbDepartamento.Value,
                codigoCiudadNacimiento = (int)cmbCiudad.Value,
                grupoSanguineo = cmbGrupoSanguineo.Value.ToString(),
                codigoTipoDoc = (int)cmbTipoDocumento.Value,
                nroDoc = txtNumeroDocumento.Text,
                fechaExpDoc = deFechaExpedicion.Date,
                codigoPaisExpDoc = (int)cmbPaisExpedicion.Value,
                codigoDeptoExpDoc = (int)cmbDepartamentoExpedicion.Value,
                codigoCiudadExpDoc = (int)cmbCiudadExp.Value,
                sexo = rblSexo.SelectedItem.Value.ToString(),
                estadoCivil = rblEstadoCivil.SelectedItem.Value.ToString()
            };

            Aspirante addedAspirante = aspiranteController.Add(aspirante);

            InscripcionController inscripcionController = new InscripcionController();
            Inscripcion inscripcion = new Inscripcion()
            {
                tipoAspirante = rblTipoAspirante.SelectedItem.Value.ToString(),
                modalidad = cmbModalidad.Value.ToString(),
                codigoSede = (int)cmbSede.Value,
                codigoPrograma = (int)cmbProgramasActivos.Value,
                periodoAcademico = cmbPeriodoAcademico.Value.ToString(),
                estado = "Inscrito",
                codigoAspirante = addedAspirante.codigo
            };
            inscripcionController.Add(inscripcion);
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

        protected void callbackPanel_CallbackExp(object sender, CallbackEventArgsBase e)
        {
            int paisId;
            if (int.TryParse(e.Parameter, out paisId))
            {
                odsDepartamentosExp.SelectParameters["paisId"].DefaultValue = paisId.ToString();
                cmbDepartamentoExpedicion.DataBind();
            }
        }

        protected void callbackPanelCiudadE_CallbackExp(object sender, CallbackEventArgsBase e)
        {
            int id;
            if (int.TryParse(e.Parameter, out id))
            {
                odsCiudadExp.SelectParameters["deptoId"].DefaultValue = id.ToString();
                cmbCiudadExp.DataBind();
            }
        }
    }
}