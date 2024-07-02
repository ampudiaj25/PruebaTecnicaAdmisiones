<%@ Page Title="Blog" Language="C#" AutoEventWireup="true" MasterPageFile="~/Layout.master" CodeBehind="List.aspx.cs" Inherits="DXWebAdmisiones.BlogTimeline" %>

<script runat="server">
    protected String GetPreviewText()
    {
        var previewTextLength = 335;
        var blogBody = Eval("Body").ToString();
        return blogBody.Length > previewTextLength ? blogBody.Substring(0, previewTextLength) : blogBody;
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <dx:ASPxGridViewExporter ID="gridExporter" runat="server" GridViewID="gridInscripciones">
                </dx:ASPxGridViewExporter>
                <div style="text-align: right">
                    <dx:ASPxButton ID="btnExportExcel" runat="server" Text="Excel"
                        OnClick="btnExportExcel_Click" HorizontalAlign="Right">
                        <Image Url="../Content/Images/Excel2_35735.png" />
                    </dx:ASPxButton>
                </div>    
                <dx:ASPxGridView ID="gridInscripciones" runat="server" AutoGenerateColumns="False"
                    DataSourceID="odsInscripciones">
                    <Styles Header-BackColor="#99ccff" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="estado" Caption="Estado" VisibleIndex="1" />
                        <dx:GridViewDataComboBoxColumn FieldName="codigoSede" Caption="Sede" VisibleIndex="2">
                            <PropertiesComboBox DataSourceID="odsSedesActivas" TextField="nombre" ValueField="codigo" ValueType="System.Int32" />
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="codigoPrograma" Caption="Sede" VisibleIndex="3">
                            <PropertiesComboBox DataSourceID="odsProgramasActivos" TextField="nombre" ValueField="codigo" ValueType="System.Int32" />
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataTextColumn FieldName="periodoAcademico" Caption="Periodo Académico" VisibleIndex="4" />

                        <dx:GridViewDataComboBoxColumn FieldName="Aspirante.TipoDocumento.codigo" Caption="Tipo documento" VisibleIndex="2">
                            <PropertiesComboBox DataSourceID="odsTiposDocActivos" TextField="nombre" ValueField="codigo" ValueType="System.Int32" />
                        </dx:GridViewDataComboBoxColumn>

                        <dx:GridViewDataTextColumn FieldName="Aspirante.nroDoc" Caption="Número Documento" VisibleIndex="6" />
                        <dx:GridViewDataTextColumn FieldName="nombresAspirante" Caption="Nombres" VisibleIndex="7">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="apellidosAspirante" Caption="Apellidos" VisibleIndex="8">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFilterRow="True" ShowFilterRowMenu="True" />
                    <SettingsBehavior AllowSort="True" />
                    <SettingsPager PageSize="10" />
                    <SettingsText EmptyDataRow="No hay datos para mostrar" />
                </dx:ASPxGridView>
                <asp:ObjectDataSource ID="odsSedesActivas" runat="server"
                    TypeName="MiProyecto.Controllers.SedeController"
                    SelectMethod="GetAll"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="odsTiposDocActivos" runat="server"
                    TypeName="MiProyecto.Controllers.TipoDocumentoController"
                    SelectMethod="GetAll"></asp:ObjectDataSource>

                <asp:ObjectDataSource ID="odsProgramasActivos" runat="server"
                    TypeName="MiProyecto.Controllers.ProgramaController"
                    SelectMethod="GetAll"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="odsInscripciones" runat="server" OnSelected="odsInscripciones_Selected"
                    TypeName="MiProyecto.Controllers.InscripcionController"
                    SelectMethod="GetAll"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>
