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

<!-- font-awesome v4.7.0 -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<!--<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">-->

<link href="catalog/view/theme/printcolor/stylesheet/owl.carousel.min.css" rel="stylesheet">


<link href="catalog/view/theme/printcolor/stylesheet/style.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/add_style.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/adaptiv.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/opera.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/style_Chrome.css" rel="stylesheet">
<link href="catalog/view/theme/printcolor/stylesheet/new.css" rel="stylesheet">


<script src="catalog/view/javascript/js/script.js" type="text/javascript"></script>

    <style>

        * {
            padding: 0;
            outline: 0;
            margin: 0;
            font-weight: 700;
        }


        body {
            background: none;
        }

        header .sk_first_line.container {
            background: none;
        }

        header .sk_first_line.container nav.sk_main_menu.gradient {
            display: flex;
            padding: 6px 0;
            margin-left: 10px;
            position: relative;
        }

        header .sk_first_line.container .sk_main_menu ul {
            width: auto;
            float: none;
        }

        @media (max-width: 1615px) {
            header .sk_first_line.container nav.sk_main_menu.gradient {
                width: 50%;
            }
            header .sk_first_line.container .sk_main_menu ul {
                width: 650px;
            }

        }
        @media (min-width: 1615px) {

            header .sk_first_line.container .sk_main_menu ul {
                width: 1100px;
            }
        }

        header .sk_first_line.container .sk_main_menu li {
            margin: auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0;
        }
        header .sk_first_line.container .sk_first_line_container li:before {
            content: "";
            display: none;
        }


        header .sk_first_line.container .sk_first_line_container {
            width: 100%;
            display: flex;
            align-items: flex-end;
        }

        header .sk_first_line.container .sk_first_line_container .contacts {
            padding-left: 0;
            margin-left: 0;
            position: absolute;
            width: 100%;
            display: flex;
            justify-content: center;
            top: -40px;
        }
        header .sk_first_line.container .sk_first_line_container .contacts .phoneList {
            display: flex;
        }

        header .sk_first_line.container .sk_first_line_container .contacts .phoneList a {
            font-size: 16px;
            color: #acacac;
            text-decoration: none;
            -webkit-transition-duration: .5s;
            -o-transition-duration: .5s;
            transition-duration: .5s;
            margin: 0 13px;
            -moz-transform: skewX(25deg);
            -ms-transform: skewX(25deg);
            -webkit-transform: skewX(25deg);
            -o-transform: skewX(25deg);
            transform: skewX(25deg);
            transition: color .2s ease-out 0s;
        }
        header .sk_first_line.container .sk_first_line_container .contacts .phoneList a i {
            font-size: 18px;
            margin-right: 5px;
        }

        header .sk_first_line.container .sk_first_line_container .contacts .phoneList a:hover {
            color: #00c7fd;
        }


        .menu-glavnoe-menyu-container ul.naver {
            display: flex;
        }

        .menu-glavnoe-menyu-container .naver li ul {
            margin-top: 25px;
            position: absolute;
            background-color: #191919;
            width: 325px !important;
            padding: 0;
            top: 100%;
            z-index: 10000;
            -webkit-transition-duration: 2.5s;
            -o-transition-duration: 2.5s;
            transition-duration: 2.5s;
            -webkit-transition-property: max-height;
            -o-transition-property: max-height;
            transition-property: max-height;
            max-height: 0;
            overflow: hidden;
            -webkit-box-shadow: 0 0 10px #191919;
            box-shadow: 0 0 10px #191919;
        }

        .menu-glavnoe-menyu-container .naver li ul li:first-child {
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .menu-glavnoe-menyu-container .naver li ul li {
            float: none;
        }
        .menu-glavnoe-menyu-container .naver li {
            display: block;
            position: relative;
            float: left;
        }

        .menu-glavnoe-menyu-container .naver li ul li a {
            padding-bottom: 0;
            line-height: 36px;
            margin: 0 7px;
            width: 100%;
            border-bottom: 1px solid transparent;
        }

        .menu-glavnoe-menyu-container .naver li ul li:hover>a {
            color: #00c7fd;
            border-bottom: 1px solid #00c7fd;
            cursor: pointer;
        }

        @media (max-width: 1615px) {
            .menu-glavnoe-menyu-container .naver li a {
                margin: 0 7px;
                font-size: 14px;
            }
        }
        .menu-glavnoe-menyu-container .naver li a {
                text-decoration: none;
                color: #7c7f82;
                display: block;
                padding: 0;
                padding-bottom: 25px;
                margin-bottom: -25px;
                text-transform: uppercase;
                -webkit-transition-duration: .25s;
                -o-transition-duration: .25s;
                transition-duration: .25s;
                border-bottom: 2px solid transparent;
        }

        .menu-glavnoe-menyu-container .naver li:hover > a {
            color: #00c7fd;
            border-bottom: 2px solid #00c7fd;
            cursor: pointer;
        }
        .menu-glavnoe-menyu-container .naver li:hover > ul {
            max-height: 1000px;
        }
        #menu-glavnoe-menyu li:nth-last-child(1), #menu-glavnoe-menyu li:nth-last-child(2), #menu-glavnoe-menyu li:nth-last-child(3), #menu-glavnoe-menyu li:nth-last-child(4) {
            display: inline-block;
        }
        #sk_html_block .sk_first_line.container {
            background: none;
            margin-bottom: 19px;
            margin-top: 19px;
        }
        .right-col {
            display: flex;
            align-items: flex-start;
            height: 100%;
            margin: auto;
        }

        .right-col .orderCallBack {
            color: #7c7f82;
            font-size: 18px;
            line-height: 50px;
            padding: 0 40px;
            cursor: pointer;
            border: 1px solid #000;
            border-top: 1px solid #454545;
            white-space: nowrap;
            -webkit-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }
        .right-col .orderCallBack:hover {
            border: 1px solid #00c7fd;
            color: #00c7fd;
        }


        .popuper#callBack {
            background-color: rgba(0, 0, 0, 0.4);
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 99;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            display: none;
            z-index: 10000;
        }

        .popuper#callBack[data-status="visab"] {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
        }

        .popuper#callBack .popuperContent {
            background-color: #191919;
            width: 840px;
            -webkit-box-shadow: 0 0 4px #000;
            box-shadow: 0 0 4px #000;
        }

        .popuper#callBack .popuperContent .headerPop {
            font-size: 18px;
            color: #00c7fd;
            text-align: center;
            text-transform: uppercase;
            padding: 26px 0 20px;
            position: relative;
        }

        .popuper#callBack .popuperContent .headerPop .close {
            border: 1px solid #000;
            border-top: 1px solid #383838;
            width: 38px;
            height: 38px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            position: absolute;
            top: 18px;
            cursor: pointer;
            right: 18px;
            z-index: 1;
            background-image: url("/catalog/view/theme/printcolor/img/closeGrey.png");
            -webkit-background-size: 60% auto;
            background-size: 60% auto;
            background-position: center;
            background-repeat: no-repeat;
            -webkit-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }


        .popuper#callBack .popuperContent .headerPop .close:hover {
            border-color: #00c7fd;
            background-image: url("/catalog/view/theme/printcolor/img/close.png");
        }

        .popuper#callBack .popuperContent .bodyPop {
            width: 680px;
            margin: 0 auto;
            border: 1px solid #232323;
            text-align: center;
            padding: 15px 0 25px;
        }

        .popuper#callBack .popuperContent .bodyPop .titleField {
            font-size: 22px;
            color: #d2d2d2;
            margin-bottom: 22px;
        }

        .popuper#callBack .popuperContent .bodyPop .placeWrite {
            font-size: 22px;
            color: #d2d2d2;
            border: 0;
            background-color: transparent;
        }

        .popuper#callBack .popuperContent .row {
            width: 100%;
        }

        .popuper#callBack .popuperContent .rowButton {
            width: 100%;
            text-align: center;
        }

        .popuper#callBack .popuperContent .rowButton .btn {
            font-size: 24px;
            color: #00c7fd;
            border: 1px solid #00c7fd;
            background-color: transparent;
            font-family: Arial;
            font-weight: 400;
            line-height: 42px;
            width: 250px;
            margin: 15px 0 40px;
            cursor: pointer;
            -webkit-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }

        .popuper#callBack .popuperContent .rowButton .btn:hover {
            background-color: #00c7fd;
            color: #191919;
        }




        #wrapper {
            max-width: 100%;
            padding: 0;
        }
        #sk_html_block .container {
            width: 1600px;
            max-width: 100%;
            margin: 0 auto;
        }
        @media (max-width: 1615px) {
            #sk_html_block .container {
                width: 1200px;
                padding: 0 15px;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }
        }

        footer {
            box-shadow: 0 0 0;
        }

        footer .col-right .list li {
            list-style: none;
            padding: 6px 0;
            font-size: 16px;
            color: #959595;
        }
        footer address {
            padding-left: 0;
        }
        footer .col-right .list li a {
            text-decoration: none;
            font-size: 16px;
            color: #959595;
        }
        footer .socialRow {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            margin-top: 55px;
        }
        footer .socialRow .socialCard {
            -webkit-box-shadow: 2px 2px 2px #000 inset;
            box-shadow: 2px 2px 2px #000 inset;
            -webkit-transition-duration: all .3s ease-out 0s;
            -o-transition-duration: all .3s ease-out 0s;
            transition-duration: all .3s ease-out 0s;
            background-color: #0c0c0c;
            display: block;
            position: relative;
            width: 50px;
            height: 50px;
            margin: 0 2px;
            z-index: 1;
            text-decoration: none;
        }
        footer .socialRow .socialCard .icon {
            display: block;
            width: 26px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            height: 26px;
            left: 50%;
            margin-left: -13px;
            top: 50%;
            margin-top: -13px;
            position: absolute;
            color: #0c0c0c;
            -webkit-transition-duration: .5s;
            -o-transition-duration: .5s;
            transition-duration: .5s;
            font-size: 16px;
        }
        footer .socialRow .socialCard:hover .icon {
            -webkit-transform: scale(1.35, 1.35);
            -ms-transform: scale(1.35, 1.35);
            transform: scale(1.35, 1.35);
        }
    </style>


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

            <div class="popuper callBack" id="callBack" data-status="hidden">
                <div class="popuperContent">
                    <div class="headerPop">
                        <div class="titlePopuer">
                            Хотите мы вам перезвоним?
                        </div>
                        <div class="close">
                        </div>
                    </div>
                    <div class="bodyPop">
                        <div class="titleField">Оставьте свой номер телефона и мы перезвоним Вам</div>
                        <input type="text" placeholder="+38 (0__)___-__-__" class="phone placeWrite">
                    </div>
                    <div class="row rowButton">
                        <input type="submit" class="btn" value="Заказать звонок">
                    </div>
                </div>
            </div>

<header>
	<?php $curr_url = $_SERVER['REQUEST_URI'];?>
	<?php //echo $curr_url; ?>
	<?php //echo $_SERVER['HTTP_USER_AGENT']; ?>


	<div class = "sk_first_line container">
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
            <nav class = "sk_main_menu gradient">

                <div class="contacts">
                    <div class="phoneList">

                        <?php if ($telephone1) { ?>
                        <div><a href="tel:<?php echo $telephone1; ?>"><i class="fa fa-phone-square" aria-hidden="true"></i><?php echo $telephone1; ?></a></div>
                        <?php } ?>

                        <?php if ($telephone2) { ?>
                        <div><a href="tel:<?php echo $telephone2; ?>"><i class="fa fa-phone-square" aria-hidden="true"></i><?php echo $telephone2; ?></a></div>
                        <?php } ?>

                    </div>
                </div>

                <div class="menu-glavnoe-menyu-container">

                    <?php if ($smenu_header) { ?>
                    <ul class="naver">
                        <?php echo html_entity_decode($smenu_header); ?>
                    </ul>
                    <?php } ?>

                </div>
                <!--<div id="menu_right_trigger"></div>
                <div id="menu_left_trigger"></div>-->
            </nav>


            <div class="right-col">
                <div>
                    <div class="orderCallBack modal-key" data-href="#callBack">Заказать звонок</div>
                </div>
            </div>


		</div>
	</div>

</header>

<!-- Слайдер -->
<?php if ($is_home): ?>

            <div class="section offTop owl-carousel headerCarousel">

                <?php foreach ($picture_gallery->rows as $item){ ?>

                <?php if ($item['album_id'] == 16): ?>

                <div class="card" style="background-image: url('<?php echo '/image/' . $item['image'] ?>');">
                    <div class="container-f">
                        <div class="textNode">
                            <div>
                                <div class="title">
                                    <?php echo $item['title'] ?>
                                </div>
                                <p class="text">
                                    <?php echo $item['name'] ?>
                                </p>
                            </div>
                            <a href="<?php echo $item['link'] ?>" class="link">Подробнее</a>
                        </div>
                    </div>
                </div>

                <?php endif; ?>

                <?php }; ?>


            </div>

            <script src="catalog/view/javascript/js/owl.carousel.min.js"></script>

            <script>

                $('.headerCarousel').owlCarousel({
                    items: 1,
                    nav: true,
                    navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>']
                })

            </script>



            <!--
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
            <!--	<div class="sk_slider_text_holder">
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
         -->

        <?php endif; ?>


            <header class="container">
                <nav class = "sk_main_menu gradient">
                    <div class="menu-glavnoe-menyu-container">

                        <?php if ($smenu_slider) { ?>
                        <ul id="menu-glavnoe-menyu" class="menu">
                            <?php echo html_entity_decode($smenu_slider); ?>
                        </ul>
                        <?php } ?>

                        <!--   <ul id="menu-glavnoe-menyu" class="menu">
                                <li class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/o-kompanii' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>o-kompanii">О компании</a></li>
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
                            </ul>-->
                        </div>
                        <!--<div id="menu_right_trigger"></div>
                        <div id="menu_left_trigger"></div>-->
                </nav>
            </header>
            <p>&nbsp;</p>





<div class="width" style="max-width: 1600px;padding: 0 15px;margin: 0 auto;">

