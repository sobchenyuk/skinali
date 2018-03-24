var mjQ=jQuery.noConflict();
var winx;
var winy; 
mjQ(document).ready(function(){
	 winx=document.body.scrollWidth;
     winy=document.body.scrollHeight;
	 mjQ('#popup-mask').css("height",winy);

mjQ('.fancy_close,#popup-mask,.closf').click(function(){
		mjQ('#popup-mask').fadeOut(1000);
		mjQ('#mesform').fadeOut(1000);
		});
});
function showform(x){
		mjQ("#preload").css("display","none");
		mjQ('#popup-mask').fadeIn(1000);
		mjQ('#mesform').fadeIn(1000);
newtxt=x;
	 h = mjQ(window).scrollTop();
	 w=mjQ('#mesform').width();
mjQ('#mesform').css("display","block");
mjQ('#textform').text(newtxt);
}

mjQ(document).ready(function () {
    mjQ("#coords").submit(function () {
		mjQ('#popup-mask').fadeIn(1000);
		mjQ('#mesform').css("display","none");
		mjQ("#preload").css("display","block");
        var form_id = mjQ(this);
        var str = mjQ(this).serialize();
        mjQ.ajax({
            type: "POST",
            url: "/wp-content/themes/PrintColor/zakaz.php",
            data: str,
            success: function (html) {
showform(html);
            },
          error:  function(xhr, str){
                alert('Возникла ошибка: ' + xhr.responseCode);
            }
        });
        return false;
    });
	
	//
	    mjQ("#call_back").submit(function () {
		mjQ('#popup-mask').fadeIn(1000);
		mjQ('#mesform').css("display","none");
		mjQ("#preload").css("display","block");
        var form_id = mjQ(this);
        var str = mjQ(this).serialize();
        mjQ.ajax({
            type: "POST",
            url: "/wp-content/themes/PrintColor/call_back.php",
            data: str,
            success: function (html) {
showform(html);
            },
          error:  function(xhr, str){
                alert('Возникла ошибка: ' + xhr.responseCode);
            }
        });
        return false;
    });
});
