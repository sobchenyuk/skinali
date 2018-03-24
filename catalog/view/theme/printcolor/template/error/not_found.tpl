<?php echo $header; ?>

	<div class="sk_gallery_holder">
		<div class="sk_main_header_holder">
			<h2><a href="#">Ошибка 404</a></h2>
		</div>
		<div id="sk_galery" class="sk_gallery_wraper">
			<?php echo $column_right; ?>			
			<?php echo $column_left; ?>
			<div class="sk_galery_not_main_category">
				<div class="sk_galery_page_wraper">
		            <div class="error404">
		                <h1>Страница не найдена!</h1>
		                <h2>Извините, но страница которую вы ищете, перемещена или удалена.</h2>
		                <h4><a href="<?php echo $continue; ?>">«&nbsp;вернуться на главную страницу</a></h4>
		            </div>
				</div>
			</div>
		</div>
	</div>

<?php echo $footer; ?>
