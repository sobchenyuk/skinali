$(document).ready(function(){
	$(function(){
		function runIt(){
			$(".free_vizual").animate({opacity: '0'},800,"linear","callback")
			$(".free_vizual").animate({opacity: '1'},800,"linear","callback");
		}
		setInterval(runIt, 100);
	});

// --------------------popup-------------------------


		// var date = new Date();
		// date.setTime(date.getTime() + (60 * 9000)); //9 минут
		// $.cookie("popup", "", {expires: date} );
		// если нужны минуты а не часы заменить строчку - $.cookie("popup", "24house", {expires: 0} );



	$(".popup_close").click(function () {
		var date = new Date();
		date.setTime(date.getTime() + (60 * 60000));
		$.cookie("popup", "", {expires: date} );
		$("#parent_popup").hide();
	});
	$(".popup_order").click(function () {
		var date = new Date();
		date.setTime(date.getTime() + (60 * 60000));
		$.cookie("popup", "", {expires: date} );
		$("#parent_popup").hide();
	});
	if ( $.cookie("popup") == null )
	{
		setTimeout(function(){
			$("#parent_popup").show();}, 10000)
	}
	else { $("#parent_popup").hide();
	}

});