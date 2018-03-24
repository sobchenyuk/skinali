<?php echo $header; ?>

	<div class="sk_breadcrumbs">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<div id="sk_order" class="sk_breadcrumbs_holder">
			<a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title">
				<?php echo $breadcrumb['text']; ?>
			</a> » 
		<?php } ?>
			<span class="current">Новости</span>
		</div>
	</div>
	
	<div class="sk_gallery_holder">
		<div class="sk_main_header_holder">
			<h1><a href="#">Новости</a></h1>
		</div>
		<div class="sk_gallery_wraper" id="sk_galery">
			<?php echo $column_right; ?>				
			<?php echo $column_left; ?>
			<div class="sk_archive_holder">
				<div id="sk_galery_container_holder">
					<?php
						function getTextDate($date) {
							$date_array = explode(".", $date);
							$day = (int)$date_array[0];
							$month = (int)$date_array[1];
							$year = $date_array[2];
							$months = array("0", "янв", "фев", "мар", "апр", "май", "июн", "июл", "авг", "сен", "окт", "ноя", "дек");
							$month = $months[$month];
							$text_date = array();
							$text_date['day'] = $day; 
							$text_date['month'] = $month; 
							$text_date['year'] = $year; 
							return $text_date;
						}
					?>
					<?php foreach ($news_list as $news_item) { ?>
					<div class="sk_post_block">
						<div class="sk_post_date">
							<div class="sk_post_date_in">
								<?php $text_date = getTextDate($news_item['posted']); ?>
								<div class="date-box">
									<span class="sk_post_date_day"><?=$text_date['day']?></span>
									<span class="sk_post_date_month"><?=$text_date['month']?></span>
									<span class="sk_post_date_year"><?=$text_date['year']?></span>
								</div>
								<span class="sk_post_date_triangle1">◢</span>
								<span class="sk_post_date_triangle2">◢</span>
								<div id="image-box">
									<?php if($news_item['thumb']): ?>
	 								<img data-pagespeed-url-hash="1857719650" src="<?=$news_item['thumb']?>" onerror="this.onerror=null;pagespeed.lazyLoadImages.loadIfVisibleAndMaybeBeacon(this);">
									<?php else: ?>
									<img src="image/catalog/post-default.jpg">
									<?php endif; ?>
								</div>
							</div>
						</div>
						<div class="sk_post_content">
							<div class="sk_post_container">
								<h3 class="sk_post_name"><a href="<?=$news_item['href']?>"><?php echo $news_item['title']; ?></a></h3>
								<div class="sk_post_text">
									<p><?php echo mb_substr(strip_tags($news_item['description']), 0, 400) .' [...]'; ?></p>
									<div class="sk_post_reed_more">
										<a href="<?=$news_item['href']?>">Читать далее »</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	
	

<?php echo $footer; ?>