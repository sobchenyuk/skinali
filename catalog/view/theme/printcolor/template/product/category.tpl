<?php echo $header; ?>

	<div class="sk_breadcrumbs" xmlns:v="http://rdf.data-vocabulary.org/#">
		<div id="sk_order" class="sk_breadcrumbs_holder">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<span typeof="v:Breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title">
				<?php echo $breadcrumb['text']; ?>
			</a></span> »
		<?php } ?>
			<span class="current"><?=$heading_title?></span>
		</div>
	</div>
	
	<div class = "sk_gallery_holder">
		<div class="sk_main_header_holder">
			<h1><a href="#">Скинали: <?=$heading_title?></a></h1>
		</div>
	<div class = "sk_gallery_wraper" id = "sk_galery">
	<?php echo $column_right; ?>	        				
	<?php echo $column_left; ?>
	
	
	<div class="sk_galery_not_main_category">
	
		<?php if ($categories): ?>
		<div class="sk_galery_not_main_category_wraper">
			<ul class="sk_galery_not_main_category_holder">
				<?php foreach ($categories as $sub_cat): ?>
				<li><a href="<?=$sub_cat['href']?>"><?=$sub_cat['name']?></a></li>
				<?php endforeach; ?>
			</ul>
		</div>
		<?php endif; ?>
		<?php if ($category_type == 'subcategory'): ?>
		<?php if ($par_subcats): ?>
			<div class="sk_galery_not_main_category_wraper">
			<ul class="sk_galery_not_main_category_holder">
				<?php foreach ($par_subcats as $sub_cat): ?>
				<li <?php if ($sub_cat['category_id'] == $category_info['category_id']) echo 'id="pw_sub_select" class="active"';?> ><a href="<?=$sub_cat['href']?>"><?=$sub_cat['name']?></a></li>
				<?php endforeach; ?>
			</ul>
		</div>
		<?php endif; ?>
		<?php endif; ?>
			<div class="sk_galery_pict_wraper">
				<div class="sk_galery_pict_col_1">
				<script type="text/javascript" charset="UTF-8" async="" src="https://w.uptolike.com/widgets/v1/uptolike.js"></script>
				<?php foreach ($products as $product) { ?>
					<div class="sk_galery_image_wraper" id="post-<?=$product['product_id']?>">
						<a href="<?php echo $product['href']; ?>">
							<img class="zoom_01" src="<?php echo "image/".$product['thumb']; ?>" data-zoom-image="<?php echo "image/".$product['image']; ?>" alt="скинали <?=$product['name']?>" height="76px">
							<span class="sk_galery_image_triangle1"></span>
							<span class="sk_galery_image_number"><?php echo $product['sku']; ?></span>
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
			</div>
			 <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
	</div>
			
			
			
    
      
     
     
	  
</div>
<?php echo $footer; ?>
