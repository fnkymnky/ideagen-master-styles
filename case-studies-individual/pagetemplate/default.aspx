<%@ Page language="c#" AutoEventWireup="true" validateRequest="false" Inherits="EasySite.API.StyleTemplate" %>
<%@ Register TagPrefix="EIBS" Namespace="EasySite.API" Assembly="EasySiteAPI" %>
<%@ Register Assembly="EasySite" Namespace="EasySite" TagPrefix="es" %>
<%@ Import Namespace="EasySite.PageRequirements" %>
<script type="text/C#" runat="server">
protected override void OnPreRender(EventArgs e) {
    base.OnPreRender(e);
    PageRequirementsHelper helper = new PageRequirementsHelper();
    helper.JavascriptProxy.RegisterFramework(ClientFramework.JQueryCore);
    helper.JavascriptProxy.RegisterFramework(ClientFramework.JQueryUi);
}
</script>


<asp:PlaceHolder ID="DocumentMasthead" runat="server" />

<asp:PlaceHolder ID="DocumentNavigation" runat="server" />

<% if (!IsEditMode()) { %>
    <div id="content" class="case-studies-individual">
<% } else { %>
    <div id="content" class="mode-edit">
<% } %>


    	<EIBS:EasySiteMasterForm id="frmMain" method="post" runat="Server" onsubmit="">
           <asp:PlaceHolder id="Plugin" runat="server" />
    	   <asp:PlaceHolder ID="ControlBar" Runat="server" />
    	   <asp:PlaceHolder ID="PageEditToolBar" Runat="server" />
    	   
           <div class="ClientAreaContainer -idgbstp">
    	      <asp:PlaceHolder ID="ClientArea" Runat="server" />
    	   </div>						
    	</EIBS:EasySiteMasterForm>

    	<asp:PlaceHolder ID="pnlExternalMarkup" runat="Server" />

        <asp:PlaceHolder ID="DocumentFooter" Runat="server" />

    </div><!-- #content -->

<asp:PlaceHolder ID="DocumentAnalytics" Runat="server" />

<% if (!IsEditMode()) { %>

<% } else { %>
    <link rel="stylesheet" href="/easysiteweb/easysite/styledata/master/css/easysite-fixes.css" />
<% } %>