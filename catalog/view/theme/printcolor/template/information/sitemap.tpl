<?php echo $header; ?>

	<div class="sk_breadcrumbs">
		<div id="sk_order" class="sk_breadcrumbs_holder">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title">
				<?php echo $breadcrumb['text']; ?>
			</a> » 
		<?php } ?>
			<span class="current"><?=$heading_title?></span>
		</div>
	</div>
	
	
	<div class="sk_main_header_holder">
		<h1><a href="#"><?=$heading_title?></a></h1>
	</div>
	<div id="sk_galery" class="sk_gallery_wraper">
	        <?php echo $column_right; ?>		
			<?php echo $column_left; ?>
		<div class="sk_archive_holder">
			<div class="site_map">
				<div class="box-1">
					<ul class="bloklinks">
						<li class="pagenav">
							<h2>Новости</h2>
							<ul>
							<?php foreach ($news as $new) { ?>
								<li class="page_item page-item-<?php echo $new['news_id']; ?>"><a href="<?php echo $new['href']; ?>"><?php echo $new['title']; ?></a></li>
							<?php } ?>
							</ul>
						</li>
					</ul>
					
					<ul class="bloklinks">
						<li class="pagenav">
							<h2>Страницы</h2>
							<ul>
							<?php foreach ($informations as $information) { ?>
								<li class="page_item page-item-<?php echo $information['information_id']; ?>"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
							<?php } ?>
							</ul>
						</li>
					</ul>

					<h2>Категории</h2>
					<ul class="bloklinks">
						<?php foreach ($categories as $category_1) { ?>
						<li class="cat-item cat-item-<?=$category_1['category_id']?>"><a href="<?php echo $category_1['href']; ?>" title="Категория <?php echo $category_1['name']; ?>"><?php echo $category_1['name']; ?></a>
							<?php if ($category_1['children']) { ?>
							<ul class="children">
							<?php foreach ($category_1['children'] as $category_2) { ?>
							<li class="cat-item cat-item-<?=$category_2['category_id']?>"><a href="<?php echo $category_2['href']; ?>" title="Категория <?php echo $category_2['name']; ?>"><?php echo $category_2['name']; ?></a>
								<?php if ($category_2['children']) { ?>
								<ul class="children">
									<?php foreach ($category_2['children'] as $category_3) { ?>
									<li class="cat-item cat-item-<?=$category_3['category_id']?>"><a href="<?php echo $category_3['href']; ?>" title="Категория <?php echo $category_3['name']; ?>"><?php echo $category_3['name']; ?></a>
									<?php } ?>
								</ul>
								<?php } ?>
									</li>
							<?php } ?>
							</ul>
							<?php } ?>
							</li>
						<?php } ?>
					</ul>
				</div>			
			</div>
		</div>
	</div>

<?php echo $footer; ?>