<?php echo $header; ?>

	<div class="sk_breadcrumbs">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<div id="sk_order" class="sk_breadcrumbs_holder">
			<a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title">
				<?php echo $breadcrumb['text']; ?>
			</a> » 
		<?php } ?>
			<span class="current"><?=$heading_title?></span>
		</div>
	</div>
	<?php
		$is_white_page = false;
		$white_pages = array("nashe-oborudovanie", "trebovaniya-k-faylam", "pravila-zamera", "ustanovka-skinali", "ultrafioletovaya-pechat");
		foreach ($white_pages as $white_page_url) {
			if (strpos($_SERVER["REQUEST_URI"], $white_page_url) !== false) {
				$is_white_page = true;
				break;
			}
		}
	?>
	
	
	<div class="sk_gallery_holder">
		<div class="sk_main_header_holder">
			<h1><a href="#">Отзывы наших клиентов</a></h1>
		</div>
		
			<?php
				/*print '<pre>';
				print_r ($total_reviews);
				print '</pre>';*/
				$home_url = '/skinali/';
				
				function getPointDateFormat($date) {
					$date_array = explode("-", $date);
					$day = $date_array[2];
					$month = $date_array[1];
					$year = $date_array[0];
					$point_date = $day . "." . $month . "." . $year;
					return $point_date;
				}
			?>
			
		
		<div class="sk_gallery_wraper" id="sk_galery">
			<?php echo $column_right; ?>	        				
			<?php echo $column_left; ?>

			<div class="sk_galery_container">
				<div id="sk_galery_container_holder">

				<div class="comments_holder">
					<button class="new_recall_button">Добавить отзыв</button>
				  
					<div id="respond" class="comment-respond">
						<h3 id="reply-title" class="comment-reply-title">Добавить комментарий
							<small>
								<a rel="nofollow" id="cancel-comment-reply-link" href="/otzyivyi-nashih-klientov/comment-page-2#respond" style="display:none;">Отменить ответ</a>
							</small>
						</h3>
						<form action="" method="post" id="commentform" class="comment-form" enctype="multipart/form-data">
							<p class="comment-notes"><span id="email-notes">Ваш e-mail не будет опубликован.</span> Обязательные поля помечены <span class="required">*</span></p>
							<p class="comment-form-comment">
								<label for="comment">Комментарий<span class="required">*</span></label>
								<textarea id="comment" name="comment" class="comment-form" cols="45" rows="8" aria-required="true" placeholder="" required=""></textarea>
							</p>
							<p class="comment-form-author">
								<label for="author">Имя<span class="required">*</span></label>
								<input type="text" id="author" name="author" class="author" placeholder="" maxlength="35" autocomplete="on" tabindex="1" required="">
							</p>
							<p class="comment-form-email">
								<label for="email">E-mail<span class="required">*</span></label>
								<input type="email" id="email" name="email" class="email" placeholder="example@example.com" maxlength="50" autocomplete="on" tabindex="2" required="">
							</p>
							<p class="comment-form-url">
								<label for="url">Профиль Вконтакте</label>
								<input type="url" id="url" name="url" class="site" placeholder="http://vk.com/id321123" maxlength="30" tabindex="3" autocomplete="on">
							</p>
							<p class="form-submit">
								<input name="submit" type="submit" id="submit" class="submit" value="Отправить">
								<!--<input type="hidden" name="comment_post_ID" value="4850" id="comment_post_ID">
								<input type="hidden" name="comment_parent" id="comment_parent" value="0">-->
							</p>
							<div id="comment-image-wrapper">
								<p id="comment-image-error"></p>
								<label for="comment_image">Выберите изображение для вашего комментария (GIF, PNG, JPG, JPEG):</label><br>
								<input type="file" name="comment_image" id="comment_image">
							</div>
						</form>
					</div>
		

					<h3 class="comments-caption"><a name="comments"> Всего отзывов: <?=count($total_reviews)?> </a></h3>
					<ul class="commentlist">
						<?php foreach ($showed_reviews as $one_review): ?>
						<li class="comment even thread-even depth-1" id="li-comment-<?=$one_review['review_id']?>">
							<div id="comment-<?=$one_review['review_id']?>">
								<div class="comment-author vcard">
									<div class="comment-meta commentmetadata">
										<span class="fn"><?=$one_review['author']?></span><span><?=getPointDateFormat(substr($one_review['date_added'], 0, 10))?> в <?=substr($one_review['date_added'], 11, 5)?></span>
									</div>
								</div>
								<p><?=$one_review['text']?></p>
							</div>
						</li>
						<?php endforeach; ?>
					</ul>
					<div class="sk_galery_pagination_holder">
						<?php echo $pagination; ?>
					</div>    
   

  				</div>

				</div>
			</div>
		</div>
	</div>
<script>
	/*(function($) {
		$('.new_recall_button').on("click", function() {
			$('.comment-respond').slideToggle('slow');
		});
	}(jQuery));*/
</script>
<?php echo $footer; ?>