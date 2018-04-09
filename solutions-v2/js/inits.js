// Header Image Parallax
$('.solution-header--risk-management').parallax({imageSrc: '/easysiteweb/easysite/styledata/master-v2.1/img/solutions/risk-management/risk-management-bg.jpg'});
$('.solution-header--ehs-management').parallax({imageSrc: '/easysiteweb/easysite/styledata/master-v2.1/img/solutions/ehs-management/ehs-management-header-bg'});

$("#highlight-form-trigger").on("click", function(e) {
   $(".solution-header--form").removeClass("form-highlight");
   $(".solution-header--form").addClass("form-highlight");
});

//Form validation script init
$.validate({
   borderColorOnError: '',
   scrollToTopOnError: false
});

$('.carousel--video').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  asNavFor: '.carousel--pager',
  autoplay: true,
  autoplaySpeed: 4000,
  fade: true,
  draggable: false,
  zIndex: 100,
  prevArrow: $('.carousel--video-prev-btn'),
  nextArrow: $('.carousel--video-next-btn'),
  responsive: [
    {
      breakpoint: 992,
      settings: {
        draggable: true
      }
    }
  ]
});

$('.carousel--pager').slick({
  slidesToShow: 2,
  slidesToScroll: 1,
  asNavFor: '.carousel--video',
  dots: false,
  focusOnSelect: true,
  variableWidth: true,
  adaptiveHeight: false,
  useTransform: false
});

// ==========================
// STOP VIDEO ON MODAL CLOSE
// ==========================
$("#bdo-casestudy-video").on('hidden.bs.modal', function (e) {
    $("#bdo-casestudy-video iframe").attr("src", $("#bdo-casestudy-video iframe").attr("src"));
});
$("#haeco-casestudy-video").on('hidden.bs.modal', function (e) {
    $("#haeco-casestudy-video iframe").attr("src", $("#haeco-casestudy-video iframe").attr("src"));
});