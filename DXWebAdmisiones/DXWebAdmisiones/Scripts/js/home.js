function moveStep(stepIndex) {
    var isValid = validateStep(stepIndex);
    if (isValid) {
        pageControl.SetActiveTabIndex(stepIndex + 1);
    }
}

function save(stepIndex) {
    var isValid = validateStep(stepIndex);
    if (isValid) {
        loadingPanel.Show();
        cbSave.PerformCallback();
    }
}

function validateStep(stepIndex) {
    var isValid = true;
    var tabPage = document.getElementById('Content_PageControl1_C' + stepIndex);

    if (tabPage) {
        var tdElements = tabPage.querySelectorAll('td[id^="Content_PageControl1_"][id$="_ETC"]');
        tdElements.forEach(function (td) {
            if (td.innerText.trim().length > 0) {
                isValid = false;
            }
        });
    }

    return isValid;
}

function OnSelectedIndexChanged(s, e, d) {
    var id = s.GetValue();
    if (id !== null) {
        d.PerformCallback(id.toString());
    }
}

function Clean() {
    rblTipoAspirante.SetValue(null);
    cmbModalidad.SetValue(null);
    cmbSede.SetValue(null);
    cmbProgramasActivos.SetValue(null);
    cmbPeriodoAcademico.SetValue(null);
    txtPrimerNombre.SetText('');
    txtSegundoNombre.SetText('');
    txtPrimerApellido.SetText('');
    txtSegundoApellido.SetText('');
    deFechaNacimiento.SetValue(null);
    cbPais.SetValue(null);
    cmbDepartamento.SetValue(null);
    cmbDepartamento.ClearItems();
    cmbCiudad.SetValue(null);
    cmbCiudad.ClearItems();
    cmbGrupoSanguineo.SetValue(null);
    cmbTipoDocumento.SetValue(null);
    txtNumeroDocumento.SetValue(null);
    deFechaExpedicion.SetValue(null);
    cmbPaisExpedicion.SetValue(null);
    cmbDepartamentoExpedicion.SetValue(null);
    cmbDepartamentoExpedicion.ClearItems();
    cmbCiudadExp.SetValue(null);
    cmbCiudadExp.ClearItems();
    rblSexo.SetValue(null);
    rblEstadoCivil.SetValue(null);
    pageControl.SetActiveTabIndex(0);
}