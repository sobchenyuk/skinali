<aside id="right_sidebar">
	<div class="call_back">
		<div class="manager">
			<p>Елена<br> <span>менеджер по продажам</span></p>
		</div>
		<form action="" method="post" name="call_back" onsubmit="ga('send', 'event', 'Vizualizacia', 'Submit')">
			<h5>Есть вопросы?<br> Хотите я Вам перезвоню?</h5>
			<div class="form_holder">
				<input name="phone" id="call_back" value="+38" type="text">
				<input name="call_back" value="Ok" type="submit">
			</div>
		</form>
	</div>
	<span class="rait_sp">Оцените нашу работу:</span>

	<?php
		require_once "ratings/rating.php";
		rating($total, $rating);
	?>

	<script type="text/javascript" src="catalog/view/theme/printcolor/template/common/ratings/rating.js"></script>
	<?php $home_url = '';?>
	<?php $curr_url = $_SERVER['REQUEST_URI'];?>
	<div class="right_menu_holder">
		<div class="menu-menyu-pravogo-saydbara-container">
			<ul id="menu-menyu-pravogo-saydbara" class="menu">
				<li id="menu-item-4816" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4816 <?php echo ($curr_url == '/nashe-oborudovanie' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>nashe-oborudovanie">Наше оборудование</a></li>
				<li id="menu-item-4815" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4815 <?php echo ($curr_url == '/trebovaniya-k-faylam' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>trebovaniya-k-faylam">Требования к файлам</a></li>
				<li id="menu-item-4842" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4842 <?php echo ($curr_url == '/pravila-zamera' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>pravila-zamera">Правила замера</a></li>
				<li id="menu-item-4817" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4817 <?php echo ($curr_url == '/ustanovka-skinali' ? 'current-menu-item current_page_item' : '');?>"><a href="<?=$home_url?>ustanovka-skinali">Установка скинали</a></li>
			</ul>
		</div>
	</div>
	<div class="tags_cloud">
	</div>
</aside>