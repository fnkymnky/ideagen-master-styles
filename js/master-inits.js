// ============================================
// WINDOWS PHONE 8 DEVICE-WIDTH BUGFIX FOR TWB
// ============================================
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
  var msViewportStyle = document.createElement('style')
  msViewportStyle.appendChild(
    document.createTextNode(
      '@-ms-viewport{width:auto!important}'
    )
  )
  document.querySelector('head').appendChild(msViewportStyle)
};

// ====================
// SVG FALLBACK TO PNG
// ====================
if(!Modernizr.svg) {
    $('img[src*="svg"]').attr('src', function() {
        return $(this).attr('src').replace('.svg', '.png');
    });
};

// =====================
// EQUAL HEIGHT COLUMNS
// =====================
equalheight = function(container){

var currentTallest = 0,
     currentRowStart = 0,
     rowDivs = new Array(),
     $el,
     topPosition = 0;

 $(container).each(function() {

   $el = $(this);
   $($el).height('auto')
   topPostion = $el.position().top;

   if (currentRowStart != topPostion) {
     for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
       rowDivs[currentDiv].height(currentTallest);
     }
     rowDivs.length = 0; // empty the array
     currentRowStart = topPostion;
     currentTallest = $el.height();
     rowDivs.push($el);
   } else {
     rowDivs.push($el);
     currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
  }
   for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
     rowDivs[currentDiv].height(currentTallest);
   }
 });
};

// =============
// IE DETECTION
// =============
function detectIE() {
    var ua = window.navigator.userAgent;

    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        // IE 10 or older => return version number
        return true;
    }

    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        // IE 11 => return version number
        return true;
    }

    // other browser
    return false;
}


// ============
// FORM LOADING
// ============
$('aside#tx-form .asset-code iframe, #tx-contact-form-iframe .asset-code iframe').addClass('form-hidden');
$('aside#tx-form .asset-code iframe, #tx-contact-form-iframe .asset-code iframe').on('load', function(){
    $('aside#tx-form .asset-code, #tx-contact-form-iframe .asset-code').css('background', 'none');
    $('aside#tx-form .asset-code iframe, #tx-contact-form-iframe .asset-code iframe').removeClass('form-hidden');
    $('aside#tx-form .asset-code iframe, #tx-contact-form-iframe .asset-code iframe').addClass('form-visible');
});

// WOW JS Initialisation
new WOW().init();

// ==========================
// EQUAL HEIGHT COLUMNS INIT
// ==========================
$(window).load(function() {
  equalheight('.equalheight');
  
  // =============
  // MASONRY INIT
  // =============
  // $('.card-list').masonry({
  //   // options
  //   itemSelector: 'li.grid-item',
  //   columnWidth: 'li.grid-item',
  //   percentPosition: true
  // });
  
});

// ===========================================================
// DETECT WINDOW SIZE CHANGES FOR MOBILE / DESKTOP NAVIGATION
// ===========================================================
$(window).resize(function(){
  equalheight('.equalheight');

  if( $(this).width() > 1024 ) {
      $("nav.site-nav").removeClass("nav-mobile-active").addClass("nav-desktop-active");
  };
  if( $(this).width() <= 1024 ) {
      $("nav.site-nav").removeClass("nav-desktop-active").addClass("nav-mobile-active");
  };
});


$(document).ready(function() {
  // ==================
  // IE DETECTION INIT
  // ==================
  // Add .equalheight class to children of .grid element to fix float layout issues in versions < IE10
   var isIE = detectIE();

   if (isIE) {
      $(".grid > div, .grid > li").addClass("equalheight");
   }


  // ========================
  // DESKTOP SITE NAVIGATION
  // ========================
  // Navigation - Detect for mobile / desktop and add class to the navigation to establish what it currently is
  if($(window).width() >= 1025) {
    $("nav.site-nav").removeClass("nav-mobile-active").addClass("nav-desktop-active");
  }
  if($(window).width() <= 1024) {
    $("nav.site-nav").removeClass("nav-desktop-active").addClass("nav-mobile-active");
  }

  var siteNav = $(".site-nav");
  var siteNavDropdownList = $(".site-nav__primary-options > li.has-dropdown");
  var siteNavDropdownLink = $(".site-nav__primary-options > li.has-dropdown > a")
  var siteNavOverlay = $(".site-nav__overlay");
  var siteNavSlideoutList = $(".nav-col>li");

  var dropdownHeightCalculated = 0;


  function applyDropdown(navItemAddTo) {
    var children = navItemAddTo.find("ul");

    siteNavDropdownList.addClass("is-closed");
    siteNavDropdownList.removeClass("is-open");

    if(children.length > 0) {
      navItemAddTo.removeClass("is-closed");
      navItemAddTo.addClass("is-open");
    };

    siteNavOverlay.addClass("is-active");

  };

  function removeDropdown(navItemRemoveFrom) {
      navItemRemoveFrom.removeClass("is-open");
      navItemRemoveFrom.addClass("is-closed");

      siteNavOverlay.removeClass("is-active");
  };

  function applySlideout(dropdownItemAddTo) {
    var children = dropdownItemAddTo.find("ul");

    if(children.length > 0) {
      dropdownItemAddTo.removeClass("is-closed");
      dropdownItemAddTo.addClass("is-open");
    };
  };

  function getDropdownHeight(navLink) {
    var selectNavListItem = navLink.parent();
    var selectNavListItemChildPanel = selectNavListItem.children(".site-nav__dropdown-panel");

    var getDropdownPanelHeight = selectNavListItemChildPanel.outerHeight(true);

    return getDropdownPanelHeight;
  }

  // ===============
  // DROPDOWN PANEL
  // ===============
  siteNavDropdownLink.on("click", function(e) {

    e.preventDefault();
    $(".site-nav__dropdown-panel").css("height", "auto");

    $(".has-slideout").removeClass("is-open").addClass("is-closed");
    
    if($(this).parent().hasClass("is-closed")) {
      applyDropdown($(this).parent());

      siteNav.removeClass("not-active");
      siteNav.addClass("active");

      var dropdownPanelHeight = getDropdownHeight($(this));

      dropdownHeightCalculated = dropdownPanelHeight - 1;
    }
    else {
      removeDropdown($(this).parent());
    };
  });


  // ========================
  // SLIDE OUT PANEL DESKTOP
  // ========================
  $(".has-slideout > a").on("click", function(e) {

    if(siteNav.hasClass("nav-desktop-active")) {
      e.preventDefault();
      $(".site-nav__dropdown-panel").css("height", "auto");

      if($(this).parent().hasClass("is-closed")) {

        $(".has-slideout").removeClass("is-open").addClass("is-closed");

        $(this).parent().removeClass("is-closed").addClass("is-open");

        if($(this).siblings(".site-nav__slideout-panel").height() < dropdownHeightCalculated) {
          $(this).siblings(".site-nav__slideout-panel").outerHeight(dropdownHeightCalculated);
        }
        else if($(this).siblings(".site-nav__slideout-panel").outerHeight() > dropdownHeightCalculated) {
          $(this).parents(".site-nav__dropdown-panel").height($(this).siblings(".site-nav__slideout-panel").height());
        };
      } 
      else if($(this).parent().hasClass("is-open")) {
        $(this).parent().removeClass("is-open").addClass("is-closed");
      };
    };
  });


  // =================================
  // MOBILE SLIDE OUT PANEL - DEFAULT
  // =================================
  $(".has-slideout .has-slideout__expand-btn").on("click", function(e) {

    if($(this).parent().hasClass("is-closed")) {

      $(".has-slideout").removeClass("is-open");
      $(".has-slideout").addClass("is-closed");

      $(this).parent().removeClass("is-closed");
      $(this).parent().addClass("is-open");
    } 
    else if($(this).parent().hasClass("is-open")) {
      $(this).parent().removeClass("is-open");
      $(this).parent().addClass("is-closed");
    }

  });

  // ==================================
  // MOBILE SLIDE OUT PANEL - PRODUCTS
  // ==================================
  $(".site-nav__dropdown-panel--products .has-slideout > a").on("click", function(e) {

    if(siteNav.hasClass("nav-mobile-active")) {
      e.preventDefault();

      if($(this).parent().hasClass("is-closed")) {

        $(".has-slideout").removeClass("is-open").addClass("is-closed");

        $(this).parent().removeClass("is-closed").addClass("is-open");
      } 
      else if($(this).parent().hasClass("is-open")) {
        $(this).parent().removeClass("is-open").addClass("is-closed");
      };
    };
  });


  // =====================
  // MOBILE NAV NAVIGATION
  // =====================
  var mobileSearchBtn = $(".site-nav__mobile-search-btn");
  var mobileSearchForm = $(".site-header__search-form");

  var mobileNavBtn = $(".site-nav__mobile-nav-btn");
  var mobileNav = $(".site-nav__primary-options");
  var mobileNavDropdownList = $(".nav-mobile-active .site-nav__primary-options > li.has-dropdown");

  mobileSearchBtn.on("click", function() {

    if(mobileSearchForm.hasClass("is-open")) {
      $(mobileSearchForm).removeClass("is-open").addClass("is-closed");
      mobileSearchBtn.removeClass("is-active");
      siteNavOverlay.removeClass("is-active");

      // Allow the body to be scrollable
      $("body").removeClass("nav-open");
    }
    else {
      $(mobileSearchForm).removeClass("is-closed").addClass("is-open");
      mobileSearchBtn.addClass("is-active");
      siteNavOverlay.addClass("is-active");

      // Stop the body from being scrollable
      $("body").addClass("nav-open");
    }
    if(mobileNav.hasClass("is-open")) {
      mobileNav.removeClass("is-open").addClass("is-closed");
      mobileNavBtn.removeClass("is-active");
      // Close any open dropdown panel
      mobileNavDropdownList.removeClass("is-open").addClass("is-closed");
      // Close any open slideout panel
      $(".has-slideout").removeClass("is-open").addClass("is-closed");
    }
  });

  mobileNavBtn.on("click", function() {
    if(mobileNav.hasClass("is-open")) {
      mobileNav.removeClass("is-open").addClass("is-closed");
      mobileNavBtn.removeClass("is-active");
      siteNavOverlay.removeClass("is-active");

      // Close any open dropdown panel
      mobileNavDropdownList.removeClass("is-open").addClass("is-closed");

      // Close any open slideout panel
      $(".has-slideout").removeClass("is-open").addClass("is-closed");
      
      // Allow the body to be scrollable
      $("body").removeClass("nav-open");
    }
    else {
      mobileNav.removeClass("is-closed").addClass("is-open");
      mobileNavBtn.addClass("is-active");
      siteNavOverlay.addClass("is-active");

      // Stop the body from being scrollable
      $("body").addClass("nav-open");
    }

    if(mobileSearchForm.hasClass("is-open")) {
      mobileSearchForm.removeClass("is-open").addClass("is-closed");
      mobileSearchBtn.removeClass("is-active");
    }
  });


  var mobileBackBtn = $(".site-nav__mobile-controls--back-btn");

  mobileBackBtn.on("click", function() {
    $(this).closest("li.is-open").removeClass("is-open").addClass("is-closed");
  });

  // ===========================================
  // MOBILE SLIDE OUT PANEL - PRODUCTS BACK BTN
  // ===========================================
  var mobileBackBtnProducts = $(".site-nav__mobile-controls--product-back-btn");

  mobileBackBtnProducts.on("click", function() {
    $(this).closest("li.is-open").removeClass("is-open").addClass("is-closed");
    console.log("clicked");
  });

  // ===========================
  // SITE NAV BACKGROUND OVERLAY
  // ===========================
  siteNavOverlay.on("click", function() {

      // Reset the height of the dropdown panel to auto so that when it is reopened, after a slideout panel being opened, 
      // it isn't stuck at the same height
      $(".site-nav__dropdown-panel").css("height", "initial");

      // Close any open dropdown panel
      siteNavDropdownList.removeClass("is-open").addClass("is-closed");

      // Close any open slideout panel
      $(".has-slideout").removeClass("is-open").addClass("is-closed");

      siteNavOverlay.removeClass("is-active");

      mobileSearchForm.removeClass("is-open").addClass("is-closed");

      mobileSearchBtn.removeClass("is-active");
      mobileNavBtn.removeClass("is-active");

      if(siteNav.hasClass("nav-mobile-active")) {
        $(".site-nav__primary-options").removeClass("is-open").addClass("is-closed");
      }

      // Allow <body> to be scrollable again
      $("body").removeClass("nav-open");

  });

  // ON-PAGE NAV FOR PRODUCTS
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      var offset = -121;
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top + offset
        }, 800);
        return false;
      }
    }
  });

  // ===========================
  // BLOG POST CATEGORY COLOURS
  // ===========================
  $('.item-category a').each(function () {
      if ($(this).text() == 'Aviation') {
          $(this).parent().css('background-color', '#691cb1');
      }
        else if ($(this).text() == 'Healthcare') {
          $(this).parent().css('background-color', '#385BA9');
      }
        else if ($(this).text() == 'Life Science') {
          $(this).parent().css('background-color', '#CA1E5C');
      }
        else if ($(this).text() == 'Manufacturing') {
          $(this).parent().css('background-color', '#459443');
      }
        else if ($(this).text() == 'Food and Drink') {
          $(this).parent().css('background-color', '#9AC93C');
      }
      else if ($(this).text() == 'Misc') {
          $(this).parent().css('background-color', '#C92127');
      }
      else if ($(this).text() == 'Industrial') {
          $(this).parent().css('background-color', '#cb6919');
      }
      else if ($(this).text() == 'Accounting Finance and Banking') {
          $(this).parent().css('background-color', '#49B2DA');
      }
  });


  //-----------------------------------------------------------
  //--------- BACK TO TOP BUTTON W/SMOOTH SCROLLING -----------
  //-----------------------------------------------------------
    // browser window scroll (in pixels) after which the "back to top" link is shown
    var offset = 300,
      //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
      offset_opacity = 1200,
      //duration of the top scrolling animation (in ms)
      scroll_top_duration = 700,
      //grab the "back to top" link
      $back_to_top = $('.back-to-top');

    //hide or show the "back to top" link
    $(window).scroll(function(){
      ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('back-to-top-is-visible') : $back_to_top.removeClass('back-to-top-is-visible back-to-top-fade-out');
      if( $(this).scrollTop() > offset_opacity ) { 
        $back_to_top.addClass('back-to-top-fade-out');
      }
    });

    //smooth scroll to top
    $back_to_top.on('click', function(event){
      event.preventDefault();
      $('body,html').animate({
        scrollTop: 0 ,
        }, scroll_top_duration
      );
    });

    // USE BOOTSTRAP SCROLLSPY TO DETECT THE ACTIVE AREAS 
    // AND ADD ACTIVE CLASS TO ON-PAGE NAV FOR PRODUCT PAGES
    $('body').attr('data-spy', 'scroll');
    $('body').attr('data-target', '#tab-navigation');
    $('body').scrollspy({ target: '#tab-navigation', offset:121 });

});

//
// Academy Intro Video - Stop it playing when the modal is closed on mobile
$("#academy-intro-video").on('hidden.bs.modal', function (e) {
    $("#academy-intro-video iframe").attr("src", $("#academy-intro-video iframe").attr("src"));
});