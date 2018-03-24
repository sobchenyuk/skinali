<div class="list_wrapper">
	<?php foreach ($first_cat_products as $first_cat_product): ?>
	<div class="lego_card" sk_title="<?=$first_cat_product['name']?>" sk_link="<?=$first_cat_product['href']?>" sub_cat_name="<?//=$sub_cat_name?>" sub_cat_link="<?//=$sub_cat_link?>">
		<div class="lego_card-num"><?=$first_cat_product['sku']?></div>
		<div class="lego_card-img">
			<img src="<?="image/".$first_cat_product['image']?>" alt="bg">
		</div>
	</div>
	<?php endforeach; ?>
</div>