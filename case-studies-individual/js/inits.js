$(document).ready(function(){
    $(window).scroll(function(){
		if ( $("#tx-contain").hasClass("modify") ) {
		    $("#stubbed").addClass("header-invisible");
		    $("#stubbed").removeClass("header-visible");
		} else {
			$("#stubbed").addClass("header-visible");
			$("#stubbed").removeClass("header-invisible");

		}
    });

	//CONVERT IMG TAG TO CSS BACKGROUND-IMAGE FOR BLOG POST LISTER
	$('.bg-img .pel .cls .asset img').each(function(){
	    var html="<div style='width:" + $(this).width() + "px;height:" + $(this).height() + "px;background:url(" + $(this).attr('src')+ ") no-repeat center center;color:#fff;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;background-size:cover;height:100%;width:100%;'></div>"
	    $(html).insertBefore($(this));
	    $(this).remove(); //Removes the original image. Can be commented out to leave it in.
	});

	$(".defaultorangebutton").removeClass("defaultorangebutton");
	$(".download-pdf").addClass("btn btn-lg btn-ideagen-blue-dark");

});