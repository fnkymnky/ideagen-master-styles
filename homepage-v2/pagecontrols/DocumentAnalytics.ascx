<%@ Control Language="C#" Inherits="EasySite.API.StyleComponent" %>

<% if (RequestContext.UserToken.UserId == 0 || (RequestContext.UserToken.UserId != 0 && RequestContext.UserToken.Privileges.Count == 0 )) { %> 
	
	<!-- Slick Slider Plug-In Load -->
	<script src="/easysiteweb/easysite/styledata/master-v2/js/plugins/slick.min.js"></script>

	<!-- Script Inits -->
	<script src="/easysiteweb/easysite/styledata/homepage-v2/js/inits.js"></script>

<% }  %>