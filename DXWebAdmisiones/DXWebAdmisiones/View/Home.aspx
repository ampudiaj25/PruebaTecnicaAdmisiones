<%@ Page Title="Home" UnobtrusiveValidationMode="None" Language="C#" AutoEventWireup="true" MasterPageFile="~/Layout.master" CodeBehind="Home.aspx.cs" Inherits="DXWebAdmisiones.Home" %>

<%@ Register Assembly="DevExpress.Web.v24.1, Version=24.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <link href="../Scripts/styles/home.css" rel="stylesheet" type="text/css" />
    <div class="container">
        <dx:ASPxPageControl ID="PageControl1" runat="server" ActiveTabIndex="0"
            ClientInstanceName="pageControl" CssClass="pageControl">
            <TabPages>
                <dx:TabPage Text="1. Información de Inscripción" Name="tabStep1">
                    <ContentCollection>
                        <dx:ContentControl>
                            <div class="wizard-step">
                                <div class="row">
                                    <label class="col-md-2 col-form-label">Tipo Aspirante:</label>
                                    <div class="col-md-8">
                                        <dx:ASPxRadioButtonList ID="rblTipoAspirante" runat="server" CssClass="form-control "
                                            RepeatDirection="Horizontal" ValueType="System.String" CausesValidation="true"
                                            ClientInstanceName="rblTipoAspirante">
                                            <Items>
                                                <dx:ListEditItem Text="Nuevo" Value="Nuevo" />
                                                <dx:ListEditItem Text="Reingreso" Value="Reingreso" />
                                                <dx:ListEditItem Text="Transferencia Externa" Value="Transferencia Externa" />
                                                <dx:ListEditItem Text="Transferencia Interna" Value="Transferencia Interna" />
                                            </Items>
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Tipo de aspirante es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxRadioButtonList>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Modalidad:</label>
                                        <dx:ASPxComboBox ID="cmbModalidad" runat="server" ValueType="System.String"
                                            CssClass="form-control" Width="100%" ClientInstanceName="cmbModalidad">
                                            <Items>
                                                <dx:ListEditItem Text="Presencial" Value="Presencial" />
                                                <dx:ListEditItem Text="Virtual" Value="Virtual" />
                                            </Items>
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Modalidad es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>

                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label">Sede:</label>
                                        <dx:ASPxComboBox ID="cmbSede" runat="server" ValueType="System.Int32" CssClass="form-control"
                                            DataSourceID="odsSedesActivas" TextField="nombre" ValueField="codigo" Width="100%"
                                            ClientInstanceName="cmbSede">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Sede es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsSedesActivas" runat="server"
                                            TypeName="MiProyecto.Controllers.SedeController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>

                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <label class="col-form-label">Programa:</label>
                                        <dx:ASPxComboBox ID="cmbProgramasActivos" runat="server" ValueType="System.Int32" CssClass="form-control"
                                            DataSourceID="odsProgramasActivos" TextField="nombre" ValueField="codigo" Width="100%"
                                            ClientInstanceName="cmbProgramasActivos">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Programa es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsProgramasActivos" runat="server"
                                            TypeName="MiProyecto.Controllers.ProgramaController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>

                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label">Periodo Académico:</label>
                                        <dx:ASPxComboBox ID="cmbPeriodoAcademico" runat="server" ValueType="System.String"
                                            CssClass="form-control" Width="100%" ClientInstanceName="cmbPeriodoAcademico">
                                            <Items>
                                                <dx:ListEditItem Text="2024-1" Value="2024-1" />
                                                <dx:ListEditItem Text="2024-2" Value="2024-2" />
                                                <dx:ListEditItem Text="2025-1" Value="2025-1" />
                                            </Items>
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Periodo académico es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>

                                    </div>
                                </div>
                            </div>
                            <div class="wizard-step">
                            </div>
                            <div class="navigation-buttons">
                                <dx:ASPxButton ID="CancelarButton" runat="server" Text="Cancelar" AutoPostBack="false"
                                    ClientSideEvents-Click="function(s, e) { Clean(); }" />
                                <dx:ASPxButton ID="NextButton1" runat="server" Text="Siguiente" AutoPostBack="false"
                                    ClientSideEvents-Click="function(s, e) { moveStep(0); }" />
                            </div>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="2. Información Personal" Name="tabStep2" ClientEnabled="false">
                    <ContentCollection>
                        <dx:ContentControl>
                            <div class="wizard-step">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Primer nombre:</label>
                                        <dx:ASPxTextBox ID="txtPrimerNombre" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" Width="100%" ClientInstanceName="txtPrimerNombre">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Primer nombre es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>

                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label">Segundo nombre:</label>
                                        <dx:ASPxTextBox ID="txtSegundoNombre" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" Width="100%" ClientInstanceName="txtSegundoNombre">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Segundo nombre es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Primer Apellido:</label>
                                        <dx:ASPxTextBox ID="txtPrimerApellido" runat="server"
                                            CssClass="form-control" ValidationSettings-IsRequired="true" Width="100%"
                                            ClientInstanceName="txtPrimerApellido">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Primer apellido es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">Segundo Apellido:</label>
                                        <dx:ASPxTextBox ID="txtSegundoApellido" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" Width="100%" ClientInstanceName="txtSegundoApellido">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Segundo apellido es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>

                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <h4 class="col-form-label mt-3">Fecha y lugar de nacimiento</h4>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Fecha nacimiento:</label>
                                        <dx:ASPxDateEdit ID="deFechaNacimiento" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" Width="100%" ClientInstanceName="deFechaNacimiento">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Fecha de nacimiento es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxDateEdit>

                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">País:</label>
                                        <dx:ASPxComboBox ID="cmbPais" runat="server" CssClass="form-control" ValueType="System.Int32"
                                            TextField="nombre" ValueField="codigo" ClientInstanceName="cbPais" Width="100%"
                                            ValidationSettings-IsRequired="true" DataSourceID="odsPaisesActivos" AutoPostBack="false"
                                            ClientSideEvents-SelectedIndexChanged="function(s, e) { 
                                                cmbDepartamento.SetValue(null); 
                                                cmbDepartamento.ClearItems();
                                                OnSelectedIndexChanged(s,e,callbackPanelDep); }">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="País de nacimiento es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsPaisesActivos" runat="server"
                                            TypeName="MiProyecto.Controllers.PaisController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Departamento:</label>
                                        <dx:ASPxCallbackPanel ID="callbackPanelDep" runat="server"
                                            ClientInstanceName="callbackPanelDep" OnCallback="callbackPanel_Callback">
                                            <PanelCollection>
                                                <dx:PanelContent>
                                                    <dx:ASPxComboBox ID="cmbDepartamento" runat="server" CssClass="form-control"
                                                        ValueType="System.Int32" TextField="nombre" ValueField="codigo"
                                                        ValidationSettings-IsRequired="true" DataSourceID="odsDepartamentos"
                                                        AutoPostBack="false" Width="100%" ClientInstanceName="cmbDepartamento"
                                                        ClientSideEvents-SelectedIndexChanged="function(s, e) { 
                                                        cmbCiudad.SetValue(null); 
                                                        cmbCiudad.ClearItems();
                                                        OnSelectedIndexChanged(s,e,callbackPanelCiudad); }">
                                                        <ValidationSettings ErrorTextPosition="Bottom">
                                                            <RequiredField IsRequired="true" ErrorText="Departamento de nacimiento es requerido" />
                                                        </ValidationSettings>
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
                                                        ValidationSettings-IsRequired="true" ValueType="System.Int32" TextField="nombre"
                                                        ValueField="codigo" Width="100%" ClientInstanceName="cmbCiudad">
                                                        <ValidationSettings ErrorTextPosition="Bottom">
                                                            <RequiredField IsRequired="true" ErrorText="Ciudad de nacimiento es requerido" />
                                                        </ValidationSettings>
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
                                        <label class="col-form-label mt-3">Grupo sanguíneo:</label>
                                        <dx:ASPxComboBox ID="cmbGrupoSanguineo" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" Width="100%" ClientInstanceName="cmbGrupoSanguineo">
                                            <Items>
                                                <dx:ListEditItem Text="O+" Value="O+" />
                                                <dx:ListEditItem Text="A+" Value="A+" />
                                            </Items>
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Grupo sanguíneo es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>

                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label mt-3">Tipo de documento:</label>
                                        <dx:ASPxComboBox ID="cmbTipoDocumento" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" ValueType="System.Int32" TextField="nombre"
                                            ValueField="codigo" DataSourceID="odsTiposDocActivos" Width="100%" ClientInstanceName="cmbTipoDocumento">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Tipo de documento es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsTiposDocActivos" runat="server"
                                            TypeName="MiProyecto.Controllers.TipoDocumentoController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Numero de documento:</label>
                                        <dx:ASPxTextBox ID="txtNumeroDocumento" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" Width="100%" ClientInstanceName="txtNumeroDocumento">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Numero de documento es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>

                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">Fecha de expedicion:</label>
                                        <dx:ASPxDateEdit ID="deFechaExpedicion" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" Width="100%" ClientInstanceName="deFechaExpedicion">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Fecha de expedicion es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxDateEdit>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">País de expedicion:</label>
                                        <dx:ASPxComboBox ID="cmbPaisExpedicion" runat="server" CssClass="form-control"
                                            ValidationSettings-IsRequired="true" DataSourceID="odsPaisesExpActivos" ValueType="System.Int32" AutoPostBack="false"
                                            TextField="nombre" ValueField="codigo" Width="100%" ClientInstanceName="cmbPaisExpedicion"
                                            ClientSideEvents-SelectedIndexChanged="function(s, e) { 
                                            cmbDepartamentoExpedicion.SetValue(null); 
                                            cmbDepartamentoExpedicion.ClearItems();
                                            OnSelectedIndexChanged(s,e,callbackPanel); }">
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="País de expedicion es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxComboBox>
                                        <asp:ObjectDataSource ID="odsPaisesExpActivos" runat="server"
                                            TypeName="MiProyecto.Controllers.PaisController"
                                            SelectMethod="GetAll"></asp:ObjectDataSource>

                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label">Departamento de expedicion:</label>
                                        <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server"
                                            ClientInstanceName="callbackPanel" OnCallback="callbackPanel_CallbackExp">
                                            <PanelCollection>
                                                <dx:PanelContent>
                                                    <dx:ASPxComboBox ID="cmbDepartamentoExpedicion" runat="server" CssClass="form-control"
                                                        ValueType="System.Int32" TextField="nombre" ValueField="codigo"
                                                        ValidationSettings-IsRequired="true" DataSourceID="odsDepartamentosExp"
                                                        AutoPostBack="false" Width="100%" ClientInstanceName="cmbDepartamentoExpedicion"
                                                        ClientSideEvents-SelectedIndexChanged="function(s, e) { 
                                                        cmbCiudadExp.SetValue(null); 
                                                        cmbCiudadExp.ClearItems();
                                                        OnSelectedIndexChanged(s,e,callbackPanelCiudadE); }">
                                                        <ValidationSettings ErrorTextPosition="Bottom">
                                                            <RequiredField IsRequired="true" ErrorText="Departamento de expedicion es requerido" />
                                                        </ValidationSettings>
                                                    </dx:ASPxComboBox>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxCallbackPanel>
                                        <asp:ObjectDataSource ID="odsDepartamentosExp" runat="server" SelectMethod="GetAll"
                                            TypeName="MiProyecto.Controllers.DepartamentoController">
                                            <SelectParameters>
                                                <asp:Parameter Name="paisId" Type="Int32" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label">Ciudad de expedicion:</label>
                                        <dx:ASPxCallbackPanel ID="callbackPanelCiudadE" runat="server"
                                            ClientInstanceName="callbackPanelCiudadE" OnCallback="callbackPanelCiudadE_CallbackExp">
                                            <PanelCollection>
                                                <dx:PanelContent>
                                                    <dx:ASPxComboBox ID="cmbCiudadExp" runat="server" CssClass="form-control" DataSourceID="odsCiudadExp"
                                                        ValidationSettings-IsRequired="true" ValueType="System.Int32" TextField="nombre"
                                                        ValueField="codigo" Width="100%" ClientInstanceName="cmbCiudadExp">
                                                        <ValidationSettings ErrorTextPosition="Bottom">
                                                            <RequiredField IsRequired="true" ErrorText="Ciudad de expedicion es requerido" />
                                                        </ValidationSettings>
                                                    </dx:ASPxComboBox>
                                                    <asp:ObjectDataSource ID="odsCiudadExp" runat="server" SelectMethod="GetAll"
                                                        TypeName="MiProyecto.Controllers.CiudadController">
                                                        <SelectParameters>
                                                            <asp:Parameter Name="deptoId" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:ObjectDataSource>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxCallbackPanel>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Género *</label><br />
                                        <dx:ASPxRadioButtonList ID="rblSexo" runat="server" CssClass="form-control form-check"
                                            ValidationSettings-IsRequired="true" RepeatDirection="Horizontal" ClientInstanceName="rblSexo">
                                            <Items>
                                                <dx:ListEditItem Text="Masculino" Value="M" />
                                                <dx:ListEditItem Text="Femenino" Value="F" />
                                            </Items>
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Género es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxRadioButtonList>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <label>Estado Civil *</label><br />
                                        <dx:ASPxRadioButtonList ID="rblEstadoCivil" runat="server" CssClass="form-control form-check"
                                            ValidationSettings-IsRequired="true" RepeatDirection="Horizontal" ClientInstanceName="rblEstadoCivil">
                                            <Items>
                                                <dx:ListEditItem Text="Soltero(a)" Value="Soltero(a)" />
                                                <dx:ListEditItem Text="Casado(a)" Value="Casado(a)" />
                                                <dx:ListEditItem Text="Unión Libre" Value="Unión Libre" />
                                                <dx:ListEditItem Text="Viudo(a)" Value="Viudo(a)" />
                                                <dx:ListEditItem Text="Separado(a)" Value="Separado(a)" />
                                            </Items>
                                            <ValidationSettings ErrorTextPosition="Bottom">
                                                <RequiredField IsRequired="true" ErrorText="Estado Civil es requerido" />
                                            </ValidationSettings>
                                        </dx:ASPxRadioButtonList>
                                    </div>
                                </div>
                            </div>
                            <div class="navigation-buttons">
                                <dx:ASPxButton ID="CancelarButton2" runat="server" Text="Cancelar" AutoPostBack="false"
                                    ClientSideEvents-Click="function(s, e) { Clean(); }" />
                                <dx:ASPxButton ID="PrevButton2" runat="server" Text="Anterior"
                                    AutoPostBack="false" ClientSideEvents-Click="function(s, e) { pageControl.SetActiveTabIndex(0); }" />
                                <dx:ASPxButton ID="FinishButton2" runat="server" Text="Guardar"
                                    AutoPostBack="false" ClientSideEvents-Click="function(s, e) { save(1); }" />
                                <dx:ASPxCallback ID="cbSave" ClientInstanceName="cbSave" runat="server"
                                    OnCallback="cbSave_Callback">
                                    <ClientSideEvents CallbackComplete="function(s, e) { 
                                        Clean();
                                        loadingPanel.Hide(); 
                                        popupMessage.Show();
                                        }" />
                                </dx:ASPxCallback>
                            </div>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
            </TabPages>
        </dx:ASPxPageControl>
        <dx:ASPxPopupControl ID="popupMessage" runat="server" ClientInstanceName="popupMessage"
            Modal="true" ShowCloseButton="true" CloseAction="CloseButton" ShowHeader="true" HeaderText=""
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <div style="padding: 20px;">
                        <p>¡Guardado exitosamente!</p>
                    </div>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        <dx:ASPxLoadingPanel ID="loadingPanel" runat="server" ClientInstanceName="loadingPanel"
            Text="Guardando..." Modal="true">
        </dx:ASPxLoadingPanel>
        <script type="text/javascript" src="../Scripts/js/home.js">            
        </script>
    </div>
</asp:Content>
