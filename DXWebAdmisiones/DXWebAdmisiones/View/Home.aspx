<%@ Page Title="Home" UnobtrusiveValidationMode="None" Language="C#" AutoEventWireup="true" MasterPageFile="~/Layout.master" CodeBehind="Home.aspx.cs" Inherits="DXWebAdmisiones.Home" %>

<%@ Register Assembly="DevExpress.Web.v24.1, Version=24.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <style>
        .wizard-step {
            margin-bottom: 20px;
        }

        .navigation-buttons {
            margin-top: 20px;
        }
    </style>
    <div class="container">
        <dx:ASPxPageControl ID="PageControl1" runat="server" ActiveTabIndex="0" ClientInstanceName="pageControl">
            <TabPages>
                <dx:TabPage Text="1. Información de Inscripción" Name="tabStep1">
                    <ContentCollection>
                        <dx:ContentControl>
                            <div class="wizard-step">
                                <div class="container mt-5">
                                    <div class="form-group row">
                                        <label class="col-md-2 col-form-label">Tipo Aspirante:</label>
                                        <div class="col-md-10">
                                            <dx:ASPxRadioButtonList ID="rblTipoAspirante" runat="server"
                                                RepeatDirection="Horizontal" ValueType="System.String">
                                                <Items>
                                                    <dx:ListEditItem Text="Nuevo" Value="Nuevo" />
                                                    <dx:ListEditItem Text="Reingreso" Value="Reingreso" />
                                                    <dx:ListEditItem Text="Transferencia Externa" Value="Transferencia Externa" />
                                                    <dx:ListEditItem Text="Transferencia Interna" Value="Transferencia Interna" />
                                                </Items>
                                            </dx:ASPxRadioButtonList>
                                            <asp:RequiredFieldValidator ID="rfvTipoAspirante" runat="server"
                                                ControlToValidate="rblTipoAspirante"
                                                ErrorMessage="Seleccione el tipo de aspirante"
                                                Display="Dynamic" CssClass="text-danger" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 col-form-label">Modalidad:</label>
                                    <div class="col-md-4">
                                        <dx:ASPxComboBox ID="cmbModalidad" runat="server" ValueType="System.String">
                                            <Items>
                                                <dx:ListEditItem Text="Presencial" Value="Presencial" />
                                                <dx:ListEditItem Text="Virtual" Value="Virtual" />
                                            </Items>
                                        </dx:ASPxComboBox>
                                        <asp:RequiredFieldValidator ID="rfvModalidad" runat="server"
                                            ControlToValidate="cmbModalidad"
                                            ErrorMessage="Seleccione la modalidad"
                                            Display="Dynamic" CssClass="text-danger" />
                                    </div>
                                    <label class="col-md-2 col-form-label">Sede:</label>
                                    <div class="col-md-4">
                                        <dx:ASPxComboBox ID="cmbSede" runat="server" ValueType="System.Int32"
                                            DataSourceID="odsSedesActivas" TextField="nombre" ValueField="codigo">
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsSedesActivas" runat="server"
                                            TypeName="MiProyecto.Controllers.SedeController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>
                                        <asp:RequiredFieldValidator ID="rfvSede" runat="server"
                                            ControlToValidate="cmbSede"
                                            ErrorMessage="Seleccione la sede"
                                            Display="Dynamic" CssClass="text-danger" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 col-form-label">Programa:</label>
                                    <div class="col-md-4">
                                        <dx:ASPxComboBox ID="cmbProgramasActivos" runat="server" ValueType="System.Int32"
                                            DataSourceID="odsProgramasActivos" TextField="nombre" ValueField="codigo">
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsProgramasActivos" runat="server"
                                            TypeName="MiProyecto.Controllers.ProgramaController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>
                                        <asp:RequiredFieldValidator ID="rfvPrograma" runat="server"
                                            ControlToValidate="cmbProgramasActivos"
                                            ErrorMessage="Seleccione el programa"
                                            Display="Dynamic" CssClass="text-danger" />
                                    </div>
                                    <label class="col-md-2 col-form-label">Periodo Académico:</label>
                                    <div class="col-md-4">
                                        <dx:ASPxComboBox ID="cmbPeriodoAcademico" runat="server" ValueType="System.String">
                                            <Items>
                                                <dx:ListEditItem Text="2024-1" Value="2024-1" />
                                                <dx:ListEditItem Text="2024-2" Value="2024-2" />
                                                <dx:ListEditItem Text="2025-1" Value="2025-1" />
                                            </Items>
                                        </dx:ASPxComboBox>
                                        <asp:RequiredFieldValidator ID="rfvPeriodoAcademico" runat="server"
                                            ControlToValidate="cmbPeriodoAcademico"
                                            ErrorMessage="Seleccione el periodo académico"
                                            Display="Dynamic" CssClass="text-danger" />
                                    </div>
                                </div>
                            </div>
                            <div class="wizard-step">
                            </div>
                            <div class="navigation-buttons">
                                <dx:ASPxButton ID="NextButton1" runat="server" Text="Siguiente" AutoPostBack="false"
                                    ClientSideEvents-Click="function(s, e) { validateStep(0); }" />
                            </div>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>

                <dx:TabPage Text="2. Información Personal" Name="tabStep2">
                    <ContentCollection>
                        <dx:ContentControl>
                            <div class="wizard-step">
                                <div class="row">
                                    <div class="col-md-8">
                                        <label class="col-form-label">Primer nombre:</label>
                                        <dx:ASPxTextBox ID="txtPrimerNombre" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxTextBox>
                                        <asp:RequiredFieldValidator ID="rfvPrimerNombre" runat="server"
                                            ControlToValidate="txtPrimerNombre" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Primer Nombre es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <label class="col-form-label">Segundo nombre:</label>
                                        <dx:ASPxTextBox ID="txtSegundoNombre" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxTextBox>
                                        <asp:RequiredFieldValidator ID="rfvSegundoNombre" runat="server"
                                            ControlToValidate="txtSegundoNombre" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Segundo Nombre es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <label class="col-form-label">Primer Apellido:</label>
                                        <dx:ASPxTextBox ID="txtPrimerApellido" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxTextBox>
                                        <asp:RequiredFieldValidator ID="rfvPrimerApellido" runat="server"
                                            ControlToValidate="txtPrimerApellido" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Primer Apellido es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <label class="col-form-label">Segundo Apellido:</label>
                                        <dx:ASPxTextBox ID="txtSegundoApellido" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxTextBox>
                                        <asp:RequiredFieldValidator ID="rfvSegundoApellido" runat="server"
                                            ControlToValidate="txtSegundoApellido" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Segundo Apellido es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4 class="col-form-label">Fecha y lugar de nacimiento</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Fecha nacimiento:</label>
                                        <dx:ASPxDateEdit ID="deFechaNacimiento" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxDateEdit>
                                        <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server"
                                            ControlToValidate="deFechaNacimiento" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Fecha de Nacimiento es requerida"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">País:</label>
                                        <dx:ASPxComboBox ID="cmbPais" runat="server" CssClass="form-control" ValueType="System.Int32"
                                            TextField="nombre" ValueField="codigo" ClientInstanceName="cbPais"
                                            ValidationSettings-IsRequired="true" DataSourceID="odsPaisesActivos" AutoPostBack="false"
                                            ClientSideEvents-SelectedIndexChanged="function(s, e) { OnSelectedIndexChanged(s,e,callbackPanel); }">
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsPaisesActivos" runat="server"
                                            TypeName="MiProyecto.Controllers.PaisController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>
                                        <asp:RequiredFieldValidator ID="rfvPais" runat="server"
                                            ControlToValidate="cmbPais" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="País es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Departamento:</label>
                                        <dx:ASPxCallbackPanel ID="callbackPanel" runat="server"
                                            ClientInstanceName="callbackPanel" OnCallback="callbackPanel_Callback">
                                            <PanelCollection>
                                                <dx:PanelContent>
                                                    <dx:ASPxComboBox ID="cmbDepartamento" runat="server" CssClass="form-control"
                                                        ValueType="System.Int32" TextField="nombre" ValueField="codigo"
                                                        ValidationSettings-IsRequired="true" DataSourceID="odsDepartamentos"
                                                        AutoPostBack="false"
                                                        ClientSideEvents-SelectedIndexChanged="function(s, e) { OnSelectedIndexChanged(s,e,callbackPanelCiudad); }">
                                                    </dx:ASPxComboBox>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxCallbackPanel>

                                        <asp:ObjectDataSource ID="odsDepartamentos" runat="server" SelectMethod="GetAll"
                                            TypeName="MiProyecto.Controllers.DepartamentoController">
                                            <SelectParameters>
                                                <asp:Parameter Name="paisId" Type="Int32" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>

                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">Ciudad:</label>
                                        <dx:ASPxCallbackPanel ID="callbackPanelCiudad" runat="server"
                                            ClientInstanceName="callbackPanelCiudad" OnCallback="callbackPanelCiudad_Callback">
                                            <PanelCollection>
                                                <dx:PanelContent>
                                                    <dx:ASPxComboBox ID="cmbCiudad" runat="server" CssClass="form-control" DataSourceID="odsCiudad"
                                                        ValidationSettings-IsRequired="true" ValueType="System.Int32" TextField="nombre" ValueField="codigo">
                                                    </dx:ASPxComboBox>
                                                    <asp:ObjectDataSource ID="odsCiudad" runat="server" SelectMethod="GetAll"
                                                        TypeName="MiProyecto.Controllers.CiudadController">
                                                        <SelectParameters>
                                                            <asp:Parameter Name="deptoId" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:ObjectDataSource>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxCallbackPanel>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Grupo sanguíneo:</label>
                                        <dx:ASPxComboBox ID="cmbGrupoSanguineo" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true">
                                            <Items>
                                                <dx:ListEditItem Text="O+" Value="O+" />
                                                <dx:ListEditItem Text="A+" Value="A+" />
                                            </Items>
                                        </dx:ASPxComboBox>
                                        <asp:RequiredFieldValidator ID="rfvGrupoSanguineo" runat="server"
                                            ControlToValidate="cmbGrupoSanguineo" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Grupo Sanguíneo es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">Tipo de documento:</label>
                                        <dx:ASPxComboBox ID="cmbTipoDocumento" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" ValueType="System.Int32" TextField="nombre" ValueField="codigo" DataSourceID="odsTiposDocActivos">
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsTiposDocActivos" runat="server"
                                            TypeName="MiProyecto.Controllers.TipoDocumentoController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>
                                        <asp:RequiredFieldValidator ID="rfvTipoDocumento" runat="server"
                                            ControlToValidate="cmbTipoDocumento" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Tipo de Documento es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Numero de documento:</label>
                                        <dx:ASPxTextBox ID="txtNumeroDocumento" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxTextBox>
                                        <asp:RequiredFieldValidator ID="rfvNumeroDocumento" runat="server"
                                            ControlToValidate="txtNumeroDocumento" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Número de Documento es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">Fecha de expedicion:</label>
                                        <dx:ASPxDateEdit ID="deFechaExpedicion" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxDateEdit>
                                        <asp:RequiredFieldValidator ID="rfvFechaExpedicion" runat="server"
                                            ControlToValidate="deFechaExpedicion" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Fecha de Expedición es requerida"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">País de expedicion:</label>
                                        <dx:ASPxComboBox ID="cmbPaisExpedicion" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" DataSourceID="odsPaisesActivos" ValueType="System.Int32" TextField="nombre" ValueField="codigo">
                                        </dx:ASPxComboBox>
                                        <asp:RequiredFieldValidator ID="rfvPaisExpedicion" runat="server"
                                            ControlToValidate="cmbPaisExpedicion" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="País de Expedición es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">Departamento de expedicion:</label>
                                        <dx:ASPxComboBox ID="cmbDepartamentoExpedicion" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxComboBox>
                                        <asp:RequiredFieldValidator ID="rfvDepartamentoExpedicion" runat="server"
                                            ControlToValidate="cmbDepartamentoExpedicion" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Departamento de Expedición es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Ciudad de expedicion:</label>
                                        <dx:ASPxComboBox ID="cmbCiudadExpedicion" runat="server" CssClass="form-control" ValidationSettings-IsRequired="true"></dx:ASPxComboBox>
                                        <asp:RequiredFieldValidator ID="rfvCiudadExpedicion" runat="server"
                                            ControlToValidate="cmbCiudadExpedicion" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Ciudad de Expedición es requerida"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Género *</label><br />
                                        <dx:ASPxRadioButtonList ID="rblSexo" runat="server" CssClass="form-check"
                                            ValidationSettings-IsRequired="true" RepeatDirection="Horizontal">
                                            <Items>
                                                <dx:ListEditItem Text="Masculino" Value="Masculino" />
                                                <dx:ListEditItem Text="Femenino" Value="Femenino" />
                                            </Items>
                                        </dx:ASPxRadioButtonList>
                                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server"
                                            ControlToValidate="rblSexo" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Género es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Estado Civil *</label><br />
                                        <dx:ASPxRadioButtonList ID="rblEstadoCivil" runat="server" CssClass="form-check"
                                            ValidationSettings-IsRequired="true" RepeatDirection="Horizontal">
                                            <Items>
                                                <dx:ListEditItem Text="Soltero(a)" Value="Soltero(a)" />
                                                <dx:ListEditItem Text="Casado(a)" Value="Casado(a)" />
                                                <dx:ListEditItem Text="Unión Libre" Value="Unión Libre" />
                                                <dx:ListEditItem Text="Viudo(a)" Value="Viudo(a)" />
                                                <dx:ListEditItem Text="Separado(a)" Value="Separado(a)" />
                                            </Items>
                                        </dx:ASPxRadioButtonList>
                                        <asp:RequiredFieldValidator ID="rfvEstadoCivil" runat="server"
                                            ControlToValidate="rblEstadoCivil" Display="Dynamic" CssClass="text-danger"
                                            ErrorMessage="Estado Civil es requerido"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                            </div>
                            <div class="navigation-buttons">
                                <dx:ASPxButton ID="PrevButton2" runat="server" Text="Anterior" AutoPostBack="false" ClientSideEvents-Click="function(s, e) { pageControl.SetActiveTabIndex(0); }" />
                                <dx:ASPxButton ID="FinishButton2" runat="server" Text="Guardar" AutoPostBack="false" ClientSideEvents-Click="function(s, e) { validateStep(1); }" />
                            </div>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
            </TabPages>
        </dx:ASPxPageControl>

        <script type="text/javascript">
            function validateStep(stepIndex) {
                Page_ClientValidate();
                var isValid = true;
                // Obtener todos los campos de texto y sus validadores dentro del tab activo
                var tabContainer = document.getElementById('Content_PageControl1_C' + stepIndex);
                var validators = tabContainer.querySelectorAll('span[id^="Content_PageControl1_rfv"]');

                // Validar solo los campos en el tab activo
                for (var i = 0; i < validators.length; i++) {
                    var validator = validators[i];

                    // Validar que el campo no esté vacío
                    if (validator.isvalid === false) {
                        isValid = false;
                    } 
                }

                // Si todos los campos en el tab activo son válidos, avanzar al siguiente tab
                if (isValid) {
                    pageControl.SetActiveTabIndex(stepIndex + 1);
                }
            }

            function OnSelectedIndexChanged(s, e, d) {
                var id = s.GetValue();
                if (id !== null) {
                    d.PerformCallback(id.toString());
                }
            }


        </script>
    </div>

</asp:Content>
