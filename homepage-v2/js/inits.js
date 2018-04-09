 $('.homepage-carousel').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: true,
  asNavFor: '.featuredcontent',
  autoplay: true,
  autoplaySpeed: 4000,
  fade: true,
  draggable: false,
  responsive: [
    {
      breakpoint: 992,
      settings: {
        draggable: true
      }
    }
  ]
});
 
$('.featuredcontent').slick({
  slidesToShow: 4,
  slidesToScroll: 1,
  asNavFor: '.homepage-carousel',
  dots: false,
  focusOnSelect: true,
  variableWidth: true,
  adaptiveHeight: false
});