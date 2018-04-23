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

    <link href="catalog/view/theme/printcolor/stylesheet/adaptation.css" rel="stylesheet">

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
                <div class="popuperContent formContent">
                    <form id="callBackForm" action="">
                        <div class="headerPop">
                            <div class="titlePopuer">
                                Хотите мы вам перезвоним?
                            </div>
                            <div class="close">
                            </div>
                        </div>
                        <div class="bodyPop">
                            <div class="titleField">Оставьте свой номер телефона и мы перезвоним Вам</div>
                            <input type="text" name="phone" placeholder="+38 (0__)___-__-__" class="phone placeWrite">

                            <div class="message-failure titleField hidden"
                                 style="color: red; margin-top: 20px; margin-bottom: 10px;">
                                Пожалуйста, введите ваш номер телефона.
                            </div>
                        </div>
                        <div class="row rowButton">
                            <input type="submit" class="btn" value="Заказать звонок">
                        </div>
                    </form>

                </div>
                <div class="popuperContent messageContent hidden">
                    <div class="headerPop">
                        <div class="titlePopuer">
                            Результат
                        </div>
                        <div class="close">
                        </div>
                    </div>
                    <div class="bodyPop" >
                        <!-- сообщения об отправке -->
                        <div class="message-success titleField hidden">Ваш запрос успешно отправлен. Мы перезвоним Вам.</div>
                        <div class="message-error titleField hidden">Сбой на сервере. <br /> Ваше сообщение не отправлено. Попробуйте отправить позже.</div>
                    </div>
                    <div class="row rowButton">
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </div>
            

<header id="menu-top">
	<?php $curr_url = $_SERVER['REQUEST_URI'];?>
	<?php //echo $curr_url; ?>
	<?php //echo $_SERVER['HTTP_USER_AGENT']; ?>

<div class="container_bg topPanel">
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

            </nav>


            <div class="right-col">
                <div>
                    <div class="orderCallBack modal-key" data-href="#callBack">Заказать звонок</div>
                </div>
            </div>


        </div>
    </div>
</div>
    <div class="offTop"></div>
    <?php if ($is_home): ?>

    <?php else: ?>
    <p>&nbsp;</p>
    <?php endif; ?>

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

            <p>&nbsp;</p>


        <?php endif; ?>


            <header id="home-menu" class="container">
                <nav class = "sk_main_menu gradient">
                    <div class="menu-glavnoe-menyu-container">

                        <?php if ($smenu_slider) { ?>
                        <ul id="menu-glavnoe-menyu" class="menu">
                            <?php echo html_entity_decode($smenu_slider); ?>
                        </ul>
                        <?php } ?>

                </nav>
            </header>
            <p>&nbsp;</p>



            <!-- Тайлы -->
            <?php if ($is_home): ?>
            <div class="section whatWeMake">
                <div class="container-f">
                    <div class="titleSector">
                        Что мы делаем?
                    </div>
                    <hr>
                    <div class="rowCards">

                        <?php foreach ($picture_gallery->rows as $item){ ?>

                        <?php if ($item['album_id'] == 17): ?>

                        <div class="card">

                            <a href="<?php echo $item['link'] ?>">
                                <div class="wrapImg">
                                    <div class="icon" style="background-image: url('<?php echo '/image/' . $item['image'] ?>');"></div>
                                </div>
                                <h3 class="name"><?php echo $item['title'] ?></h3>
                                <p class="info"><?php echo $item['name'] ?></p>
                            </a>

                        </div>

                        <?php endif; ?>

                        <?php }; ?>

                    </div>
                </div>
            </div>


            <div class="section textSection">
                <div class="container-f">

                    <hr/>

                    <?php echo $content_top; ?>

                </div>

            </div>


            <?php endif; ?>


        <?php $icons_path = 'catalog/view/theme/printcolor/image/category/'; ?>




<div class="container container_center" >

