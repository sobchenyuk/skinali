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

</div> <!-- width 1600px -->


<div class="container">
	<footer>
		<div>
			<div class="menu-menyu-podvala-container">
				<?php if ($smenu_footer) { ?>
				<ul id="menu-menyu-podvala" class="menu">
					<?php echo html_entity_decode($smenu_footer); ?>
				</ul>
				<?php } ?>

				<!--<ul id="menu-menyu-podvala" class="menu">
                    <li id="menu-item-72" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/o-kompanii/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>o-kompanii">О компании</a></li>
                    <li id="menu-item-74" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/chasto-zadavaemyie-voprosyi/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>chasto-zadavaemyie-voprosyi">Часто задаваемые вопросы</a></li>
                    <li id="menu-item-68" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/dileram/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>dileram">Дилерам</a></li>
                    <li id="menu-item-69" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/dostavka-i-oplata/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>dostavka-i-oplata">Доставка и оплата</a></li>
                    <li id="menu-item-73" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/ustanovka-skinali/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>ustanovka-skinali">Установка скинали</a></li>
                    <li id="menu-item-4848" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/stolyi/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>stolyi">Столы</a></li>
                    <li id="menu-item-71" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/kontaktyi/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>kontaktyi">Контакты</a></li>
                    <li id="menu-item-70" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/sitemap/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>sitemap">Карта сайта</a></li>
                    <li id="menu-item-2313" class="menu-item menu-item-type-post_type menu-item-object-page <?php echo ($curr_url == '/foto-dlya-skinali/' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>foto-dlya-skinali">Фото для скинали</a></li>
                </ul>-->
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

		<div class="col-right">
			<link itemprop="url" href="<?//=$home_url?>">
			<meta itemprop="name" content="PrintColor">
			<address itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
				<ul class="list">



					<?php if ($location1) { ?>
					<li itemprop="addressLocality"><?php echo $location1; ?></li>
					<?php } ?>

					<?php if ($email1) { ?>
					<li>E-mail: <a href="mailto:<?php echo $email1; ?>"> <?php echo $email1; ?></a></li>
					<?php } ?>

					<li itemprop="telephone">Тел.:
						<?php if ($telephone3) { ?>
						<a href="tel:<?php echo $telephone3; ?>"><?php echo $telephone3; ?></a>,
						<?php } ?>
						<?php if ($telephone4) { ?>
						<a href="tel:<?php echo $telephone4; ?>"><?php echo $telephone4; ?></a>
						<?php } ?>
					</li>
				</ul>
			</address>

			<?php if ($iconlink) { ?>
			<div class="socialRow">
				<?php echo html_entity_decode($iconlink); ?>
			</div>
			<?php } ?>

		</div>



		<span class="sk_footer_triangle1">◢</span>
		<span class="sk_footer_triangle2">◢</span>
	</footer>
	<?php if ($copyright1) { ?>
	<div class="sk_post_footer"><?php echo $copyright1; ?></div>
	<?php } ?>
</div>


		<!--<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />-->
		<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>



		<script src="catalog/view/javascript/js/script.js" type="text/javascript"></script>
		
		<script src="catalog/view/javascript/js/jquery.cookie.js" type="text/javascript"></script>
		<script src="catalog/view/javascript/js/AC_RunActiveContent.js" type="text/javascript"></script>
		<script src="catalog/view/javascript/js/popup.js" type="text/javascript"></script>
		<script src="catalog/view/javascript/js/menu.js" type="text/javascript"></script>
		<script type="text/javascript" src="catalog/view/javascript/js/jquery.elevatezoom.js"></script>
		<!--<script type="text/javascript" src="catalog/view/javascript/js/main.min.js"></script>-->

		<script src="catalog/view/javascript/js/mask.js" type="text/javascript"></script>


		<script type="text/javascript">

            window.addEventListener('load', function (ev) {
                var popuper = function(){

                    var formContent = $('.formContent');
                    var messageContent = $('.messageContent');

                    var key = document.querySelectorAll('.modal-key');
                    for (var i = key.length - 1; i >= 0; i--) {
                        key[i].onclick = function(){
                            var el = document.querySelector(this.getAttribute('data-href'));
                            // console.log(el)
                            if (el.getAttribute('data-status') == 'hidden') {
                                el.setAttribute('data-status','visab');
                            }
                            else{
                                el.setAttribute('data-status','hidden');
                            }
                        }
                    }
                    var popuper = document.querySelectorAll('.popuper');
                    for (var i = popuper.length - 1; i >= 0; i--) {
                        popuper[i].onclick = function(e){
                            if (e.target.className == 'close' || e.target.className == 'btn close') {
                                this.setAttribute('data-status','hidden');

                                if(!messageContent.hasClass( "hidden" )){
                                    messageContent.addClass('hidden');
                                }

                                if(!messageContent.find('.message-success').hasClass( "hidden" )) {
                                    messageContent.find('.message-success').addClass('hidden');
                                }

                                if(!messageContent.find('.message-error').hasClass( "hidden" )) {
                                    messageContent.find('.message-error').addClass('hidden');
                                }

                                if(!messageContent.hasClass( "message-Content-success" )){
                                    messageContent.removeClass('message-Content-success');
                                }
                                if(!messageContent.hasClass( "message-Content-red" )){
                                    messageContent.removeClass('message-Content-red');
                                }

                                if(formContent.hasClass( "hidden" )){
                                    formContent.removeClass('hidden');
                                }

                                if(!formContent.find('.message-failure').hasClass( "hidden" )){
                                    formContent.find('.message-failure').addClass('hidden');
                                }


                            }
                            if (e.target.className == 'popuper') {
                                this.setAttribute('data-status','hidden');
                            }
                        }
                    }
                }();

                $('.phone').mask('+38 (099)999-99-99');


                $('#callBackForm').submit(function(e){
                    e.preventDefault();
                    var form = $(this);
                    var formContent = $('.formContent');
                    var messageContent = $('.messageContent');
                    $.ajax({
                        url: 'index.php?route=common/orderCall/orderCallCustom',
                        type: 'post',
                        data: form.serialize(),
                        responseText: 'text',
                        success: function(data) {
                            if(data === 'failure') {
                                formContent.find('.message-failure').removeClass('hidden');
                            } else if(data === 'success') {
                                messageContent.removeClass('hidden').addClass('message-Content-success');
                                formContent.addClass('hidden');
                                messageContent.find('.message-success').removeClass('hidden');
                                form[0].reset();
                            }
                        },
                        error: function () {
                            messageContent.removeClass('hidden').addClass('message-Content-red');
                            formContent.addClass('hidden');
                            messageContent.find('.message-error').removeClass('hidden');
                        }
                    });

                });
            });

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