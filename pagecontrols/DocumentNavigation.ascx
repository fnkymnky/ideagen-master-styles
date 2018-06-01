<%@ Control Language="c#" Inherits="EasySiteWeb.Controls.DocumentNavigation" Codebehind="DocumentNavigation.ascx.cs" %>

<%-- IDG NAV MARKUP - edit to add / remove links --%>


<div id="skiptocontent">
    <a href="#-ux-content">Skip to main content</a>
</div>

<header class="site-header">
    <div class="site-header--global">
        <div class="page-container">

            <a href="/" class="site-header__logo" title="Home"><img src="/easysiteweb/easysite/styledata/master/img/ideagen-logo-full-colour.svg" alt="Ideagen Logo" width="130" height="30"/></a>

            <nav class="site-nav">
                <div class="site-nav__options-contain">
                    <ul class="site-nav__primary-options">

                        <li><a href="/" class="visible-xs">Home</a></li>

                        <li class="has-dropdown is-closed"><a href="/solutions/" aria-expanded="false">Solutions</a>
                            <div class="site-nav__dropdown-panel site-nav__dropdown-panel--solutions">
                                <div class="site-nav__mobile-controls">
                                    <div class="site-nav__mobile-controls--fixed">
                                        <button type="button" class="site-nav__mobile-controls--back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                    </div>
                                </div>
                                <ul>
                                    <li class="site-nav__dropdown-panel-title"><a href="/solutions/">Solutions</a>
                                        
                                            <ul class="nav-col">
                                            	<li><a href="/solutions/food-safety/">BRC Compliance</a></li>
                                                <li><a href="/solutions/control-management/">CAPA Management</a></li>
                                                <li><a href="/solutions/diagnostic-requesting/">Diagnostic Requesting</a></li>
                                                <li><a href="/solutions/document-management/">Document Management</a></li>
                                                <li><a href="/solutions/document-redaction/">Document Redaction</a></li>
                                                <li><a href="/solutions/document-review-and-co-authoring/">Document Review and Co-Authoring</a></li>
                                                <li><a href="/solutions/easa-and-caa-compliance/">EASA and CAA Compliance</a></li>
                                                <li><a href="/solutions/ehs-software-solutions/">EHS Management</a></li>
                                            </ul>
                                            <ul class="nav-col">
                                                <li><a href="/solutions/emergency-department-management/">Emergency Department Management</a></li>
                                                <li><a href="/solutions/fda-mhra-compliance/">FDA and MHRA Compliance</a></li>
                                                <li><a href="/solutions/incident-management/">Incident Management</a></li>
                                                <li><a href="/solutions/internal-audit/">Internal Audit</a></li>
                                                <li><a href="/solutions/iso-compliance/">ISO Standards Compliance</a></li>
                                                <li><a href="/solutions/medical-records-management/">Medical Records Management</a></li>
                                                <li><a href="/solutions/operational-audit/">Operational Audit</a></li>
                                                <li><a href="/solutions/performance-management/">Performance Management</a></li>
                                            </ul>
                                            <ul class="nav-col">
                                                <li><a href="/solutions/policy-management/">Policy Management</a></li>
                                                <li><a href="/solutions/quality-management-software/">Quality Management</a></li>
                                                <li><a href="/solutions/risk-management/">Risk Management</a></li>
                                                <li><a href="/solutions/safety-management-system/">Safety Management</a></li>
                                                <li><a href="/solutions/sox-compliance/">SOX Compliance</a></li>
                                                <li><a href="/solutions/supply-chain-ppap/">Supply Chain PPAP</a></li>
                                                <li><a href="/solutions/supplier-management/">Supplier Management</a></li>
                                                <li><a href="/solutions/training-and-development/">Training and Competence Management</a></li>
                                            </ul>
                                        
                                    </li>
                                </ul>
                                <div class="site-nav__featured-content">
                                    <ul>
                                        <li><a href="/resources/casestudies/johnson-matthey-improve-quality-management-with-ideagen-coruson/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/SOLUTIONS-johnson-mathey-case-study.jpg" alt="Johnson Matthey improve quality management with Ideagen Coruson"></a></li>
                                        <li><a href="/resources/blog/accounting-finance-and-banking/the-5cs-for-successful-document-management/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/SOLUTIONS-5c-for-successful-document-management.jpg" alt="Follow the five C's for successful document management"></a></li>
                                        <li><a href="/resources/whitepapers/who-owns-enterprise-risk/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/SOLUTIONS-who-owns-enterprise-risk.jpg" alt="Who owns Enterprise Risk?"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li class="has-dropdown is-closed"><a href="/products/">Products</a>
                            <div class="site-nav__dropdown-panel site-nav__dropdown-panel--products">
                                <div class="site-nav__mobile-controls">
                                    <div class="site-nav__mobile-controls--fixed">
                                        <button type="button" class="site-nav__mobile-controls--back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                    </div>
                                </div>
                                <ul>
                                    <li class="site-nav__dropdown-panel-title"><a href="/products/">Products</a>
                                        <ul class="nav-col">
                                            <li class="has-slideout is-closed">
                                                <a href="/products/q-pulse/">Q-Pulse<sup>&reg;</sup> <span class="site-nav__product-description">Quality Management Suite</span></a>
                                                <div class="site-nav__slideout-panel site-nav__slideout-panel--qpulse">
                                                    <img src="/easysiteweb/easysite/styledata/master-v2/img/navigation/products/q-pulse-logo-white.svg" alt="White Q-Pulse Logo" class="product-logo" height="40">
                                                    <span class="products-label">Products</span>
                                                    <div class="site-nav__mobile-controls">
                                                        <button type="button" class="site-nav__mobile-controls--product-back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                                    </div>
                                                    <ul class="nav-col">
                                                        <li><a href="/products/q-pulse/">Q-Pulse<sup>&reg;</sup> <span class="roboto-light">QMS</span> <span class="site-nav__product-description">Quality Management Software</span></a></li> 
                                                        <li><a href="/products/q-pulse-fair/">Q-Pulse<sup>&reg;</sup> <span class="roboto-light">FAIR</span> <span class="site-nav__product-description">First Article Inspection Software</span></a></li>
                                                        <li><a href="/products/q-pulse-npi/">Q-Pulse<sup>&reg;</sup> <span class="roboto-light">NPI</span> <span class="site-nav__product-description">New Product Introduction Software</span></a></li>
                                                        <li><a href="/products/q-pulse-ppap/">Q-Pulse<sup>&reg;</sup> <span class="roboto-light">PPAP</span> <span class="site-nav__product-description">Production Part Approval Process Software</span></a></li>
                                                    </ul>
                                                    <div class="site-nav__featured-content">
                                                        <a href="/resources/casestudies/midland-aerospace-reduce-errors-with-q-pulse-fair/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/Q-PULSE-midland-aerospace-case-study.jpg" alt="Case Study - Midland Aerospace Reduce Errors with Q-Pulse FAIR"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="has-slideout is-closed"><a href="/products/pentana-audit/">Pentana <span class="site-nav__product-description">Audit and Performance Management Suite</span></a>
                                                <div class="site-nav__slideout-panel site-nav__slideout-panel--pentana">
                                                    <img src="/easysiteweb/easysite/styledata/master-v2/img/navigation/products/pentana-logo-white.svg" alt="White Pentana Logo" class="product-logo" height="40">
                                                    <span class="products-label">Products</span>
                                                    <div class="site-nav__mobile-controls">
                                                        <button type="button" class="site-nav__mobile-controls--product-back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                                    </div>
                                                    <ul class="nav-col">
                                                        <li><a href="/products/pentana-audit/">Pentana<sup>&reg;</sup> <span class="roboto-light">Audit</span> <span class="site-nav__product-description">Audit Automation Software</span></a></li> 
                                                        <li><a href="/products/pentana-disclose/">Pentana<sup>&reg;</sup> <span class="roboto-light">Disclose</span> <span class="site-nav__product-description">Financial Disclosure Checklist Software</span></a></li>
                                                        <li><a href="/products/pentana-performance/">Pentana<sup>&reg;</sup> <span class="roboto-light">Performance</span> <span class="site-nav__product-description">Performance and Risk Management Software</span></a></li>
                                                    </ul>
                                                    <div class="site-nav__featured-content">
                                                        <a href="/resources/whitepapers/who-owns-enterprise-risk/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/SOLUTIONS-who-owns-enterprise-risk.jpg" alt="Who owns Enterprise Risk?"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="/products/coruson/">Coruson <span class="site-nav__product-description">Enterprise Cloud Safety Management Software</span></a></li>
                                            <li><a href="/products/pleasereview/">PleaseReview <span class="site-nav__product-description">Document Co-Authoring and Review Software</span></a></li>
                                            <li><a href="/products/dart/">Dart <span class="site-nav__product-description">Clinical Workflow Management Software</span></a></li>
                                            <li><a href="/products/easysite/">Easysite <span class="site-nav__product-description">Intranet Content Management Software</span></a></li>
                                            <li><a href="/products/academy/">Academy <span class="site-nav__product-description">E-Learning For Ideagen Products</span></a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="site-nav__featured-content">
                                    <a href="/resources/brochures/pleasereview-product-brochure/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/PRODUCTS-pleasereview-brochure.jpg" alt="PleaseReview product brochure download"></a>
                                </div>
                            </div>
                        </li>

                        <li class="has-dropdown is-closed"><a href="/industries/">Industries</a>
                            <div class="site-nav__dropdown-panel site-nav__dropdown-panel--industries">
                                <div class="site-nav__mobile-controls">
                                    <div class="site-nav__mobile-controls--fixed">
                                        <button type="button" class="site-nav__mobile-controls--back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                    </div>
                                </div>
                                <ul>
                                    <li class="site-nav__dropdown-panel-title"><a href="/industries/">Industries</a>
                                        <ul class="nav-col">
                                            <li><a href="/industries/aerospace-and-defence/">Aerospace and Defence</a></li>
                                            <li><a href="/industries/banking-risk-management/">Accounting, Finance and Banking</a></li>
                                            <li class="has-slideout is-closed"><a href="/industries/aviation/">Aviation</a>
                                                <button type="button" class="has-slideout__expand-btn"><span class="fa fa-angle-down"></span></button>
                                                <div class="site-nav__slideout-panel">
                                                    <ul>
                                                        <li class="site-nav__dropdown-panel-title"><a href="/industries/aviation/">Aviation</a>
                                                            <ul class="nav-col">
                                                                <li><a href="/industries/airlines/">Airlines</a></li>
                                                                <li><a href="/industries/airports-and-atc/">Airports and ATC</a></li>
                                                                <li><a href="/industries/aviation-regulators/">Aviation Regulators</a></li>
                                                                <li><a href="/industries/business-jets/">Business Jets</a></li>
                                                                <li><a href="/industries/helicopter/">Helicopter</a></li>
                                                                <li><a href="/industries/mro/">MRO</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <div class="site-nav__featured-content">
                                                        <a href="/company/news/airasia-selects-ideagen-coruson/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/AVIATION-air-asia-selects-coruson.jpg" alt="Air Asia selects Coruson for safety management"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="/industries/energy/">Energy</a></li>
                                            <li><a href="/industries/food-and-drink/">Food and Drink</a></li>
                                            <li class="has-slideout is-closed"><a href="/industries/healthcare/">Healthcare</a>
                                                <button type="button" class="has-slideout__expand-btn"><span class="fa fa-angle-down"></span></button>
                                                <div class="site-nav__slideout-panel">
                                                    <ul>
                                                        <li class="site-nav__dropdown-panel-title"><a href="/industries/healthcare/">Healthcare</a>
                                                            <ul class="nav-col">
                                                                <li><a href="/industries/assisted-conception/">Assisted Conception</a></li>
                                                                <li><a href="/industries/blood-services/">Blood Services</a></li>
                                                                <li><a href="/industries/cancer-services/">Cancer Services</a></li>
                                                                <li><a href="/industries/care-homes/">Care Homes</a></li>
                                                                <li><a href="/industries/hospitals/">Hospitals</a></li>
                                                                <li><a href="/industries/medical-imaging/">Medical Imaging</a></li>
                                                                <li><a href="/industries/pathology/">Pathology</a></li>
                                                                <li><a href="/industries/pharmacy/">Pharmacy</a></li>
                                                                <li><a href="/industries/private-healthcare/">Private Healthcare</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <div class="site-nav__featured-content">
                                                        <a href="/company/news/inspiration-healthcare-group-adopt-ideagen-q-pulse/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/HEALTHCARE-inspiration-healthcare-news.jpg" alt="Inspiration Healthcare Group plc adopt Ideagen Q-Pulse for compliance and process management"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="has-slideout is-closed"><a href="/industries/life-science/">Life Science</a>
                                                <button type="button" class="has-slideout__expand-btn"><span class="fa fa-angle-down"></span></button>
                                                <div class="site-nav__slideout-panel">
                                                    <ul>
                                                        <li class="site-nav__dropdown-panel-title"><a href="/industries/life-science/">Life Science</a>
                                                            <ul class="nav-col">
                                                                <li><a href="/industries/biotechnology/">Biotechnology</a></li>
                                                                <li><a href="/industries/blood-and-biologics/">Blood and Biologics</a></li>
                                                                <li><a href="/industries/medical-devices/">Medical Devices</a></li>
                                                                <li><a href="/industries/pharmaceutical/">Pharmaceutical</a></li>
                                                            </ul>
                                                            <div class="spacer"></div>
                                                            <ul class="nav-col">
                                                                <li><a href="/industries/qms-software-validation/">QMS Software Validation</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <div class="site-nav__featured-content">
                                                        <a href="/resources/casestudies/blood-bank-of-alaska-achieve-regulatory-compliance/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/LIFE-SCIENCE-blood-bank-of-alaska.jpg" alt="Blood Bank of Alaska achieve statewide 21 CFR Part 11 compliant document management"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="/industries/manufacturing/">Manufacturing</a></li>
                                            <li><a href="/industries/rail-safety/">Rail</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="site-nav__featured-content">
                                    <a href="/resources/casestudies/hepcomotion-future-proof-the-company-with-q-pulse/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/INDUSTRIES-hepcomotion-case-study.jpg" alt="HepcoMotion future proof the company by upgrading to Q-Pulse"></a>
                                </div>
                            </div>
                        </li>

                        <li><a href="/support/">Support</a></li>

                        <li class="has-dropdown is-closed"><a href="/resources/">Resources</a>
                            <div class="site-nav__dropdown-panel site-nav__dropdown-panel--resources">
                                <div class="site-nav__mobile-controls">
                                    <div class="site-nav__mobile-controls--fixed">
                                        <button type="button" class="site-nav__mobile-controls--back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                    </div>
                                </div>
                                <ul>
                                    <li class="site-nav__dropdown-panel-title"><a href="/resources/">Resources</a>
                                        <ul class="nav-col">
                                            <li><a href="/resources/blog/">Blog</a></li>
                                            <li><a href="/resources/brochures/">Brochures</a></li>
                                            <li><a href="/resources/casestudies/">Case Studies</a></li>
                                            <li><a href="/resources/flyers/">Flyers</a></li>
                                            <li><a href="/resources/whitepapers/">White Papers</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="site-nav__featured-content">
                                    <a href="/resources/blog/industrial/digitalisation-industry-40-in-manufacturing/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/RESOURCES-digitisation-and-industry-40.jpg" alt="Blog Post - Digitisation and Industry 4.0 in manufacturing"></a>
                                </div>
                            </div>
                        </li>

                        <li class="has-dropdown is-closed"><a href="/company/">Company</a>
                            <div class="site-nav__dropdown-panel site-nav__dropdown-panel--company">
                                <div class="site-nav__mobile-controls">
                                    <div class="site-nav__mobile-controls--fixed">
                                        <button type="button" class="site-nav__mobile-controls--back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                    </div>
                                </div>
                                <ul>
                                    <li class="site-nav__dropdown-panel-title"><a href="/company/">Company</a>
                                        <ul class="nav-col">
                                            <li><a href="/company/certifications-and-memberships/">Certifications and Memberships</a></li>
                                            <li><a href="/company/events/">Events</a></li>
                                            <li class="has-slideout is-closed"><a href="/company/investor-relations/">Investor Relations</a>
                                                <button type="button" class="has-slideout__expand-btn"><span class="fa fa-angle-down"></span></button>
                                                <div class="site-nav__slideout-panel">
                                                    <ul>
                                                        <li class="site-nav__dropdown-panel-title"><a href="/company/investor-relations">Investor Relations</a>
                                                            <ul class="nav-col">
                                                                <li><a href="/company/advisors/">Advisors</a></li>
                                                                <li><a href="/company/aim-rule-26/">AIM Rule 26</a></li>
                                                                <li><a href="/company/board-of-directors/">Board of Directors</a></li>
                                                                <li><a href="/company/constitutional-documents/">Constitutional Documents</a></li>
                                                                <li><a href="/company/corporate-governance/">Corporate Governance</a></li>
                                                                <li><a href="/company/financial-reports/">Financial Reports and Documents</a></li>
                                                                <li><a href="/company/gender-pay-report/">Gender Pay Report</a></li>
                                                                <li><a href="/company/investor-news/">Investor News</a></li>
                                                                <li><a href="/company/shareholder-services/">Shareholder Services</a></li>
                                                                <li><a href="/company/shares-and-shareholdings/">Shares and Holdings</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <div class="site-nav__featured-content">
                                                        <a href="/company/news/ideagen-names-ian-hepworth-as-chief-technology-officer/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/INVESTORS-ideagen-name-ian-hepworth-as-cto.jpg" alt="Ideagen names Ian Hepworth as Chief Technology Officer"></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="/company/news/">News</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="site-nav__featured-content">
                                    <a href="/company/news/dawn-food-products-implements-pentana-audit/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/COMPANY-dawn-foods-implement-pentana-audit.jpg" alt="Dawn Foods implement Pentana Audit worldwide"></a>
                                </div>
                            </div>
                        </li>

                        <li class="has-dropdown is-closed"><a href="/careers/">Careers</a>
                            <div class="site-nav__dropdown-panel  site-nav__dropdown-panel--careers">
                                <div class="site-nav__mobile-controls">
                                    <div class="site-nav__mobile-controls--fixed">
                                        <button type="button" class="site-nav__mobile-controls--back-btn"><span class="fa fa-angle-left"></span> Back</button>
                                    </div>
                                </div>
                                <ul>
                                    <li class="site-nav__dropdown-panel-title"><a href="/careers/">Careers</a>
                                        <ul class="nav-col">
                                            <li><a href="/careers/current-vacancies/">Current Vacancies</a></li>
                                            <li><a href="/careers/meet-our-people/">Meet Our People</a></li>
                                            <li><a href="/careers/benefits-and-rewards/">Benefits and Rewards</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="site-nav__featured-content">
                                    <a href="/company/news/ideagen-recognised-at-scotlandis-digital-technology-awards/"><img src="/EasySiteWeb/EasySite/StyleData/master-v2/img/navigation/featured-banners/CAREERS-ideagen-at-scotlandis-awards.jpg" alt="Ideagen recognised at ScotlandIS Digital Technology Awards"></a>
                                </div>
                            </div>
                        </li>

                        <li><a href="/contact/">Contact</a></li>
                    </ul>
                </div>
            </nav>


            <!-- SEARCH BOX -->
            <form action="<%=DefaultSearchPage%>" method="get" class="site-header__search-form is-closed">                
                    <input type="search" class="site-header__search-form--input" placeholder="Search.." name="q">
                    <button type="submit" class="site-header__search-form--button"><span class="fa fa-search"></span></button>
            </form>

            <button type="button" class="site-nav__mobile-search-btn">
                    <span class="sr-only">Toggle search</span>
                    <span class="fa fa-search"></span>
            </button>

            <button type="button" class="site-nav__mobile-nav-btn">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="fa fa-bars"></span>
            </button>
            
        </div><!-- .page-container -->
    </div><!-- site-header-global -->
</header><!-- fixed-header -->

<div id="overview" class="site-nav__overlay"></div>


<%-- DO NOT REMOVE --%>
<asp:Xml ID="xmlDisplay" Runat="server" Visible="false" />
<asp:Panel ID="pnlNavs" runat="server" Visible="false">
<asp:PlaceHolder ID="xmlExtraNav" runat="server" Visible="false" />
</asp:Panel>
