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
    <div id="content">
<% } else { %>
    <div id="content" class="mode-edit">
<% } %>
        <div class="-idgbstp">
            <div class="nav-overlay"></div>

            <header id="standard" class="blog-palette" role="banner">
                <button type="button" class="mobile-nav-btn visible-xs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon icon-hamburger-nav"></span>
                </button>
                
                <a href="/" title="Ideagen.com"><img src="/easysiteweb/easysite/styledata/ideagen_master/img/logos/ideagen-logo-white.svg" alt="Ideagen PLC" class="site-logo" /></a>

                <asp:PlaceHolder ID="BreadCrumbTrail" Runat="server" />
                <div class="search">
                    <button class="search-button" type="button"><span class="icon icon-search"></span></button>
                </div>
            </header>
        </div>

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

    <div id="searchoverlay" class="-idgbstp">
        <div class="search-overlay">
            <div class="search-overlay-content">
                <button type="button" class="search-overlay-close"><span class="icon icon-close-icon"></span></button>
                <h1>Search Ideagen.com</h1>
                    
            <form action="<%=DefaultSearchPage%>" method="get">
                <div class="input-group">
                    <input type="text" class="form-control search-form-control" placeholder="Search" name="q">
                    <div class="input-group-btn">
                        <button type="submit" class="search-form-button"><span class="icon icon-search"></span></button>
                    </div>
                </div>
            </form>

                <h2>E-Mail Us</h2>
                <p><a href="mailto:info@ideagen.com">info@ideagen.com</a></p>

                <h2>Phone Us</h2>
                <p><strong>Head Office</strong> <a href="tel:+441629699100">+44 (0) 1629 699 100</a></p>
                <p><strong>Support</strong> <a href="tel:+441629699400">+44 (0) 1629 699 400</a></p>
                <p><strong>US Office and Support</strong> <a href="tel:+18883560">+1 (202) 888 3560</a></p>


            </div>
        </div>
    </div>

<asp:PlaceHolder ID="DocumentAnalytics" Runat="server" />

<% if (!IsEditMode()) { %>

<% } else { %>
    <link rel="stylesheet" href="/easysiteweb/easysite/styledata/master/css/easysite-fixes.css" />
<% } %>
