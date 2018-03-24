$( document ).ready(function() {

	
       list_height = function(){
		    //var constructor_height = $(".lego_relative").height();
			//var list_height = 0.868 * constructor_height;
            //$(".lego_list").height(list_height);
            $(".lego_list").height($(".lego_relative").height());
        };

    setTimeout(function() {
		
		//$(".lego_list").show();
        list_height();

    }, 50);
	/*setTimeout(function() { 
		$(".lego_card").each(function() {
			$(this).show();
		});
	}, 500);*/

     jQuery('.list_wrapper').scrollbar();

    $(window).resize(function () {
        list_height();
    });

    $( "#light_checkbox" ).change(function() {
      if ($("#light_checkbox").is( ":checked" )) {
        $(".lego_light").css("z-index","55");
      }
      else{
        $(".lego_light").css("z-index","20");
      }
    }).change();


    $(".right_arrow").click(function(){
        var size = $( ".slide" ).length;
        var dispnone = 0;

        for (i = 0; i <= size; ++i) {
            var $slide = $( ".slide" ).get(i);

            if ($($slide).css("display") == "none") {
                dispnone++ ;
            }
        }
        console.log(dispnone);

        if (dispnone == size-1) {
            return;
        }
        else
        {
            for (j = 0; j <= dispnone; ++j) {
                $($( ".slide" ).get(j)).css("display","none");
            }
        }   
    });

    $(".left_arrow").click(function(){
        var size = $( ".slide" ).length;
        var dispnone = 0;

        for (i = 0; i <= size; ++i) {
            var $slide = $( ".slide" ).get(i);

            if ($($slide).css("display") == "none") {
                dispnone++ ;
            }
        }
        //console.log(dispnone);

        if (dispnone < 0) {
            return;
        }
        else
        {
                $($( ".slide" ).get(dispnone-1)).css("display","inline-block");
        }   
    });



    $(".lego_bottom_slider").hide();
    $(".lego_bottom_slider").show();

    $(".fotoprint_btn").click(function(){
        $(".lego_bottom-color").hide();
        if ($(".lego_bottom_slider").is(":visible")) {
            $(".lego_bottom_slider").hide()
        }else
        {
           $(".lego_bottom_slider").show(function(){
                $(this).css("color","#00c7fd");
            }); 
        }
    });

    $(".colorprint_btn").click(function(){
        $(".lego_bottom_slider").hide();
        if ($(".lego_bottom-color").is(":visible")) {
            $(".lego_bottom-color").hide()
        }
        else
        {
            $(".lego_bottom-color").show(function(){
                $(this).css("color","#00c7fd");
            });
        }
    });

    

    $(".lego_bottom-right>button").click(function(){
        $('html, body').animate({
            scrollTop: $(".sk_order_info").offset().top
        }, 1000);
    });

});