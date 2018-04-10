$(document).ready(function () {


// ------------------------- accordeon --------

    $(".accordeon > h3").click(function(){
        if(false == $(this).next().is(':visible')) {
            $('.accordeon ul').slideUp(300);
        }
        $(this).next().slideToggle(300);
    });
// ----------end acc-------------------

// -------------отзыв------------------

    $('.new_recall_button').click(function () {
        $('.comment-respond').slideToggle('slow')
    });

// -------------отзыв конец---------------

    // $('.sk_main_menu').append('<div id="menu_right_trigger"></div>'); //Добавляем див. верхнее меню
    // $('#menu_right_trigger').click(function () {
    // $('.sk_category_menu_holder').toggle(
    //     function () {$('.sk_category_menu_holder').hide;},
    //     function () {$('.sk_category_menu_holder').show;}
    //     );
    // });
    //
    // $('.sk_main_menu').append('<div id="menu_left_trigger"></div>'); //Добавляем див. верхнее меню
    // $('#menu_left_trigger').click(function () {
    // $('.menu-glavnoe-menyu-container').toggle(
    //     function () {$('.menu-glavnoe-menyu-container').hide;},
    //     function () {$('.menu-glavnoe-menyu-container').show;}
    //     );
    // });

    // $('.sk_galery_main_category').append('<div id="menu_button"></div>'); //Левый сайдбар
    $('.sk_galery_main_category').before("<div class=\"burgerCategory\">Открыть каталог</div>");
    // $('#menu_button').addClass('arrow_right');
    // $('#menu_button').click(function () {
    //         if ($('#menu_button').hasClass('arrow_right')) {
    //             $('.sk_galery_main_category').css('left', '0')
    //             $('#menu_button').removeClass('arrow_right') && $('#menu_button').addClass('arrow_left');
    //         }
    //         else {
    //             if ($('#menu_button').hasClass('arrow_left')) {
    //                 $('.sk_galery_main_category').css('left', '-51%')
    //                 $('#menu_button').removeClass('arrow_left') && $('#menu_button').addClass('arrow_right');
    //             };
    //         }
    //     })


    if(document.querySelectorAll('.burgerCategory').length){
        document.querySelector('.burgerCategory').onclick = function(){
            if (this.parentNode.getAttribute('data-status') == 'visab') {
                this.parentNode.setAttribute('data-status','hidden')
                this.innerHTML = "Открыть каталог";
            }
            else{
                this.parentNode.setAttribute('data-status','visab')
                this.innerHTML = "Закрыть каталог";
            }
        }
    }


if(document.documentElement.clientWidth < 768){
    $('.sk_galery_main_category').append( $('body #right_sidebar') );
} else {
      if($('.sk_galery_main_category').find('#right_sidebar')){
          console.log('true')
      }
}



    $('.sk_our_sites_holder').append('<a id="arrow_up"></a>'); //кнопка наверх
    $('#arrow_up').attr('href', '#menu_right_trigger')

    $('a[href*=#]').bind("click", function(e){
      var anchor = $(this);
      $('html, body').stop().animate({
         scrollTop: $(anchor.attr('href')).offset().top
      }, 1000);
      e.preventDefault();
    });
    return false;






});