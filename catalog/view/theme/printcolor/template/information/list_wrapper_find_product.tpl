<div class="list_wrapper">
	<?php if ($no_product == false): ?>
		<?php if (!empty($find_product)): ?>
		<div class="lego_card" sk_title="<?=$find_product['name']?>" category_name="<?=$find_product['category_name']?>" sk_link="<?=$find_product['href']?>" sub_cat_name="<?//=$sub_cat_name?>" sub_cat_link="<?//=$sub_cat_link?>">
			<div class="lego_card-num"><?=$find_product['sku']?></div>
			<div class="lego_card-img">
				<img src="<?="image/".$find_product['image']?>" alt="bg">
			</div>
		</div>
		<?php endif; ?>
	<?php else: ?>
	<div class="not_found">По Вашему запросу ничего не найдено. Попробуйте переформулировать запрос и повторить поиск.</div>
	<?php endif; ?>
</div>