
function SlideChange(number){
	SlideCount = number;
	Slider(SlideCount);
	clearInterval(interval);
	interval = setInterval('Slider(SlideCount)', 8000);
}

function Slider(count){
	switch(count){
		case 1: {
			document.getElementById('slide2').style.opacity = '1';
			document.getElementById('slide2').style.zIndex = '100';
			document.getElementById('slide1').style.opacity = '0';
			document.getElementById('slide1').style.zIndex = '0';
			document.getElementById('slide3').style.opacity = '0';
			document.getElementById('slide3').style.zIndex = '0';
			document.getElementById('slide4').style.opacity = '0';
			document.getElementById('slide4').style.zIndex = '0';
			document.getElementById('slide5').style.opacity = '0';
			document.getElementById('slide5').style.zIndex = '0';
			document.getElementById('sk_slider_option_1').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_2').style = 'background-position: 0 0';
			document.getElementById('sk_slider_option_3').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_4').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_5').style = 'background-position: 0 -16px';
			document.getElementById('slider_text_holder').innerHTML = 'Сочетание эстетичности,<br/>креативности и прочности по<br/>приемлемой цене';
			SlideCount = 2;
		};break;
		case 2: {
			document.getElementById('slide3').style.opacity = '1';
			document.getElementById('slide3').style.zIndex = '100';
			document.getElementById('slide1').style.opacity = '0';
			document.getElementById('slide1').style.zIndex = '0';
			document.getElementById('slide2').style.opacity = '0';
			document.getElementById('slide2').style.zIndex = '0';
			document.getElementById('slide4').style.opacity = '0';
			document.getElementById('slide4').style.zIndex = '0';
			document.getElementById('slide5').style.opacity = '0';
			document.getElementById('slide5').style.zIndex = '0';
			document.getElementById('sk_slider_option_1').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_2').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_3').style = 'background-position: 0 0';
			document.getElementById('sk_slider_option_4').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_5').style = 'background-position: 0 -16px';
			document.getElementById('slider_text_holder').innerHTML = 'Самые современные<br/>технологии с максимальной<br/>скоростью печати';
			SlideCount = 3;
		};break;
		case 3: {
			document.getElementById('slide4').style.opacity = '1';
			document.getElementById('slide4').style.zIndex = '100';
			document.getElementById('slide1').style.opacity = '0';
			document.getElementById('slide1').style.zIndex = '0';
			document.getElementById('slide2').style.opacity = '0';
			document.getElementById('slide2').style.zIndex = '0';
			document.getElementById('slide3').style.opacity = '0';
			document.getElementById('slide3').style.zIndex = '0';
			document.getElementById('slide5').style.opacity = '0';
			document.getElementById('slide5').style.zIndex = '0';
			document.getElementById('sk_slider_option_1').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_2').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_3').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_4').style = 'background-position: 0 0';
			document.getElementById('sk_slider_option_5').style = 'background-position: 0 -16px';
			document.getElementById('slider_text_holder').innerHTML = 'Яркие краски,<br/>абсолютно белый цвет,<br/>гарантия качества';
			SlideCount = 4;
		};break;
		case 4: {
			document.getElementById('slide5').style.opacity = '1';
			document.getElementById('slide5').style.zIndex = '100';			
			document.getElementById('slide1').style.opacity = '0';
			document.getElementById('slide1').style.zIndex = '0';
			document.getElementById('slide2').style.opacity = '0';
			document.getElementById('slide2').style.zIndex = '0';
			document.getElementById('slide4').style.opacity = '0';
			document.getElementById('slide4').style.zIndex = '0';
			document.getElementById('slide3').style.opacity = '0';
			document.getElementById('slide3').style.zIndex = '0';
			document.getElementById('sk_slider_option_1').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_2').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_3').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_4').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_5').style = 'background-position: 0 0';
			document.getElementById('slider_text_holder').innerHTML = 'Закалка стекла,<br/>ультрафиолетовая печать,<br/>порезка';
			SlideCount = 5;
		};break;
		case 5: {
			document.getElementById('slide1').style.opacity = '1';
			document.getElementById('slide1').style.zIndex = '100';
			document.getElementById('slide3').style.opacity = '0';
			document.getElementById('slide3').style.zIndex = '0';
			document.getElementById('slide2').style.opacity = '0';
			document.getElementById('slide2').style.zIndex = '0';
			document.getElementById('slide4').style.opacity = '0';
			document.getElementById('slide4').style.zIndex = '0';
			document.getElementById('slide5').style.opacity = '0';
			document.getElementById('slide5').style.zIndex = '0';
			document.getElementById('sk_slider_option_1').style = 'background-position: 0 0';
			document.getElementById('sk_slider_option_2').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_3').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_4').style = 'background-position: 0 -16px';
			document.getElementById('sk_slider_option_5').style = 'background-position: 0 -16px';
			document.getElementById('slider_text_holder').innerHTML = 'Минимальная стоимость<br/>при максимальных возможностях';
			SlideCount = 1;
		};break;
	}
}



window.onload = function(){
	preloader();
	setTimeout(preloader(), 2000);
	reload_timer = setInterval('preloader()', 2000);
	SlideChange(SlideCount);

}