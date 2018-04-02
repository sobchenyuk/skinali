var SlideCount = 1;
var interval;
var ua = navigator.userAgent.toLowerCase();
var isOpera = (ua.indexOf('opera')  > -1);
var isIE = (!isOpera && ua.indexOf('msie') > -1);
var Mirror_var = 0;
var BlackWhite_var = 0;
var Sepia_var = 0;

function getDocumentHeight() {
  return Math.max(document.compatMode != 'CSS1Compat' ? document.body.scrollHeight : document.documentElement.scrollHeight, getViewportHeight());
}

function getViewportHeight() {
  return ((document.compatMode || isIE) && !isOpera) ? (document.compatMode == 'CSS1Compat') ? document.documentElement.clientHeight : document.body.clientHeight : (document.parentWindow || document.defaultView).innerHeight;
}

function Mirror(){
	if (Mirror_var == 0){
		document.getElementById('sk_mirror').style.backgroundPosition = 'center -58px';
		document.getElementById('sk_mirror_text').style.color = '#3592ab';
		document.getElementById('sk_main_order_picture').style.transform = 'scale(-1, 1)';
		document.getElementById('sk_mirror_checkbox').checked = true;
		Mirror_var = 1;
	} else {
		document.getElementById('sk_mirror').style.backgroundPosition = 'center 3px';
		document.getElementById('sk_mirror_text').style.color = '#595959';
		document.getElementById('sk_main_order_picture').style.transform = 'scale(1, 1)';
		document.getElementById('sk_mirror_checkbox').checked = false;
		Mirror_var = 0;
	}
}

function BlackWhite(){
	if (BlackWhite_var == 0){
		if(Sepia_var = 1){
			document.getElementById('sk_sepia').style.backgroundPosition = 'center 3px';
			document.getElementById('sk_sepia_text').style.color = '#595959';
			document.getElementById('sk_main_order_picture').className = '';
			document.getElementById('sk_sepia_checkbox').checked = false;
			Sepia_var = 0;
		}
		document.getElementById('sk_black_white').style.backgroundPosition = 'center -58px';
		document.getElementById('sk_black_white_text').style.color = '#3592ab';
		document.getElementById('sk_main_order_picture').className = 'greyscale';
		document.getElementById('sk_bw_checkbox').checked = true;
		BlackWhite_var = 1;
	} else {
		document.getElementById('sk_black_white').style.backgroundPosition = 'center 3px';
		document.getElementById('sk_black_white_text').style.color = '#595959';
		document.getElementById('sk_main_order_picture').className = '';
		document.getElementById('sk_bw_checkbox').checked = false;
		BlackWhite_var = 0;
	}
}

function Sepia(){
	if (Sepia_var == 0){
		if(BlackWhite_var = 1){
			document.getElementById('sk_black_white').style.backgroundPosition = 'center 3px';
			document.getElementById('sk_black_white_text').style.color = '#595959';
			document.getElementById('sk_main_order_picture').className = '';
			document.getElementById('sk_bw_checkbox').checked = false;
			BlackWhite_var = 0;
		}
		document.getElementById('sk_sepia').style.backgroundPosition = 'center -58px';
		document.getElementById('sk_sepia_text').style.color = '#3592ab';
		document.getElementById('sk_main_order_picture').className = 'sepia';
		document.getElementById('sk_sepia_checkbox').checked = true;
		Sepia_var = 1;
	} else {
		document.getElementById('sk_sepia').style.backgroundPosition = 'center 3px';
		document.getElementById('sk_sepia_text').style.color = '#595959';
		document.getElementById('sk_main_order_picture').className = '';
		document.getElementById('sk_sepia_checkbox').checked = false;
		Sepia_var = 0;
	}
}

function preloader(){
	var wraper = document.getElementById('sk_galery');
	if(wraper !== null){
        our_images = wraper.getElementsByTagName('img');
        for(var i=0; i<our_images.length; i++){
            var hiddenImg = new Image;
            hiddenImg.src = our_images.item(i).src;
            our_images.item(i).src = hiddenImg.src;
        }
	}
}

$( document ).ready(function() {
	
	// added by Wiktor
	
	if ($('#sk_mirror_checkbox').prop("checked") == true) {
		$('#sk_mirror_checkbox').prop("checked", false);
	}
	if ($('#sk_bw_checkbox').prop("checked") == true) {
		$('#sk_bw_checkbox').prop("checked", false);
	}
	if ($('#sk_sepia_checkbox').prop("checked") == true) {
		$('#sk_sepia_checkbox').prop("checked", false);
	}
	
	$(".color_btn").on("click", function() {
		var dir_path = $(this).attr("dir_path");
		var pos = $(this).attr("pos");
		var color_name = $(this).attr("color_name");
		if (pos != "middle") {
			var lego_src = dir_path + "/" + color_name + "-" + pos + ".png";
			var lego_part_class = "lego_" + pos;
			$(".lego_part").each(function() {
				if ($(this).hasClass(lego_part_class)) {
					$(this).attr("src", lego_src);
				}
			});
		}
		else {
			var background_color = $(this).css("background-color");
			$("#sk_main_order_picture").replaceWith("<div class='lego_bg skinali_coloured' id='sk_main_order_picture'></div>");
			$(".skinali_coloured").css("background-color", background_color);
			$(".sk_title").text("Цветной скинали");
			$("#img_title").val("Цветной скинали");
			$(".sk_num").text(color_name);
			$("#img_id").val(color_name);
		}
	});
	
	changeSkinali();
	changeCategory();
	function changeCategory() {
	$(".select_category").on("click", function() {
		var cat_name = $(this).text();
		var cat_link = $(this).attr("cat_link");
		var cat_id = $(this).attr("cat_id");
		//alert (cat_id);
		$.ajax({
			url: 'index.php?route=information/information/ajaxGetCategory&cat_id=' + cat_id,
			dataType: 'html',
			success: function(htmlText) {
				$('.lego_list').html(htmlText);
				$('.cat_title').text(cat_name);
				jQuery('.list_wrapper').scrollbar();
				changeSkinali();
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
		
	});
	}
	
	function changeSkinali() {
		$(".lego_card").on("click", function() {
			var sub_cat_name = $(this).attr("sub_cat_name");
			var sub_cat_link = $(this).attr("sub_cat_link");
			var sk_title = $(this).attr("sk_title");
			var sk_num = $(this).find(".lego_card-num").text();
			var sk_link = $(this).attr("sk_link");
			var img_src = $(this).find("img").attr("src");
			var tag_name = $('#sk_main_order_picture').get(0).tagName;
			if (tag_name == "DIV") {
				$("#sk_main_order_picture").replaceWith("<img class='lego_bg' id='sk_main_order_picture'>");
				$("#sk_main_order_picture").attr("src", img_src);
			}
			if (tag_name == "IMG") $("#sk_main_order_picture").attr("src", img_src);
			if (sk_title.length > 33) {
				sk_title.substr(0, 32);
				sk_title = sk_title + "...";
			}
			$(".sk_title").text(sk_title);
			$("#img_title").val(sk_title);
			$(".sk_num").text("№ " + sk_num);
			$("#img_id").val(sk_num);
			$("#sk_link").val(sk_link);
		});
	}
	
	$(".card_search_btn").on("click", function() {
		var search_num = $(this).parent(".lego_card_bottom").find(".card_search").val();
		if (search_num != '') {
			$.ajax({
				url: 'index.php?route=information/information/ajaxGetProduct&sku=' + search_num,
				dataType: 'html',
				success: function(htmlText) {
					$('.lego_list').html(htmlText);
					var cat_name = $('.lego_list').find('.lego_card').attr("category_name");
					$('.cat_title').text(cat_name);
					jQuery('.list_wrapper').scrollbar();
					changeSkinali();
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
			/*var search_data = {
				'action': 'search_skinali',
				'search_num': search_num
			};

			var ajax_url = '/wp-admin/admin-ajax.php';

			jQuery.post(ajax_url, search_data, function(response) {
				//alert (response);
				response = JSON.parse(response);
				var post_id = response.post_id;
				var picture_id = response.picture_id;
				var image_url = response.image_url;
				var main_color = response.main_color;
				var cat_name = response.cat_name;
				var sub_cat_name = response.sub_cat_name;
				var sub_cat_link = response.sub_cat_link;
				var sk_title = response.sk_title;
				$(".cat_title").text(cat_name);
				//$(".list_wrapper").empty();
				$(".lego_list").children(".list_wrapper").children(".list_wrapper").empty();
				$(".list_wrapper").append('<div class="lego_card" sk_title="' + sk_title + '" sub_cat_name="' + sub_cat_name + '" sub_cat_link="' + sub_cat_link + '"><div class="lego_card-num">' + picture_id + '</div><div class="lego_card-img"><img src="https://skinali-printcolor.com/' + image_url + '" alt="bg"></div></div>');
				changeSkinali();
				changeCategory();
			});*/
		}
	});
	
	//var showed;
	
	function getShowedQty() {
		var scr_w = window.innerWidth;
		var slide_wrap_w = $(".slide_wrapper").width();
		if (scr_w > 1602) showed = 7;
		if (scr_w > 1396 && scr_w <= 1602) showed = 6;
		if (scr_w > 1191 && scr_w <= 1396) showed = 5;
		if (scr_w > 1024 && scr_w <= 1191) showed = 4;
		if (scr_w > 935 && scr_w <= 1024) showed = 3;
		if (scr_w > 410 && scr_w <= 935) showed = 2;
		if (scr_w <= 410) showed = 1;
		$(".slide_item").each(function() {
			var slide_w = slide_wrap_w / showed - 5;
			$(this).width(slide_w);
		});
		return showed;
	}
	
	var showed = getShowedQty();
	
	$(window).resize(function() {
		var showed = getShowedQty();
	});
	
	$(".slide_item").each(function(index) {
		if (index + 1 > showed) $(this).hide();
	});
	
	var slide_len = $(".slide_item").length;
	
	$(".move_right").on("click", function() {
		for (var i = 0; i < slide_len; i++) {
			var slide = $(".slide_wrapper").find(".slide_item").eq(i);
			if ($(slide).is(":visible")) {
				var curr_slide_id = i;
				break;
			}
		}
		
		if ($(".last_item").is(":hidden")) {
			$(slide).hide("slow");
			$(".slide_wrapper").find(".slide_item").eq(showed + curr_slide_id).show("slow");
		}
	});
	
	$(".move_left").on("click", function() {
		for (var i = 0; i < slide_len; i++) {
			var slide = $(".slide_wrapper").find(".slide_item").eq(i);
			if ($(slide).is(":visible")) {
				var curr_slide_id = i;
				break;
			}
		}
		
		if ($(".first_item").is(":hidden")) {
			$(".slide_wrapper").find(".slide_item").eq(showed + curr_slide_id - 1).hide("slow");
			$(".slide_wrapper").find(".slide_item").eq(curr_slide_id - 1).show("slow");
		}
	});
	
	// added by Wiktor (end)


	//added by Dmitry (copy from constructor.js 03.04.17)

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
	
	//added by Dmitry (end)

});


window.addEventListener('load', function (ev) {
	//modal callback
    var popuper = function(){

        var formContent = $('.formContent');
        var messageContent = $('.messageContent');

        var key = document.querySelectorAll('.modal-key');
        for (var i = key.length - 1; i >= 0; i--) {
            key[i].onclick = function(){
                var el = document.querySelector(this.getAttribute('data-href'));
                // console.log(el)
                if (el.getAttribute('data-status') == 'hidden') {
                    el.setAttribute('data-status','visab');
                }
                else{
                    el.setAttribute('data-status','hidden');
                }
            }
        }
        var popuper = document.querySelectorAll('.popuper');
        for (var i = popuper.length - 1; i >= 0; i--) {
            popuper[i].onclick = function(e){
                if (e.target.className == 'close' || e.target.className == 'btn close') {
                    this.setAttribute('data-status','hidden');

                    if(!messageContent.hasClass( "hidden" )){
                        messageContent.addClass('hidden');
                    }

                    if(!messageContent.find('.message-success').hasClass( "hidden" )) {
                        messageContent.find('.message-success').addClass('hidden');
                    }

                    if(!messageContent.find('.message-error').hasClass( "hidden" )) {
                        messageContent.find('.message-error').addClass('hidden');
                    }

                    if(!messageContent.hasClass( "message-Content-success" )){
                        messageContent.removeClass('message-Content-success');
                    }
                    if(!messageContent.hasClass( "message-Content-red" )){
                        messageContent.removeClass('message-Content-red');
                    }

                    if(formContent.hasClass( "hidden" )){
                        formContent.removeClass('hidden');
                    }

                    if(!formContent.find('.message-failure').hasClass( "hidden" )){
                        formContent.find('.message-failure').addClass('hidden');
                    }


                }
                if (e.target.className == 'popuper') {
                    this.setAttribute('data-status','hidden');
                }
            }
        }
    }();

    $('.phone').mask('+38 (099)999-99-99');

    var callBack = $('#call_back');
    callBack.val('')
        .attr('required', '')
        .attr('placeholder', '+38')
        .mask('+38 (099)999-99-99');

    // fixedMenu if scroll
    function fixedMenu(){
        window.onscroll = function(e){
            if(window.pageYOffset > 500){
                document.querySelector('.topPanel').setAttribute('data-fixed','true');
                document.querySelector('.offTop').style.marginTop = ($('.topPanel').outerHeight())+40+"px";
            }
            else{
                document.querySelector('.topPanel').removeAttribute('data-fixed');
                document.querySelector('.offTop').style.marginTop = 0+"px";
            }
        }
    }
    fixedMenu();

    $('#callBackForm').submit(function(e){
        e.preventDefault();
        var form = $(this);
        var formContent = $('.formContent');
        var messageContent = $('.messageContent');
        $.ajax({
            url: 'index.php?route=common/orderCall/orderCallCustom',
            type: 'post',
            data: form.serialize(),
            responseText: 'text',
            success: function(data) {
                if(data === 'failure') {
                    formContent.find('.message-failure').removeClass('hidden');
                } else if(data === 'success') {
                    messageContent.removeClass('hidden').addClass('message-Content-success');
                    formContent.addClass('hidden');
                    messageContent.find('.message-success').removeClass('hidden');
                    form[0].reset();
                }
            },
            error: function () {
                messageContent.removeClass('hidden').addClass('message-Content-red');
                formContent.addClass('hidden');
                messageContent.find('.message-error').removeClass('hidden');
            }
        });

    });

    //selector in product
    function materialSelectorZ(){
        if (!document.querySelectorAll('.selectorCustom').length) {
            return;
        }
        var selectors = document.querySelectorAll('.selectorCustom');
        for (var k = selectors.length - 1; k >= 0; k--) {
            selector = selectors[k];
            // console.log(selector)
            function createActiveOption(){
                var option = selector.querySelectorAll('option');
                var active = document.createElement('div');
                active.className = 'active';
                for (var i = option.length - 1; i >= 0; i--) {
                    if(option[i].selected){
                        active.innerHTML = option[i].innerHTML;
                        selector.style.backgroundImage ='url('+selector.querySelectorAll('option')[i].getAttribute('data-bg')+')';
                    }
                }
                selector.appendChild(active);
            }
            createActiveOption();
            function createListOptions(){
                var option = selector.querySelectorAll('option');
                var listOption = document.createElement('div');
                listOption.className = 'listOption';
                for (var i = option.length - 1; i >= 0; i--) {
                    var optionElem = document.createElement('div');
                    optionElem.className = 'li';
                    optionElem.setAttribute('data-index',i);
                    optionElem.innerHTML = option[i].innerHTML;
                    optionElem.setAttribute('data-bg',selector.querySelectorAll('option')[i].getAttribute('data-bg'))
                    optionElem.style.backgroundImage ='url('+selector.querySelectorAll('option')[i].getAttribute('data-bg')+')';
                    listOption.appendChild(optionElem);
                }
                selector.appendChild(listOption)
            }
            createListOptions();
            function createActiveOptionAll(){
                for (var z = selectors.length - 1; z >= 0; z--) {
                    var selector = selectors[z];
                    selector.removeChild(selector.querySelector('.active'));
                    var option = selector.querySelectorAll('option');
                    var active = document.createElement('div');
                    active.className = 'active';
                    for (var i = option.length - 1; i >= 0; i--) {
                        if(option[i].selected){
                            active.innerHTML = option[i].innerHTML;
                            selector.style.backgroundImage ='url('+selector.querySelectorAll('option')[i].getAttribute('data-bg')+')';
                        }
                    }
                    selector.appendChild(active);
                }
            }
            function workSelector(){
                selector.onclick = function(){
                    if (!this.hasAttribute('data-open')) {
                        this.setAttribute('data-open','true');
                    }
                    else{
                        this.removeAttribute('data-open');
                    }
                }
                var option = selector.querySelectorAll('.li');
                for (var i = option.length - 1; i >= 0; i--) {
                    option[i].onclick = function(){
                        var index = this.getAttribute('data-index');
                        this.parentNode.parentNode.querySelectorAll('option')[index].selected = true;
                        // this.parentNode.parentNode.removeChild(this.parentNode.parentNode.querySelector('.active'));
                        createActiveOptionAll();

                    }
                }
            }
            workSelector();
        }
    }
    materialSelectorZ();
});