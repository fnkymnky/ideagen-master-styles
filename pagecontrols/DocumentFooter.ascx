<%@ Control Language="C#" Inherits="EasySiteWeb.Controls.DocumentFooter" Codebehind="DocumentFooter.ascx.cs" %>
 <footer id="footer" class="row">
    <div class="page-container">
        <div class="col-md-12">
            <div class="footer-legal-and-logo">
                <div class="legal-links">
                    <a href="/terms-and-conditions/">Terms &amp; Conditions</a> &#124;
                    <a href="/privacy-policy/">Privacy Policy</a> &#124;
                    <a href="/gdpr-commitment/">GDPR Commitment</a> &#124;
                    <a href="/sitemap/">Sitemap</a>
                </div>
                <div class="footer-logo">
                    <img src="/easysiteweb/easysite/styledata/ideagen_master/img/ideagen-logo-full-colour.svg" width="120" alt="Ideagen Logo" />
                </div>
            </div>
            <div class="footer-social-and-copyright">
                <p class="copyright">
                    &copy; Copyright 
                        <script type="text/javascript">var theDate = new Date()
                            document.write(theDate.getFullYear())
                        </script> Ideagen Plc.
                    <br />
                    Ideagen plc, Ergo House, Mere Way, Ruddington Fields Business Park, Ruddington, Nottinghamshire, NG11 6JS
                </p>
                <ul class="social-media-links">
                    <li><a href="https://www.linkedin.com/company/ideagen-plc"><img src="/easysiteweb/easysite/styledata/ideagen_master/img/social-media/linkedin-icon.svg" alt="LinkedIn" height="40" width="40" /></a></li>
                    <li><a href="https://twitter.com/Ideagen_Plc"><img src="/easysiteweb/easysite/styledata/ideagen_master/img/social-media/twitter-icon.svg" alt="Twitter" height="40" width="40" /></a></li>
                    <li><a href="https://www.youtube.com/channel/UCx0r8eis77_pBuDiPlfp87Q"><img src="/easysiteweb/easysite/styledata/ideagen_master/img/social-media/youtube-icon.svg" alt="YouTube" height="40" width="40" /></a></li>
                    <li><a href="https://www.facebook.com/IdeagenPLC/"><img src="/easysiteweb/easysite/styledata/ideagen_master/img/social-media/facebook-icon.svg" alt="Facebook" height="40" width="40" /></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>



<a href="#0" title="Back The Top" class="back-to-top">Back To Top</a>

<% if (RequestContext.UserToken.UserId == 0 || (RequestContext.UserToken.UserId != 0 && RequestContext.UserToken.Privileges.Count == 0 )) { %> 
    <!-- VENDOR SCRIPTS -->
    <script src="/easysiteweb/easysite/styledata/master-v2/js/vendor/bootstrap.min.js"></script>
    <script src="/easysiteweb/easysite/styledata/master-v2/js/vendor/respond.min.js"></script>
    <!-- GLOBAL PLUGINS -->
    <script src="/easysiteweb/easysite/styledata/master-v2/js/plugins/wow.min.js"></script>
    <!-- PAGE SPECIFIC PLUGINS -->
    <script src="/easysiteweb/easysite/styledata/master-v2/js/plugins/masonry.min.js"></script>
    <!-- MASTER(GLOBAL) SCRIPT INITIALISATIONS -->
    <script src="/easysiteweb/easysite/styledata/master-v2.1/js/master-inits.min.js?v=1.1"></script>

<!--[if lte IE 8]>
    <script>
        $('ol.card-list').masonry( 'destroy' );
    </script>
<![endif]-->


<% }  %>

