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

        .hidden {
            display: none;
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
        .container_bg {
            background-color: #191919;
            padding: 1px 0;
            -webkit-box-shadow: 0 0 10px #000;
            box-shadow: 0 0 10px #000;
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
        header>.sk_main_menu ul {
            width: auto;
            height: 100%;
            margin: 0 auto;
            padding-left: 11px;
            padding-right: 11px;
        }

        header>.sk_main_menu {
            width: auto;
            display: table;
            margin: 0 auto;
        }

        .sk_breadcrumbs {
            background: -webkit-gradient(linear, left top, left bottom, from(#232222), to(#191919));
            background: -webkit-linear-gradient(top, #232222, #191919);
            background: -o-linear-gradient(top, #232222, #191919);
            background: linear-gradient(top, #232222, #191919);
            height: 50px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-shadow: 0 0 2px #000;
            box-shadow: 0 0 2px #000;
            border-top: 1px solid #3f3f3f;
        }

        .sk_main_header_holder {
            border-top: 0;
            padding-top: 0;
        }
        .sk_breadcrumbs_holder>a, .sk_breadcrumbs_holder span a {
            padding-top: 0;
        }
        .call_back form {
            margin-top: 20px;
        }
        .call_back .manager span {
            font-size: 14px;
            width: 78px;
            display: block;
            margin: 0 auto;
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
            .sk_galery_main_category, #right_sidebar {
                width: 20%;
            }
            .sk_galery_not_main_category, .sk_page_galery_container, .sk_galery_container, .sk_archive_holder {
                width: 60%;
            }
            #sk_galery_container_holder {
                width: 90%;
            }
            .accordeon h3, .acc_list a {
                font-size: 16px;
            }
            div[class^="money_text_holder_"] ul {
                padding-left: 0;
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
            margin-top: 0;
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
        #wrapper footer li.current-menu-item {
            background-color: #1f1f1f00 !important;
            box-shadow: 2px 2px 2px #1f1f1f00 inset , 0 1px 1px -1px #1f1f1f00!important;
            text-shadow: 0 0 0 #1f1f1f00 !important;
        }
        .message-error {
            color: red;
        }
        .message-success {
            color: #52da16;
        }
        .popuper#callBack .message-Content-red .bodyPop{
            border-color: red;
        }
        .popuper#callBack .message-Content-success .bodyPop {
            border-color: #52da16;
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
            

<header>
	<?php $curr_url = $_SERVER['REQUEST_URI'];?>
	<?php //echo $curr_url; ?>
	<?php //echo $_SERVER['HTTP_USER_AGENT']; ?>

<div class="container_bg">
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



        <?php endif; ?>


            <header class="container">
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


        <?php $icons_path = 'catalog/view/theme/printcolor/image/category/'; ?>




<div class="container" >

