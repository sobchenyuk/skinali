<?php echo $header; ?>

	<div class="sk_breadcrumbs" xmlns:v="http://rdf.data-vocabulary.org/#">
		<div id="sk_order" class="sk_breadcrumbs_holder">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<span typeof="v:Breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title">
				<?php echo $breadcrumb['text']; ?>
			</a></span> » 
		<?php } ?>
			<span class="current">Результаты поиска по запросу: "<?=$search_request?>"</span>
		</div>
	</div>
	<div class="sk_gallery_holder">
		<div class="sk_main_header_holder">
			<h1><a href="">Результаты поиска по запросу: <span style="color: #a5a5a5;"><?=$search_request?></span></a></h1>
		</div>
		<div class="sk_gallery_wraper" id="sk_galery">
				
			<?php echo $column_right; ?>	        				
			<?php echo $column_left; ?>		
			<div class="sk_galery_not_main_category">
				<div class="sk_galery_pict_wraper">
					<div class="sk_galery_pict_col_1">
					<?php if (!empty($products)): ?>
					<?php foreach ($products as $product) { ?>
						<div class="sk_galery_image_wraper" id="post-<?=$product['product_id']?>">
							<a href="<?=$product['href']?>">
								<script data-pagespeed-no-defer="">(function(){var g=this;function h(b,d){var a=b.split("."),c=g;a[0]in c||!c.execScript||c.execScript("var "+a[0]);for(var e;a.length&&(e=a.shift());)a.length||void 0===d?c[e]?c=c[e]:c=c[e]={}:c[e]=d};function l(b){var d=b.length;if(0<d){for(var a=Array(d),c=0;c<d;c++)a[c]=b[c];return a}return[]};function m(b){var d=window;if(d.addEventListener)d.addEventListener("load",b,!1);else if(d.attachEvent)d.attachEvent("onload",b);else{var a=d.onload;d.onload=function(){b.call(this);a&&a.call(this)}}};var n;function p(b,d,a,c,e){this.h=b;this.j=d;this.l=a;this.f=e;this.g={height:window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight,width:window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth};this.i=c;this.b={};this.a=[];this.c={}}function q(b,d){var a,c,e=d.getAttribute("data-pagespeed-url-hash");if(a=e&&!(e in b.c))if(0>=d.offsetWidth&&0>=d.offsetHeight)a=!1;else{c=d.getBoundingClientRect();var f=document.body;a=c.top+("pageYOffset"in window?window.pageYOffset:(document.documentElement||f.parentNode||f).scrollTop);c=c.left+("pageXOffset"in window?window.pageXOffset:(document.documentElement||f.parentNode||f).scrollLeft);f=a.toString()+","+c;b.b.hasOwnProperty(f)?a=!1:(b.b[f]=!0,a=a<=b.g.height&&c<=b.g.width)}a&&(b.a.push(e),b.c[e]=!0)}p.prototype.checkImageForCriticality=function(b){b.getBoundingClientRect&&q(this,b)};h("pagespeed.CriticalImages.checkImageForCriticality",function(b){n.checkImageForCriticality(b)});h("pagespeed.CriticalImages.checkCriticalImages",function(){r(n)});function r(b){b.b={};for(var d=["IMG","INPUT"],a=[],c=0;c<d.length;++c)a=a.concat(l(document.getElementsByTagName(d[c])));if(0!=a.length&&a[0].getBoundingClientRect){for(c=0;d=a[c];++c)q(b,d);a="oh="+b.l;b.f&&(a+="&n="+b.f);if(d=0!=b.a.length)for(a+="&ci="+encodeURIComponent(b.a[0]),c=1;c<b.a.length;++c){var e=","+encodeURIComponent(b.a[c]);131072>=a.length+e.length&&(a+=e)}b.i&&(e="&rd="+encodeURIComponent(JSON.stringify(t())),131072>=a.length+e.length&&(a+=e),d=!0);u=a;if(d){c=b.h;b=b.j;var f;if(window.XMLHttpRequest)f=new XMLHttpRequest;else if(window.ActiveXObject)try{f=new ActiveXObject("Msxml2.XMLHTTP")}catch(k){try{f=new ActiveXObject("Microsoft.XMLHTTP")}catch(v){}}f&&(f.open("POST",c+(-1==c.indexOf("?")?"?":"&")+"url="+encodeURIComponent(b)),f.setRequestHeader("Content-Type","application/x-www-form-urlencoded"),f.send(a))}}}function t(){var b={},d=document.getElementsByTagName("IMG");if(0==d.length)return{};var a=d[0];if(!("naturalWidth"in a&&"naturalHeight"in a))return{};for(var c=0;a=d[c];++c){var e=a.getAttribute("data-pagespeed-url-hash");e&&(!(e in b)&&0<a.width&&0<a.height&&0<a.naturalWidth&&0<a.naturalHeight||e in b&&a.width>=b[e].o&&a.height>=b[e].m)&&(b[e]={rw:a.width,rh:a.height,ow:a.naturalWidth,oh:a.naturalHeight})}return b}var u="";h("pagespeed.CriticalImages.getBeaconData",function(){return u});h("pagespeed.CriticalImages.Run",function(b,d,a,c,e,f){var k=new p(b,d,a,e,f);n=k;c&&m(function(){window.setTimeout(function(){r(k)},0)})});})();pagespeed.CriticalImages.Run('/ngx_pagespeed_beacon','http://skinali-printcolor.com/?s=%D0%94%D0%B5%D0%B2%D1%83%D1%88%D0%BA%D0%B0','y88a26YU7m',false,false,'21I2-Eeqxjs');</script>
								<img class="zoom_01" height="76px" src="<?="image/".$product['thumb']?>" data-zoom-image="<?="image/".$product['image']?>" alt="скинали <?=$product['name']?>" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
								<span class="sk_galery_image_triangle1"></span>
								<span class="sk_galery_image_number"><?=$product['sku']?></span>
							</a> 
						</div>
					<?php } ?>
					<?php else: ?>
						<div class="not_found">По Вашему запросу ничего не найдено. Попробуйте переформулировать запрос и повторить поиск.</div>
					<?php endif; ?>
					</div>

					<div class="sk_galery_pagination_holder">
						<nav class="navigation pagination" role="navigation">
							<?php if ($pagination != ''): ?>
							<h2 class="screen-reader-text">Навигация по Галерее</h2>
							<?php endif; ?>
							<?php echo $pagination; ?>
						</nav>		
					</div>

				</div>
			</div>
		</div>
	</div>
  
           
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>