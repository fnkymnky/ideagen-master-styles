//CONVERT IMG TAG TO CSS BACKGROUND-IMAGE FOR BLOG POST INDIVIDUAL PAGE FEATURE IMAGE
$('.card .item-thumbnail img').each(function(){
    var html="<div class='case-study-cover-image' style='background:url(" + $(this).attr('src')+ ") no-repeat center center;color:#fff;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;background-size:cover;height:200px;width:100%;'></div>"
    $(html).insertBefore($(this));
    $(this).remove(); //Comment out this line if you want to leave the original image
});


// INITIALISE MASONRY
$('.card-list').masonry({
  // options
  itemSelector: 'li.grid-item',
  columnWidth: 'li.grid-item',
  percentPosition: true
});