<%@ Page Title="Blog" Language="C#" AutoEventWireup="true" MasterPageFile="~/Layout.master" CodeBehind="List.aspx.cs" Inherits="DXWebAdmisiones.BlogTimeline" %>
<script runat=server>
protected String GetPreviewText() {
    var previewTextLength = 335;
    var blogBody = Eval("Body").ToString();
    return blogBody.Length > previewTextLength ? blogBody.Substring(0, previewTextLength) : blogBody;
}
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="page-header">
                <h1>Blog</h1>
            </div>
          
        </div>                        
    </div>
</div>
</asp:Content>