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

        /*body {*/
            /*background: none;*/
        /*}*/

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

        .sk_order_shadow, .sk_order_pict_holder>img {
            height: auto;
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

        header>.sk_main_menu {
            width: auto;
            margin: 0 auto;
            z-index: 1;
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
                width: 19%;
            }
            .sk_galery_not_main_category,
            .sk_page_galery_container,
            .sk_galery_container,
            .sk_archive_holder, .sk_order_holder>.sk_order_form_holder {
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
            div[class^="icon_for_diler_"] {
                background-size: 100%;
                background-repeat: no-repeat;
                width: 94px;
            }
            .diler_text_7 form {
                width: 90%;
            }
            #price {
                font-size: 30px;
            }
            .sk_order_form>.sk_submit_holder {
                width: 100%;
            }
            .sk_order_change_holder {
                width: 100%;
            }
            .sk_mirror_text, .sk_black_white_text, .sk_sepia_text {
                font-size: 16px;
            }
            .rb-gallery-0.rb-gallery {
                width: 60% !important;
            }
            .address_main_holder .map_holder {
                position: relative;
                padding-bottom: 56.25%;
                height: 0;
                overflow: hidden;
            }
            .address_main_holder .map_holder iframe {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }
            .address_holder table {
                font-size: 16px;
            }
            .address_main_holder .address_holder {
                width: 36%;
            }
            .address_main_holder .map_holder {
                width: 55%;
            }
            .sk_galery_not_main_category_wraper>ul>li {
                width: 23%;
            }
            .sk_galery_not_main_category_wraper>ul>li>a {
                font-size: 15px;
            }
            #sk_galery_container_holder img {
                width: 62% !important;
            }
            .sk_post_date_in #image-box img {
                width: 100% !important;
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
        .lego_bottom-left button {
            font-size: 12px;
        }


        #sk_html_block body.information-information-89 .container.container_center {
            width: 1600px;
        }
        #sk_html_block body.information-information-89 .container.container_center .sk_breadcrumbs {
            width: 1200px;
            margin: 0 auto;
            margin-bottom: 15px;
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

        .topPanel[data-fixed] {
            padding-top: 3px;
        }

        .topPanel[data-fixed] {
            position: fixed;
            top: 0;
            left: 0;
            -webkit-box-shadow: 0 0 10px #000;
            box-shadow: 0 0 10px #000;
            z-index: 100;
            width: 100%;
        }
        .topPanel[data-fixed] .contacts, .topPanel[data-fixed] .orderCallBack {
            display: none !important;
        }
        #sk_html_block .topPanel[data-fixed] .sk_first_line.container {
            margin-bottom: 1px;
            margin-top: 0;
        }
        .topPanel[data-fixed] .naver{
            position: relative;
            top: -19px;
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

        .container-f {
            width: 1170px;
            padding: 0 15px;
            margin: 0 auto;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            max-width: 100%;
        }
        @media (max-width: 1615px) {
            .container-f {
                width: 980px;
                padding: 0 15px;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }
        }
        .whatWeMake .titleSector {
            font-size: 30px;
            color: #00c7fd;
            padding-bottom: 23px;
            text-align: center;
        }
        .whatWeMake .rowCards {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
        }
        .whatWeMake .rowCards .card {
            width: 33.3%;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding: 13px;
            float: left;
            -webkit-transition-duration: .5s;
            -o-transition-duration: .5s;
            transition-duration: .5s;
        }
        .whatWeMake .rowCards .card .wrapImg {
            background-color: #191919;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            -webkit-box-shadow: 1px 3px 6px rgba(0, 0, 0, 0.4);
            box-shadow: 1px 3px 6px rgba(0, 0, 0, 0.4);
        }

            .whatWeMake .rowCards .card .wrapImg .icon {
                height: 324px;
                -webkit-background-size: cover;
                background-size: cover;
                background-position: center;
                border: 2px solid #151515;
                -webkit-transition-duration: .25s;
                -o-transition-duration: .25s;
                transition-duration: .25s;
            }

            .whatWeMake .rowCards .card .name {
                font-size: 22px;
                color: #00c7fd;
                text-transform: uppercase;
                text-align: center;
                padding: 45px 0 10px;
            }

            .whatWeMake .rowCards .card .info {
                font-size: 20px;
                color: #7c7f82;
                text-align: center;
            }
        .whatWeMake .rowCards .card:hover .wrapImg .icon {
            border: 2px solid #00c7fd;
        }
        .whatWeMake hr {
            height: 1px;
            background-color: #000;
            border: 0;
            overflow: hidden;
            -webkit-box-shadow: 0 2px 3px #000;
            box-shadow: 0 2px 3px #000;
        }
        .whatWeMake .rowCards .card a {
            text-decoration: none;
        }
        @media (max-width: 1615px) {
            .whatWeMake .rowCards .card .wrapImg .icon {
                height: 270px;
            }
        }
        @media (max-width: 1615px) {
            .whatWeMake .rowCards .card .name {
                font-size: 20px;
            }
        }
        @media (max-width: 1615px) {
            .whatWeMake .rowCards .card .info {
                font-size: 16px;
            }
        }
        .textSection hr {
            height: 1px;
            background-color: #000;
            border: 0;
            overflow: hidden;
            -webkit-box-shadow: 0 2px 3px #000;
            box-shadow: 0 2px 3px #000;
            margin: 10px 0 40px;
        }
        .textSection h2 {
            font-size: 30px;
            color: #00c7fd;
            padding-bottom: 23px;
            text-align: center;
        }
        .section.textSection {
            margin-bottom: 65px;
        }
        .textSection span {
            font-size: 22px !important;
            color: #7c7f82 !important;
            text-indent: 30px !important;
            line-height: 36px !important;
            font-family: "AGLettericaCondensed-Roman",sans-serif !important;
        }
        .textSection p {
            text-indent: 20px;
        }
        @media (max-width: 1615px) {

            .textSection span {
                font-size: 18px !important;
                line-height: 24px !important;
            }

        }


        .content .rowTitlePage {
            font-size: 30px;
            color: #00c7fd;
            text-align: center;
            margin-bottom: 25px;
        }
        .content .rowTitlePage .title {
            padding: 20px 0 15px;
            font-size: 30px;
        }

        .content .rowTitlePage hr {
            height: 1px;
            background-color: #000;
            border: 0;
            overflow: hidden;
            -webkit-box-shadow: 0 2px 3px #000;
            box-shadow: 0 2px 3px #000;
        }

        .content .middle-sector .rowInfoNode {
            width: 100%;
            background-color: #1f1f1f;
            -webkit-box-shadow: 0 2px 10px #000;
            box-shadow: 0 2px 10px #000;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding: 30px;
            float: left;
        }

        .content .middle-sector .rowInfoNode .nodeImg {
            width: 100%;
        }

        .content .middle-sector .rowInfoNode .text {
            font-size: 18px;
            color: #7c7f82;
            line-height: 26px;
            font-weight: 400;
            margin: 15px 0 15px;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct {
            float: left;
            width: 100%;
        }


        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left {
            width: 50%;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding-right: 50px;
            float: left;
        }



        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right {
            float: left;
            display: block;
            width: 50%;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding-left: 50px;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
        }

        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .fieldGroup {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: start;
            -webkit-justify-content: flex-start;
            -ms-flex-pack: start;
            justify-content: flex-start;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding: 0 6px;
            margin: 6px 0;
            -webkit-box-align: end;
            -webkit-align-items: flex-end;
            -ms-flex-align: end;
            align-items: flex-end;
            float: left;
            margin-bottom: 0;
            margin-top: 0;
        }

        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .fieldGroup label {
            font-size: 20px;
            display: block;
            margin: 6px 0;
            font-weight: 400;
            width: 30%;
            float: left;
            color: #727070;
            margin-bottom: -6px;
            margin-top: 0;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .fieldGroup .placeWrite {
            text-align: left;
            background-color: #141414;
            border: 0;
            color: #fff;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding: 0 5px;
            font-size: 18px;
            font-weight: 400;
            line-height: 38px;
            width: 70%;
            -webkit-box-shadow: inset 0 2px 8px #000;
            box-shadow: inset 0 2px 8px #000;
            margin: 0;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .fieldGroup label b {
            color: #00c7fd;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .rowButtons {
            width: 100%;
            text-align: right;
            float: left;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .rowButtons .btn {
            border: 0;
            margin-right: 10px;
            background-color: #3693ac;
            width: 220px;
            line-height: 44px;
            font-size: 20px;
            color: #fff;
            text-shadow: 0 0 2px #000;
            cursor: pointer;
            -webkit-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
            margin-top: 20px;
        }

        .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .rowButtons .btn:hover {
            -webkit-transform: scale(1.05);
            -ms-transform: scale(1.05);
            transform: scale(1.05);
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup {
            width: 100%;
            margin-bottom: 15px;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .titleGrouop {
            font-size: 22px;
            color: #d2d2d2;
            padding-bottom: 8px;
            font-weight: 400;
            width: 100%;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom {
            min-width: 80px;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            cursor: pointer;
            position: relative;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom select {
            display: none;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom .active {
            background-color: #191919;
            width: 100%;
            -webkit-box-shadow: inset 0 0 2px #000;
            box-shadow: inset 0 0 2px #000;
            font-size: 18px;
            color: #7c7f82;
            line-height: 30px;
            border-top: 1px solid #3f3f3f;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding-left: 15px;
            background-image: url(catalog/view/theme/printcolor/image/order/selectArrow.png);
            background-repeat: no-repeat;
            background-position: right 10px center;
            box-sizing: border-box;
            padding-right: 40px;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom .listOption {
            max-height: 0;
            overflow: hidden;
            position: absolute;
            top: 30px;
            z-index: 18;
            background-color: #191919;
            width: 100%;
            border-top: 1px solid transparent;
            font-size: 18px;
            color: #7c7f82;
            line-height: 30px;
            -webkit-box-shadow: 0 1px 2px #000;
            box-shadow: 0 1px 2px #000;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-transition-duration: 1s;
            -o-transition-duration: 1s;
            transition-duration: 1s;
        }

        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom .listOption .li {
            padding-left: 15px;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowEffects {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            padding: 15px 0 10px;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-justify-content: space-around;
            -ms-flex-pack: distribute;
            justify-content: space-around;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowEffects hr {
            height: 1px;
            width: 100%;
            margin: 10px 0 20px;
            display: block;
            background-color: #000;
            border: 0;
            overflow: hidden;
            -webkit-box-shadow: 0 2px 3px #000;
            box-shadow: 0 2px 3px #000;
        }

        .fieldGroup input, .fieldGroup textarea {
            border: 1px solid #14141400 !important;
        }

        .fieldGroup input:focus, .fieldGroup textarea:focus {
            border: 1px solid #87ceeb !important;
        }

        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowEffects .keyEffect {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            cursor: pointer;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowEffects .keyEffect .wrapIcon {
            width: 50px;
            display: block;
            -webkit-box-shadow: 0 0 2px #000;
            box-shadow: 0 0 2px #000;
            border-top: 1px solid #454545;
            height: 50px;
            background-repeat: no-repeat;
            -webkit-background-size: 80% auto;
            background-size: 80% auto;
            background-position: center 4px;
            -webkit-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowEffects .keyEffect .textor {
            width: 100%;
            text-align: center;
            font-size: 16px;
            color: #7c7f82;
            margin-top: 7px;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowSocialProducts {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: justify;
            -webkit-justify-content: space-between;
            -ms-flex-pack: justify;
            justify-content: space-between;
            width: 100%;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowSocialProducts .resultsPrice {
            font-weight: 400;
            font-size: 30px;
            color: #00c7fd;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowBtnSector {
            width: 100%;
            margin-top: 25px;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowBtnSector .btn {
            font-weight: 400;
            font-size: 22px;
            color: #00c7fd;
            background-color: transparent;
            border: 1px solid #00c7fd;
            width: 250px;
            text-align: center;
            line-height: 44px;
            cursor: pointer;
            -webkit-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowBtnSector .btn:hover {
            background-color: #00c7fd;
            color: #fff;
        }
        .sk_order_pict_holder {
            margin: 0 auto;
            padding-top: 0;
            text-align: center;
            width: 100%;
            position: relative;
        }
        .sk_order_shadow {
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
        }
        .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom[data-open] .listOption {
            border-top: 1px solid #3f3f3f;
            max-height: 1000px;
            z-index: 30;
        }
        @media (max-width: 1615px) {
            .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom[data-open] .listOption {
                font-size: 14px;
            }
            .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowSocialProducts .resultsPrice {
                font-size: 18px;
                width: 100%;
                margin-bottom: 10px;
            }
            .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowSocialProducts {
                -webkit-flex-wrap: wrap;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
            }
            .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowEffects .keyEffect .textor {
                font-size: 14px;
            }
            .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .rowEffects .keyEffect {
                width: 30%;
            }

            .content .middle-sector .rowInfoNode .rowIntoProduct .col-right .selectGroup .selectorCustom .active {
                font-size: 14px;
            }

            .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .fieldGroup .placeWrite {
                width: 100%;
            }

            .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .fieldGroup label {
                width: 100%;
            }

            .content .middle-sector .rowInfoNode .rowIntoProduct .col-left .formGroupSkinali .fieldGroup {
                -webkit-flex-wrap: wrap;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
            }

            .content .middle-sector {
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            .content .middle-sector {
                padding: 0 15px;
            }

            .content .middle-sector .rowInfoNode .rowIntoProduct .col-left {
                padding-right: 0;
            }

            .content .middle-sector .rowInfoNode .rowIntoProduct .col-right {
                padding-left: 20px;
            }
            .right_menu_holder li>a {
                font-size: 14px;
            }
            .tags_cloud {
                display: none;
            }
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

