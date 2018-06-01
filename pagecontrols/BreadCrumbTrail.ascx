<%@ Control Language="c#" Inherits="EasySiteWeb.BreadCrumbTrail" %>

<div id="sx-bc" class="sx-bco breadcrumbs">
	<asp:Xml ID="xmlDisplay" Runat="server" />	
</div>

<%-- // Swap for bct 
                <div class="breadcrumbs">
                    <a href="">Grand Parent Page</a>
                        <span class="breadcrumb-separator">&rsaquo;</span>
                    <a href="">Parent Page</a>
                        <span class="breadcrumb-separator">&rsaquo;</span>
                    <a href="">Child/Current Page</a>
                </div>

// --%>