<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html id="sk_html_block" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.5">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<!--<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />-->
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<!--<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">-->
<link href="catalog/view/theme/printcolor/stylesheet/style.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/add_style.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/adaptiv.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/opera.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/style_Chrome.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/new.css" rel="stylesheet">
<script src="catalog/view/javascript/js/script.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

				<?php if( ! empty( $smp_canonical_url ) ) { ?>
					<link href="<?php echo $smp_canonical_url; ?>" rel="canonical" />
				<?php } ?>
				
				<?php foreach( $documentGetMeta as $val ) { ?>
					<meta<?php foreach( $val as $k => $v ) { ?> <?php echo $k; ?>="<?php echo $v; ?>"<?php } ?> />
				<?php } ?>
				
				<script type="text/javascript">
					function getURLVar(key) {
						<?php if( ! empty( $smk_current_route ) ) { ?>
							if( key == 'route' ) {
								return '<?php echo addslashes( $smk_current_route ); ?>';
							}
						<?php } ?>
				
						var value 	= [],
							url		= String(document.location),
							query;
						
						if( url.indexOf( '?' ) > -1 ) {
							query = url.split('?');
						} else {
							query = url.split('/');
							query.shift();
							query.shift();
							query.shift();
							query = query.join('/');
							
							query = query.indexOf( '&' ) > -1 ? [ query.substring( 0, query.indexOf('&') ), query.substring( query.indexOf('&')+1 ) ] : [ query, '' ];
							
							value['route'] = query[0];
						}
						
						if (typeof query[1] != 'undefined') {
							var part = query[1].split('&');

							for (i = 0; i < part.length; i++) {
								var data = part[i].split('=');
								
								if (data[0] && data[1]) {
									value[data[0]] = data[1];
								}
							}
							
							if (value[key]) {
								return value[key];
							} else {
								return '';
							}
						}
					}
				</script>
			

				<?php if( ! empty( $smp_meta ) ) { ?>
					<?php foreach( $smp_meta as $k => $v ) { ?>
						<?php if( ! empty( $v ) ) { ?>
							<meta name="<?php echo $k; ?>" content="<?php echo $v; ?>" />
						<?php } ?>
					<?php } ?>
				<?php } ?>
				
				<?php if( ! empty( $smp_extras['facebook_widget']['enabled'] ) ) { ?>
					<script type="text/javascript">
						$().ready(function(){
							$('body').prepend('<div id="fb-root"></div>');
						
							(function(d, s, id) {
								var js, fjs = d.getElementsByTagName(s)[0];
								if (d.getElementById(id)) return;
								js = d.createElement(s); js.id = id;
								js.src = "//connect.facebook.net/<?php echo $smp_config_language . '_' . strtoupper( $smp_config_language ); ?>/sdk.js#xfbml=1&version=v2.4";
								fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));
						});
					</script>
					<script type="text/javascript">
						$().ready(function(){				
							var html = 
								'<div ' +
									'id="smp-fb-widget" ' +
									'style="border: 1px solid #<?php echo $smp_extras['facebook_widget']['colorscheme'] == 'dark' ? '000' : 'ccc'; ?>; background: #<?php echo $smp_extras['facebook_widget']['colorscheme'] == 'dark' ? '000' : 'fff'; ?>; z-index: 999; position: fixed; display: block; top:<?php echo $smp_extras['facebook_widget']['margin_top']; ?>px; <?php echo $smp_extras['facebook_widget']['position'] == 'left' ? 'left' : 'right'; ?>:-<?php echo $smp_extras['facebook_widget']['width']+2; ?>px;"' +
								'>' +
									'<img ' +
										'style="position: absolute; cursor: pointer;" ' +
										'src="<?php echo ! empty( $smp_extras['facebook_widget']['image'] ) ? 'image/' . $smp_extras['facebook_widget']['image'] : ( 'catalog/view/theme/default/smp/img/fb-' . $smp_extras['facebook_widget']['position'] . '.png' ); ?>" ' +
									'/>' +
									'<div ' +
										'class="fb-page" ' +
										'data-href="<?php echo $smp_extras['facebook_widget']['url']; ?>" ' +
										'data-small-header="<?php echo ! empty( $smp_extras['facebook_widget']['small_header'] ) ? 'true' : 'false'; ?>" ' +
										'data-adapt-container-width="false" ' +
										'data-hide-cover="false" ' +
										'data-show-facepile="<?php echo empty( $smp_extras['facebook_widget']['show_faces'] ) ? 'false' : 'true'; ?>" ' +
										'data-width="<?php echo $smp_extras['facebook_widget']['width']; ?>" ' +
										'data-height="<?php echo $smp_extras['facebook_widget']['height']; ?>" ' +
										'data-show-posts="<?php echo empty( $smp_extras['facebook_widget']['show_posts'] ) ? 'false' : 'true'; ?>">' +
											'<div class="fb-xfbml-parse-ignore">' +
											'<blockquote cite="<?php echo $smp_extras['facebook_widget']['url']; ?>">' +
												'<a href="<?php echo $smp_extras['facebook_widget']['url']; ?>">Facebook</a>' +
											'</blockquote>' +
										'</div>' +
									'</div>';
							
							$('body').prepend( html );
						});
					</script>
					
					<script type="text/javascript">
						$().ready(function(){
							$('#smp-fb-widget').each(function(){
								var self	= $(this),
									img		= self.find('> img:first'),
									box		= self.find('.fb-like-box:first'),
									pos		= '<?php echo $smp_extras['facebook_widget']['position']; ?>',
									width	= <?php echo (int) $smp_extras['facebook_widget']['width']+2; ?>,
									loader	= setInterval(function(){
										if( ! img.width() || ! img.height() ) 
											return;
											
										clearInterval( loader );
											
										img.css('margin-left', pos == 'left' ? width-1 : - img.width());
										img.click(function(){
											var opt = {};
											opt[pos] = 0;
												
											self.animate(opt, 500).unbind('mouseleave').bind('mouseleave', function(){
												var opt = {};
												opt[pos] = - width;
												self.animate(opt,500);
											});
										});
									},100);									
							});
						});
					</script>
				<?php } ?>
				
				<?php if( ! empty( $smp_extras ) && ! empty( $smp_extras['g_plus_widget']['enabled'] ) ) { ?>
					<script type="text/javascript">
						$().ready(function(){
							window.___gcfg = {lang: '<?php echo $smp_config_language; ?>'};

							(function() {
								var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
								po.src = 'https://apis.google.com/js/platform.js';
								var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
							})();
						});
					</script>
					<script type="text/javascript">
						$().ready(function(){
							var html = 
								'<div ' +
									'id="smp-gplus-widget" ' +
									'style="background: #<?php echo $smp_extras['g_plus_widget']['colorscheme'] == 'dark' ? '000' : 'fff'; ?>; z-index: 999; position: fixed; display: block; top:<?php echo $smp_extras['g_plus_widget']['margin_top']; ?>px; <?php echo $smp_extras['g_plus_widget']['position'] == 'left' ? 'left' : 'right'; ?>:<?php echo - $smp_extras['g_plus_widget']['width']; ?>px;"' +
								'>' +
									'<img ' +
										'style="position: absolute; cursor: pointer;" ' +
										'src="<?php echo ! empty( $smp_extras['g_plus_widget']['image'] ) ? 'image/' . $smp_extras['g_plus_widget']['image'] : ( 'catalog/view/theme/default/smp/img/g_plus-' . $smp_extras['g_plus_widget']['position'] . '.png' ); ?>" ' +
									'/>' +
									'<div ' +
										'class="g-<?php echo empty( $smp_extras['g_plus_widget']['type_account'] ) ? 'person' : $smp_extras['g_plus_widget']['type_account']; ?>" ' +
										'data-width="<?php echo $smp_extras['g_plus_widget']['width']; ?>" ' +
										'data-height="<?php echo $smp_extras['g_plus_widget']['height']; ?>" ' +
										'data-href="<?php echo $smp_extras['g_plus_widget']['url']; ?>" ' +
										'data-theme="<?php echo $smp_extras['g_plus_widget']['colorscheme']; ?>" ' +
										( '<?php echo $smp_extras['g_plus_widget']['layout']; ?>' == 'portrait' ? '' : 'data-layout="<?php echo $smp_extras['g_plus_widget']['layout']; ?>" ' ) +
										'data-rel="author">' +
									'</div>' +
								'</div>';
								
							$('body').prepend( html );
						});
					</script>
					
					<script type="text/javascript">
						$().ready(function(){
							$('#smp-gplus-widget').each(function(){
								var self	= $(this),
									img		= self.find('> img:first'),
									box		= self.find('.g-<?php echo empty( $smp_extras['g_plus_widget']['type_account'] ) ? 'person' : $smp_extras['g_plus_widget']['type_account']; ?>:first'),
									pos		= '<?php echo $smp_extras['g_plus_widget']['position']; ?>',
									width	= <?php echo (int) $smp_extras['g_plus_widget']['width']; ?>,
									loader	= setInterval(function(){
										if( ! img.width() || ! img.height() ) 
											return;
											
										clearInterval( loader );
											
										img.css('margin-left', pos == 'left' ? width : - img.width());
										img.click(function(){
											var opt = {};
											opt[pos] = 0;
												
											self.animate(opt, 500).unbind('mouseleave').bind('mouseleave', function(){
												var opt = {};
												opt[pos] = - width;
												self.animate(opt,500);
											});
										});
									},100);									
							});
						});
					</script>
				<?php } ?>
				
				<?php echo (string) $__SMP_HREFLANG; ?>
				
				</head>
			
			
<?php
  $path = "common/home";
  $url = $_SERVER['REQUEST_URI'];
  //echo $url;
  if ($url == "/" or strripos($url, $path)) {
    $is_home = true;
  }else{
    $is_home = false;
  }

	$home_url = '';
	
?>
<body class="<?php echo $class; ?>" onload = "preloader()">
<!-- google -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-78363118-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- end google -->

        <wrapper id="wrapper">
<header>
	<?php $curr_url = $_SERVER['REQUEST_URI'];?>
	<?php //echo $curr_url; ?>
	<?php //echo $_SERVER['HTTP_USER_AGENT']; ?>
	<div class = "sk_first_line">
		<div class = "sk_first_line_container">
			<div class = "sk_logo_holder">
				<div id="logo">
				  <?php if ($logo) { ?>
					<?php if ($home == $og_url) { ?>
					  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
					<?php } else { ?>
					  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
					<?php } ?>
				  <?php } else { ?>
					<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
				  <?php } ?>
				</div>
			</div>
			<ul>
				<li class="hours"><h3>ГАРАНТИЯ<br><span>на скинали</span></h3></li>
				<li class="free_delivery"><h3>ДОСТАВКА<br><span>по всей Украине</span></h3></li>
				<li class="our_phones"><h3>(095)714-03-05<br>(098)425-99-84</h3></li>
				<li class = "pw_right_holder">
					<div class = "pw_header_social">
						<a target="_blank" href = "https://ru-ru.facebook.com/printcolor.fotooboi" rel="nofollow" ></a>
						<a href = "skype:printcolor45?chat"></a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<nav class = "sk_main_menu gradient">
		<div class="menu-glavnoe-menyu-container">
			<ul id="menu-glavnoe-menyu" class="menu">
				<li id="menu-item-60" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 <?php echo ($curr_url == '/o-kompanii' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>o-kompanii">О компании</a></li>
				<li id="menu-item-183" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-183 <?php echo ($curr_url == '/news/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>news">Новости</a></li>
				<li id="menu-item-4756" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4756 <?php echo ($curr_url == '/chasto-zadavaemyie-voprosyi' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>chasto-zadavaemyie-voprosyi">Часто задаваемые вопросы</a></li>
				<li id="menu-item-4753" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4753 <?php echo ($curr_url == '/nashi-rabotyi' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>nashi-rabotyi">Наши работы</a></li>
				<li id="menu-item-58" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 <?php echo ($curr_url == '/dostavka-i-oplata' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>dostavka-i-oplata">Доставка и оплата</a></li>
				<li id="menu-item-59" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 <?php echo ($curr_url == '/kontaktyi' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>kontaktyi">Контакты</a></li>
				<li id="menu-item-57" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-57 <?php echo ($curr_url == '/dileram' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>dileram">Дилерам</a></li>
				<li id="menu-item-4823" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4823 <?php echo ($curr_url == '/trebovaniya-k-faylam' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>trebovaniya-k-faylam">Требования к файлам</a></li>
				<li id="menu-item-4824" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4824 <?php echo ($curr_url == '/nashe-oborudovanie' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>nashe-oborudovanie">Наше оборудование</a></li>
				<li id="menu-item-4825" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4825 <?php echo ($curr_url == '/ustanovka-skinali' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>ustanovka-skinali">Установка скинали</a></li>
				<li id="menu-item-4846" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4846 <?php echo ($curr_url == '/pravila-zamera' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>pravila-zamera">Правила замера</a></li>
			</ul>
		</div>
		<!--<div id="menu_right_trigger"></div>
		<div id="menu_left_trigger"></div>-->
	</nav>
</header>
<?php if ($is_home): ?>
	<div class="sk_slider_holder">
		<div class="sk_slider_slide_holder" id="slider">
			<div class="sk_slider_slides_1" id="slide1" style="opacity: 1; z-index: 100;"></div>
			<div class="sk_slider_slides_2" id="slide2" style="opacity: 0; z-index: 0;"></div>
			<div class="sk_slider_slides_3" id="slide3" style="opacity: 0; z-index: 0;"></div>
			<div class="sk_slider_slides_4" id="slide4" style="opacity: 0; z-index: 0;"></div>
			<div class="sk_slider_slides_5" id="slide5" style="opacity: 0; z-index: 0;"></div>
		</div>
		<span class="sk_slider_triangle_3"></span>
<!-- 		<span class = "sk_slider_triangle_4">&#9698;</span> -->
		<div class="sk_slider_text_holder">
		<h1>Скинали</h1>
		<h2>Стеклянные фартуки</h2>
		<p id="slider_text_holder">Минимальная стоимость<br>при максимальных возможностях</p>
		<div class="sk_slider_button_holder">
			<a href="#" id="sk_slider_option_1" onclick="SlideChange(5)" style="background-position: 0px 0px;"></a>
			<a href="#" id="sk_slider_option_2" onclick="SlideChange(1)" style="background-position: 0px -16px;"></a>
			<a href="#" id="sk_slider_option_3" onclick="SlideChange(2)" style="background-position: 0px -16px;"></a>
			<a href="#" id="sk_slider_option_4" onclick="SlideChange(3)" style="background-position: 0px -16px;"></a>
			<a href="#" id="sk_slider_option_5" onclick="SlideChange(4)" onmouseover="SlideChange(1)" style="background-position: 0px -16px;"></a>
		</div>
		</div>
	</div>
	<script type="text/javascript" src="catalog/view/javascript/js/slider.js"></script>
<?php endif; ?>
<?php $icons_path = 'catalog/view/theme/printcolor/image/category/'; ?>
<div class="sk_category_menu">
	<ul id="menu-menyu-kategoriy" class="sk_category_menu_holder">
		<li class="menu-item menu-item-type-post_type menu-item-object-page sk_category_menu_5702 <?php echo ($curr_url == '/konstruktor-skinali' ? 'current-menu-item current_page_item' : '');?>">
			<a href="<?=$home_url?>konstruktor-skinali">
				<div class="sk_category_menu_ico">
					<div>
						<div class="sk_svg__ico_active" style="background-image: url(<?=$icons_path?>_active.png)"></div>
						<div class="sk_svg__ico_passive" style="background-image: url(<?=$icons_path?>_passive.png)"></div>
					</div>
				</div>
				<div class="sk_category_menu_name">
					<div>
						<span>Конструктор</span>
						<span>Конструктор</span>
					</div>
				</div>
				<div class="sk_category_menu_desc">
					<div>
						<span>Конструктор<br>скинали</span>
						<span>Конструктор<br>скинали</span>
					</div>
				</div>
			</a>
		</li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page sk_category_menu_4716 <?php echo ($curr_url == '/skinali_kuhonnyij_fartuk' ? 'current-menu-item current_page_item' : '');?>">
			<a href="<?=$home_url?>skinali_kuhonnyij_fartuk">
				<div class="sk_category_menu_ico">
					<div>
						<div class="sk_svg_skinali_ico_active" style="background-image: url(<?=$icons_path?>skinali_active.png)"></div>
						<div class="sk_svg_skinali_ico_passive" style="background-image: url(<?=$icons_path?>skinali_passive.png)"></div>
					</div>
				</div>
				<div class="sk_category_menu_name">
					<div>
						<span>Скинали</span>
						<span>Скинали</span>
					</div>
				</div>
				<div class="sk_category_menu_desc">
					<div>
						<span>Кухонные<br>фартуки</span>
						<span>Кухонные<br>фартуки</span>
					</div>
				</div>
			</a>
		</li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page sk_category_menu_4832 <?php echo ($curr_url == '/ultrafioletovaya-pechat' ? 'current-menu-item current_page_item' : '');?>">
			<a href="<?=$home_url?>ultrafioletovaya-pechat">
				<div class="sk_category_menu_ico">
					<div>
						<div class="sk_svg_table_ico_active" style="background-image: url(<?=$icons_path?>table_active.png)"></div>
						<div class="sk_svg_table_ico_passive" style="background-image: url(<?=$icons_path?>table_passive.png)"></div>
					</div>
				</div>
				<div class="sk_category_menu_name">
					<div>
						<span>У-ф</span>
						<span>У-ф</span>
					</div>
				</div>
				<div class="sk_category_menu_desc">
					<div>
						<span>Ультрафиолетовая<br>печать</span>
						<span>Ультрафиолетовая<br>печать</span>
					</div>
				</div>
			</a>
		</li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page sk_category_menu_61 <?php echo ($curr_url == '/dveri' ? 'current-menu-item current_page_item' : '');?>">
			<a href="<?=$home_url?>dveri">
				<div class="sk_category_menu_ico">
					<div>
						<div class="sk_svg_door_ico_active" style="background-image: url(<?=$icons_path?>door_active.png)"></div>
						<div class="sk_svg_door_ico_passive" style="background-image: url(<?=$icons_path?>door_passive.png)"></div>
					</div>
				</div>
				<div class="sk_category_menu_name">
					<div>
						<span>Двери</span>
						<span>Двери</span>
					</div>
				</div>
				<div class="sk_category_menu_desc">
					<div>
						<span>Дверные полотна<br>для шкафов купе</span>
						<span>Дверные полотна<br>для шкафов купе</span>
					</div>
				</div>
			</a>
		</li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page sk_category_menu_62 <?php echo ($curr_url == '/plitka' ? 'current-menu-item current_page_item' : '');?>">
			<a href="<?=$home_url?>plitka">
				<div class="sk_category_menu_ico">
					<div>
						<div class="sk_svg_tiles_ico_active" style="background-image: url(<?=$icons_path?>tiles_active.png)"></div>
						<div class="sk_svg_tiles_ico_passive" style="background-image: url(<?=$icons_path?>tiles_passive.png)"></div>
					</div>
				</div>
				<div class="sk_category_menu_name">
					<div>
						<span>Плитка</span>
						<span>Плитка</span>
					</div>
				</div>
				<div class="sk_category_menu_desc">
					<div>
						<span>Печать<br>на плитке</span>
						<span>Печать<br>на плитке</span>
					</div>
				</div>
			</a>
		</li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page sk_category_menu_63 <?php echo ($curr_url == '/stolyi' ? 'current-menu-item current_page_item' : '');?>">
			<a href="<?=$home_url?>stolyi">
				<div class="sk_category_menu_ico">
					<div>
						<div class="sk_svg_ceiling_ico_active" style="background-image: url(<?=$icons_path?>ceiling_active.png)"></div>
						<div class="sk_svg_ceiling_ico_passive" style="background-image: url(<?=$icons_path?>ceiling_passive.png)"></div>
					</div>
				</div>
				<div class="sk_category_menu_name">
					<div>
						<span>Столы</span>
						<span>Столы</span>
					</div>
				</div>
				<div class="sk_category_menu_desc">
					<div>
						<span>Столы<br>с фотопечатью</span>
						<span>Столы<br>с фотопечатью</span>
					</div>
				</div>
			</a>
		</li>
		<li class="menu-item menu-item-type-post_type menu-item-object-page sk_category_menu_66 <?php echo ($curr_url == '/fasadyi' ? 'current-menu-item current_page_item' : '');?>">
			<a href="<?=$home_url?>fasadyi">
				<div class="sk_category_menu_ico">
					<div>
						<div class="sk_svg_fasades_ico_active" style="background-image: url(<?=$icons_path?>fasades_active.png)"></div>
						<div class="sk_svg_fasades_ico_passive" style="background-image: url(<?=$icons_path?>fasades_passive.png)"></div>
					</div>
				</div>
				<div class="sk_category_menu_name">
					<div>
						<span>Фасады</span>
						<span>Фасады</span>
					</div>
				</div>
				<div class="sk_category_menu_desc">
					<div>
						<span>Мебельные<br>фасады</span>
						<span>Мебельные<br>фасады</span>
					</div>
				</div>
			</a>
		</li>
	</ul>
</div>

 
