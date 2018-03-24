
<div class="sk_galery_main_category">
		<ul class="sk_galery_main_category_holder">
			<li class="sk_galery_main_category_header">
				<span class="spanCatalog">Каталог</span>
				<span class="sk_galery_main_category_header_triangle1">◢</span>
				<span class="sk_galery_main_category_header_triangle2">◢</span>
			</li>
			<li class="search_item">
				<div class="sk_galery_search_holder">
					<form role="search" method="get" id="searchform" action="search/">
						<input placeholder="Поиск..." value="" name="search" id="s" type="text">
						<input value="" id="searchsubmit" type="submit">
					</form>
					<?php //echo $search; ?>
				</div>
			<!--	http://localhost/skinali/search/?search=%D0%94%D0%B5%D0%B2%D1%83%D1%88%D0%BA%D0%B0	-->
			</li>
			<?php 
				if ($current_category != '') $cur_cat = explode('_', $current_category);
			?>
			<div class="sk_cat_holder">
				<div class="menu-menyu-levogo-saydbara-container">
					<ul id="menu-menyu-levogo-saydbara" class="menu">
						<?php foreach ($categories as $category) { ?>
						<li class="menu-item menu-item-type-taxonomy menu-item-object-category <?php echo (isset($cur_cat) && $cur_cat[0] == $category['category_id'] ? 'current-menu-item' : '');?>"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
						<?php } ?>
					</ul>
				</div>
			</div>
			<li class="sk_galery_main_category_color">
				<h2>По цвету</h2>
				<span class="sk_galery_main_category_header_triangle1">◢</span>
				<span class="sk_galery_main_category_header_triangle2">◢</span>
			</li>
			<?php
				$colors_en = array("red", "orange", "yellow", "green", "sky", "blue", "violet", "black", "white");
				$colors_ru = array("красный", "оранжевый", "желтый", "зеленый", "голубой", "синий", "фиолетовый", "черный", "белый");
			?>
			<div class="sk_color_holder">
				<div class="sk_scroll_wraper">
					<div class="sk_scroll_background"></div>
					<div class="sk_scroll_buttons">
					<?php for ($i = 0; $i < count($colors_en); $i++): ?>
						<a class="scroll_<?=$colors_en[$i]?>" href="search/?search=<?=$colors_ru[$i]?>" rel="nofollow" id="color_<?=$i + 1?>"></a>
						<!--<a class="scroll_orange" href="search/?search=оранжевый" rel="nofollow" id="color_2"></a>
						<a class="scroll_yellow" href="https://skinali-printcolor.com?s=желтый" rel="nofollow" id="color_3"></a>
						<a class="scroll_green" href="https://skinali-printcolor.com?s=зеленый" rel="nofollow" id="color_4"></a>
						<a class="scroll_sky" href="https://skinali-printcolor.com?s=голубой" rel="nofollow" id="color_5"></a>
						<a class="scroll_blue" href="https://skinali-printcolor.com?s=синий" rel="nofollow" id="color_6"></a>
						<a class="scroll_violet" href="https://skinali-printcolor.com?s=фиолетовый" rel="nofollow" id="color_7"></a>
						<a class="scroll_black" href="https://skinali-printcolor.com?s=черный" rel="nofollow" id="color_8"></a>
						<a class="scroll_white" href="https://skinali-printcolor.com?s=белый" rel="nofollow" id="color_9"></a>-->
					<?php endfor; ?>
					</div>
				</div>
			</div>
		</ul>
	<div id="menu_button" class="arrow_right"></div>
</div>