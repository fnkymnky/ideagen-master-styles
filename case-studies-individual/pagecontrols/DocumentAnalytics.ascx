<%@ Control Language="C#" Inherits="EasySite.API.StyleComponent" %>

<% if (RequestContext.UserToken.UserId == 0 || (RequestContext.UserToken.UserId != 0 && RequestContext.UserToken.Privileges.Count == 0 )) { %> 
	<!-- HEADER TRANSITION AND INITS -->
	<script src="/easysiteweb/easysite/styledata/case-studies-individual/js/header-transition.js"></script>
	<script src="/easysiteweb/easysite/styledata/case-studies-individual/js/inits.js"></script>
<% }  %>