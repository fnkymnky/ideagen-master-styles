$(document).ready(function ($) {
    if ($('#tx-owl-carousel').length) {
        $("#tx-owl-carousel").owlCarousel({
          // Most important owl features
          items: 1,
          itemsCustom: false,
          itemsDesktop: false,
          itemsDesktopSmall: false,
          itemsTablet: false,
          itemsTabletSmall: false,
          itemsMobile: false,
          singleItem: false,
          itemsScaleUp: false,

          //Basic Speeds
          slideSpeed: 200,
          paginationSpeed: 800,
          rewindSpeed: 1000,

          //Autoplay
          autoPlay: false,
          stopOnHover: false,

          // Navigation
          navigation: true,
          navigationText: ["", ""],
          rewindNav: true,
          scrollPerPage: false,

          //Pagination
          pagination: true,
          paginationNumbers: false,

          // Responsive
          responsive: true,
          responsiveRefreshRate: 200,
          responsiveBaseWidth: window,

          // CSS Styles
          baseClass: "owl-carousel",
          theme: "owl-theme",

          //Lazy load
          lazyLoad: false,
          lazyFollow: true,
          lazyEffect: "fade",

          //Auto height
          autoHeight: false,

          //JSON
          jsonPath: false,
          jsonSuccess: false,

          //Mouse Events
          dragBeforeAnimFinish: true,
          mouseDrag: true,
          touchDrag: true,

          //Transitions
          transitionStyle: false,

          // Other
          addClassActive: false,

          //Callbacks
          beforeUpdate: false,
          afterUpdate: false,
          beforeInit: false,
          afterInit: false,
          beforeMove: false,
          afterMove: false,
          afterAction: false,
          startDragging: false,
          afterLazyLoad: false
      });
  };
});