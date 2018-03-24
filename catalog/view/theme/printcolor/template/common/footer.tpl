<?php
	$home_url = '';
	$curr_url = $_SERVER['REQUEST_URI'];
?>
<div class="last_comments">
	<a class="all_comments" rel="nofollow" href="<?=$home_url?>otzyivyi-nashih-klientov">Отзывы наших клиентов</a>
	<ul class="comment_demo">
		<?php foreach($reviews as $review): ?>
		<?php $comm_short_txt = mb_substr(strip_tags($review['text']), 0, 100) .'...'; ?>
		<li>
			<span class="comment_user_name"><?=$review['author']?></span> (<span class="comment_user_date"><?=$review['date_added']?></span>): <?=$comm_short_txt?>
			<a rel="nofollow" class="comment_reed_this" href="otzyivyi-nashih-klientov/#comment-<?=$review['review_id']?>">Читать далее</a>
		</li>
		<?php endforeach; ?>
	</ul>
	<div class="all_comments_holder">
	 	<a class="all_comments_arrow" rel="nofollow" href="<?=$home_url?>otzyivyi-nashih-klientov">Читать все отзывы »</a>
	</div>
</div>
<footer>
	<div>
		<div class="menu-menyu-podvala-container">
			<ul id="menu-menyu-podvala" class="menu">
				<li id="menu-item-72" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/o-kompanii/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>o-kompanii">О компании</a></li>
				<li id="menu-item-74" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/chasto-zadavaemyie-voprosyi/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>chasto-zadavaemyie-voprosyi">Часто задаваемые вопросы</a></li>
				<li id="menu-item-68" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/dileram/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>dileram">Дилерам</a></li>
				<li id="menu-item-69" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/dostavka-i-oplata/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>dostavka-i-oplata">Доставка и оплата</a></li>
				<li id="menu-item-73" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/ustanovka-skinali/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>ustanovka-skinali">Установка скинали</a></li>
				<li id="menu-item-4848" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/stolyi/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>stolyi">Столы</a></li>
				<li id="menu-item-71" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/kontaktyi/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>kontaktyi">Контакты</a></li>
				<li id="menu-item-70" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/sitemap/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>sitemap">Карта сайта</a></li>
				<li id="menu-item-2313" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/foto-dlya-skinali/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>foto-dlya-skinali">Фото для скинали</a></li>
			</ul>
		</div>
	</div>
	<div class="form_for_us">
		<form>
			<span>E-mail</span>
				<input type="e-mail" placeholder="Введите свой e-mail адрес">
			<span>Задать вопрос:</span>
				<textarea placeholder="Введите Ваш вопрос"></textarea>
			<input type="submit" value="Отправить">
		</form>
	</div>
	<div>
		<!--<img class="disable" id="_image2" itemprop="logo" alt="PrintColor" data-pagespeed-url-hash="306893114" src="https://skinali-printcolor.com/wp-content/themes/PrintColor/images/logo.png" onerror="this.onerror=null;pagespeed.lazyLoadImages.loadIfVisibleAndMaybeBeacon(this);">
		--><link itemprop="url" href="<?//=$home_url?>">
		<meta itemprop="name" content="PrintColor">
		<address itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
			<span itemprop="addressLocality">г. Харьков</span>, <span itemprop="streetAddress">ул. Пушкинская, 45</span><br>
			E-mail: <a href="mailto:printcolor45@gmail.com">printcolor45@gmail.com</a><br>
			Тел.: <span itemprop="telephone">(095)714-03-05, (050)908-86-00</span>
		</address>
		<div class="sk_footer_social_holder">
			<a href="https://ru-ru.facebook.com/printcolor.fotooboi" rel="nofollow" itemprop="sameAs"></a>
			<a href="skype:printcolor45?chat"></a>
		</div>
	</div>
	<span class="sk_footer_triangle1">◢</span>
	<span class="sk_footer_triangle2">◢</span>
</footer>
<div class="sk_post_footer">2016 © Рекламно-производственная компания PrintColor</div>
		<script src="catalog/view/javascript/js/script.js" type="text/javascript"></script>
		
		<script src="catalog/view/javascript/js/jquery.cookie.js" type="text/javascript"></script>
		<script src="catalog/view/javascript/js/AC_RunActiveContent.js" type="text/javascript"></script>
		<script src="catalog/view/javascript/js/popup.js" type="text/javascript"></script>
		<script src="catalog/view/javascript/js/menu.js" type="text/javascript"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/jquery.elevatezoom.js"></script>
		<!--<script type="text/javascript" src="catalog/view/javascript/js/main.min.js"></script>-->
		<script type="text/javascript">
			$(".zoom_01").elevateZoom({
				cursor: "pointer"
			});
		</script>
<!-- ##Lightbox -->
	<link href="catalog/view/javascript/lightbox/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" />
	<!--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>-->
	<script type="text/javascript" src="catalog/view/javascript/lightbox/jquery.lightbox-0.5.js"></script>
<!-- ##Lightbox end -->
	<script type="text/javascript">
		(function($) {
			$('a[rel^=lightbox]').lightBox();
		}(jQuery));
	</script>
	</wrapper>
	
	
	<script type="text/javascript" src="catalog/view/javascript/js/jquery.scrollbar.min.js"></script>
	<link rel="stylesheet" href="catalog/view/javascript/js/jquery.scrollbar.css" />
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>