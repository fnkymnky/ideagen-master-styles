//CONVERT IMG TAG TO CSS BACKGROUND-IMAGE FOR BLOG POST LISTER
$('.card .item-thumbnail img').each(function(){
    var html="<div style='width:" + $(this).width() + "px;height:" + $(this).height() + "px;background:url(" + $(this).attr('src')+ ") no-repeat center center;color:#fff;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;background-size:cover;height:100%;width:100%;'></div>"
    $(html).insertBefore($(this));
    $(this).remove(); //Removes the original image. Can be commented out to leave it in.
});

// INITIALISE MASONRY
$('.card-list').masonry({
  // options
  itemSelector: 'li.grid-item',
  columnWidth: 'li.grid-item',
  percentPosition: true
});

