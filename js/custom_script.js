
$(document).ready(function() {

		$("#console-debug").hide();

		$("#btn-debug").click(function() {

			$("#console-debug").toggle();
		});

});


jQuery(document).ready(function() {

	var navOffset = jQuery(".container-fluid").offset().top;

    jQuery(".container-fluid").wrap('<div class="nav-placeholder"></div>');
    jQuery(".nav-placholder").height(jQuery("nav").outerHeight());

    jQuery(window).scroll(function(){

        var scrollPos = jQuery(window).scrollTop();

       if(scrollPos >= navOffset) {
        	jQuery(".container-fluid").css({position:"fixed"});
        	jQuery(".container-fluid").css({top:0});
        	jQuery("#demo1").css({visibility: "visible"});
        	jQuery(".container-fluid").css({opacity:0.9});
        }else {
        	jQuery(".container-fluid").css({position:"relative"});
        	jQuery("#demo1").css({visibility: "hidden"});
        	jQuery(".container-fluid").css({opacity:1});
        }

    });


});
