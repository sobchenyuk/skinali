<?php echo $header; ?>

<?php if ($_SERVER['REQUEST_URI'] !== '/'): ?>

<div class="sk_breadcrumbs">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<div id="sk_order" class="sk_breadcrumbs_holder">
		<a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title">
			<?php echo $breadcrumb['text']; ?>
		</a>
		<?php } ?>
	</div>
</div>

<?php endif; ?>

	<div class="sk_gallery_holder">

	<?php
		/*print '<pre>';
		print_r ($showed_products);
		print '</pre>';*/
	?>

		<div class="sk_gallery_wraper" id="sk_galery">

	    <?php echo $column_right; ?>	        				
		<?php echo $column_left; ?>
	<div class="sk_galery_not_main_category">
		<div class="sk_galery_pict_wraper">
			<div class="sk_galery_pict_col_1">
			<?php foreach ($showed_products as $product) { ?>
				<div class="sk_galery_image_wraper" id="post-<?=$product['product_id']?>">
					<a href="<?=$product['href']?>">
						<img class="zoom_01" height="76px" src="<?php echo "image/".$product['thumb']; ?>" data-zoom-image="<?php echo "image/".$product['image']; ?>" alt="скинали ">
						<span class="sk_galery_image_triangle1"></span>
						<span class="sk_galery_image_number"><?=$product['sku']?></span>
					</a>
				</div>
			<?php } ?>
			</div>


			<div class="sk_galery_pagination_holder">
				<nav class="navigation pagination" role="navigation">
					<h2 class="screen-reader-text">Навигация по Галерее</h2>
					<?php echo $pagination; ?>
				</nav>
			</div>

			<div id="works_holder">
				<div class="our_works">
					<div class="box_images">
						<h2>Примеры <br> наших работ</h2>
						<a target="_blank" class="link_gallery" href="http://skinali-printcolor.com/nashi-rabotyi">Перейти в галерею</a>
						<div class="popup_box p_images">
							<a target="_blank" href="https://skinali-printcolor.com/nashi-rabotyi"></a>
						</div>
					</div>
					<div class="box_video">
						<h2>Скинали <br> видеоматериалы</h2>
						<a target="_blank" class="link_gallery" href="http://skinali-printcolor.com/video-galereya">Я хочу это увидеть</a>
						<div class="popup_box p_video">
							<a target="_blank" href="https://skinali-printcolor.com/video-galereya"></a>
						</div>
					</div>
				</div>
			</div>

		</div>
		</div><div class="sk_clear_both"></div>
		</div>
	</div>
<?php echo $footer; ?>