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
	<?php
		/*print '<pre>';
		print_r ($work_images);
		print '</pre>';*/
	?>
	<?php if ($information_id == 25): ?>
				<?php echo $column_right; ?>
				<?php echo $column_left; ?>
                 <?php echo $content_bottom; ?>
	
	<?php elseif ($information_id == 9): ?>
		<div class="sk_gallery_holder">
			<div class="sk_main_header_holder">
				<h1><a href="#">Дилерам</a></h1>
			</div>
			<div class="sk_gallery_wraper" id="sk_galery">
				<?php echo $column_right; ?>
				<?php echo $column_left; ?>
				<div class="sk_galery_container">
					<div id="sk_galery_container_holder">
						<div class="diler_container_1">
							<div class="diler_icon_1">
								<div class="icon_for_diler_1 text_hide">Скидки</div>
								<p>&nbsp;</p>
							</div>
							<div class="diler_text_1">
								<h4>Стабильная дилерская скидка и бесплатная помощь дизайнеров</h4>
								<p>Для наших партнеров мы предоставляем значительную дилерскую скидку, которая позволит Вам наиболее эффективно обеспечить либо отдельную продажу скинали, либо их поставку и установку в собранную ранее кухню.</p>
								<p>Кроме того, наши дизайнеры всегда готовы помочь Вам в выборе и организации общей концепции помещения, а также незначительно доработать, либо полностью переработать в сторону улучшения, Ваш графический материал.</p>
								<p>&nbsp;</p>
							</div>
						</div>
						<div class="diler_container_2">
							<div class="diler_icon_2">
								<div class="icon_for_diler_2 text_hide">Сертификат</div>
								<p>&nbsp;</p>
							</div>
							<div class="diler_text_2">
								<h4>Сертификат официального дилера</h4>
								<p>Мы предоставляем сертификат официального дилера компании "PrintColor", который является не только подтверждением Вашего сотрудничества с нами, но и показателем, который говорит Вашим клиентам о том, что их скинали печатаются на высокотехнологическом оборудовании, а производство обеспечивает наивысшее качество изделия.</p>
								<p>Имея на руках данный сертификат официального дилера, Вы можете принимать участие в наших дилерских программах, поддерживая свое производство на максимально высоком уровне.</p>
								<p>&nbsp;</p>
							</div>
						</div>
						<div class="diler_container_3">
							<div class="diler_icon_3">
								<div class="icon_for_diler_3 text_hide">Точка продажи</div>
									<p>&nbsp;</p>
								</div>
								<div class="diler_text_3">
								<h4>Оформление точки продаж образцами нашей продукции</h4>
								<p>Каждый потенциальный покупатель или заказчик должен знать существующие преимущества товара. При этом самым лучшим способом демонстрации товара с наиболее выгодных сторон является демонстрационный материал, который предоставляет наиболее полную информацию и позволяет в кратчайшие сроки удостоверится в технологичности приобретаемого товара.</p>
								<p>Сотрудничество с компанией "PrintColor" позволит Вам оформить свою точку продаж нашими образцами, что создаст наиболее привлекательный вид Вашему бизнесу и повысит его солидность в глазах заказчиков.</p>
								<p>&nbsp;</p>
							</div>
						</div>
						<div class="diler_container_4">
							<div class="diler_icon_4">
								<div class="icon_for_diler_4 text_hide">Обучение персонала</div>
								<p>&nbsp;</p>
							</div>
							<div class="diler_text_4">
								<h4>Обучение и консультация персонала</h4>
								<p>У Вас имеется свой штат сотрудников, который непосредственно занимается скинали (производит замеры, рисует чертежи, оформляет заказы, производит установку и т.п.)? Тогда наша дилерская программа позволит Вам повысить уровень Ваших сотрудников.</p>
								<p>Опыт, полученный нашей компанией за все годы существования, представляет собой довольно большой объем информации, которым мы с радостью поделимся с нашими бизнес-партнерами.</p>
								<p>&nbsp;</p>
							</div>
						</div> 
						<div class="diler_container_5">
							<div class="diler_icon_5">
								<div class="icon_for_diler_5 text_hide">Доставка продукции</div>
								<p>&nbsp;</p>
							</div>
							<div class="diler_text_5">
								<h4>Доставка продукции в ваш магазин или офис</h4>
								<p>Наша компания имеет возможность обеспечить дилеров доставкой заказываемого товара непосредственно в магазин, выставочный центр либо офис.</p>
								<p>При этом сама доставка является абсолютно бесплатной, а ее использование гарантирует Вам сохранность транспортируемого материала, та как каждый товар, после упаковки к транспортировке, проходит этап страхования.</p>
								<p>&nbsp;</p>
							</div>
						</div>
						<div class="diler_container_6">
							<div class="diler_icon_6">
								<div class="icon_for_diler_6 text_hide">Поддержка</div>
								<p>&nbsp;</p>
							</div>
							<div class="diler_text_6">
								<h4>Информационная поддержка вашего бизнеса</h4>
								<p>Компания "PrintColor" - это не только производитель скинали на рынке Украины. Мы также являемся большой и разветвленной сетью интернет-ресурсов, которая не ограничивается пределами украинского рынка.</p>
								<p>Диллерская связь с нашей компанией позволит Вам не только получить обозначенные ранее преимущества, но также и использовать возможность продвижения Вашего бизнеса на нашей информационной платформе.</p>
								<p>&nbsp;</p>
							</div>
						</div>
						<div class="diler_container_7">
							<div class="diler_icon_7">
								<div class="icon_for_diler_7 text_hide">Напишите нам</div>
									<p>&nbsp;</p>
								</div>
							<div class="diler_text_7">
								<h4>Ваши контактные данные</h4>
								<form name="dealer_form" action="" method="post">
									<table>
										<tbody>
											<tr>
												<td>Ваше имя:</td>
												<td><input placeholder="Введите Ваше имя" type="text" name="username" required></td>
											</tr>
											<tr>
												<td>Ваш номер телефона:</td>
												<td><input placeholder="Введите Ваш номер телефона" type="text" name="phone" required></td>
											</tr>
											<tr>
												<td>Ваш e-mail адрес:</td>
												<td><input placeholder="Введите Ваш e-mail" type="text" name="email" required></td>
											</tr>
											<tr>
												<td>Ваш комментарий:</td>
												<td><textarea placeholder="Введите Ваш комментарий" name="comment"></textarea></td>
											</tr>
											<tr>
												<td></td>
												<td><input value="Отправить >>" type="submit" name="dealer_submit"></td>
											</tr>
										</tbody>
									</table>
								</form>
								<p>&nbsp;</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php elseif ($information_id == 89): ?>
	<script type="text/javascript" src="catalog/view/javascript/js/cat_menu_fix.js"></script>
	<div class = "sk_order_holder">
		<?php echo $column_right; ?>
		<div class = "sk_order_form_holder">
			<div class = "sk_order_pict_holder">
					  <?php
						$dir = "catalog/view/theme/printcolor/image/details";
						$res = array();
						$dir_list = scandir($dir);
						$dir_count = 0;
						$detail_dir_list = array();
						foreach ($dir_list as $d) {
							if ($d!='.' AND $d!='..') {
								if (is_dir($dir."/".$d)) {
									$dir_count++;
									$detail_dir_list[$dir_count] = $d;
								}
							}
						}
					  ?>
					<div class="sk_order_lego">
						<div>
							<div class="top_btn">
								<button class="dropbtn">Выберите цвет верхних ящиков:</button>
								  <div class="dropdown-content top_color">
									<?php foreach ($detail_dir_list as $index => $detail_dir): ?>
									<?php
										if ($index < 10) $color_index = "0" . $index;
										else $color_index = $index;
										$color_name = str_replace($color_index . "_", "", $detail_dir);
										$detail_dir_path = "catalog/view/theme/printcolor/image/details/" . $detail_dir;
									?>
										<div class="color_btn" dir_path="<?=$detail_dir_path?>" pos="top" color_name="<?=$color_name?>"></div>
									<?php endforeach; ?>
								  </div>
							</div>
							<div class="top_btn">
								<button class="dropbtn">Выберите цвет столешницы:</button>
								  <div class="dropdown-content table_color">
									<?php foreach ($detail_dir_list as $index => $detail_dir): ?>
									<?php
										if ($index < 10) $color_index = "0" . $index;
										else $color_index = $index;
										$color_name = str_replace($color_index . "_", "", $detail_dir);
										$detail_dir_path = "catalog/view/theme/printcolor/image/details/" . $detail_dir;
									?>
										<div class="color_btn" dir_path="<?=$detail_dir_path?>" pos="table" color_name="<?=$color_name?>"></div>
									<?php endforeach; ?>
								  </div>
							</div>
							<div class="top_btn">
								<button class="dropbtn">Выберите цвет нижних ящиков:</button>
								  <div class="dropdown-content bottom_color">
									<?php foreach ($detail_dir_list as $index => $detail_dir): ?>
									<?php
										if ($index < 10) $color_index = "0" . $index;
										else $color_index = $index;
										$color_name = str_replace($color_index . "_", "", $detail_dir);
										$detail_dir_path = "catalog/view/theme/printcolor/image/details/" . $detail_dir;
									?>
										<div class="color_btn" dir_path="<?=$detail_dir_path?>" pos="bottom" color_name="<?=$color_name?>"></div>
									<?php endforeach; ?>
								  </div>
							</div>
							<div class="top_btn">
								<button class="dropbtn cat_title">
									<?php echo ($main_categories[0]['name']);?>
								</button>
							</div>
						</div>
						<div class="lego_container">
							<?php
								$first_post = $first_cat_first_product;
							?>
							<div class="lego_relative">
								<img src="catalog/view/theme/printcolor/image/details/05_beige-structure/beige-structure-top.png" alt="top" class="lego_top lego_part">
								<?php echo'<img class="lego_bg" id = "sk_main_order_picture" src = "' . 'image/' . $first_cat_first_product['image'] . '" title = "' . $first_cat_first_product['name'] . '" alt = "Скинали '. $first_cat_first_product['name'] .'"/>' ?> 
								<img src="catalog/view/theme/printcolor/image/details/01_light-gray/lighting.png" alt="light" class="lego_light">
								<img src="catalog/view/theme/printcolor/image/details/05_beige-structure/beige-structure-table.png" alt="table" class="lego_table lego_part">
								<img src="catalog/view/theme/printcolor/image/details/05_beige-structure/beige-structure-bottom.png" alt="bottom" class="lego_bottom lego_part">
								<div class="light_box">
									Включить подсветку
									<div class="checkboxFive">
								  		<input type="checkbox" id="light_checkbox" />
									  	<label for="light_checkbox"></label>
								  	</div>
								</div>
							</div>
							<div class="lego_list">
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
							</div>
						</div>
					</div>

					<div class="lego_bottom">
							<div class="lego_bottom-left">
								<div class="clearfix">
									<button type="button" class="fotoprint_btn">Выберите скинали с фотопечатью:</button>
									<button type="button" class="colorprint_btn">Выберите цветной скинали</button>
								</div>
								<div class="lego_bottom_slider">
									<button type="button" class="move_left"></button>
									<div class="slide_wrapper">
									<?php $i = 1; ?>
									<?php foreach ($main_categories as $main_category): ?>
									<?php //$main_cat_link = get_category_link($main_category->cat_ID); ?>
										<button type="button" class="slide_item select_category <?php if ($i == 1) echo "first_item"; if ($i == count($main_categories)) echo "last_item";?>" cat_id="<?=$main_category['category_id']?>" cat_link="<?=$main_category['href']?>"><?=$main_category['name']?></button>
									<?php $i++;?>
									<?php endforeach; ?>
									</div>
									<button type="button" class="move_right"></button>
								</div>
								<div class="lego_bottom-color clearfix">
									<?php foreach ($detail_dir_list as $index => $detail_dir): ?>
									<?php
										if ($index < 10) $color_index = "0" . $index;
										else $color_index = $index;
										$color_name = str_replace($color_index . "_", "", $detail_dir);
										$detail_dir_path = "catalog/view/theme/printcolor/image/details/" . $detail_dir;
									?>
										<div class="color_btn" dir_path="<?=$detail_dir_path?>" pos="middle" color_name="<?=$color_name?>"></div>
									<?php endforeach; ?>
								</div>
							</div>
							<div class="lego_bottom-right">
								<div class="lego_card_bottom">
									<span>№</span>
									<input type="input" class="card_search" pattern="^[ 0-9]+$">
									<button type="button" class="card_search_btn">Найти</button>
								</div>
								<button type="button">Заказать</button>
							</div>
					</div>
					<div class = "sk_order_info">
						<div class = "sk_order_info_left">
							<form class = "sk_order_form" name = "lego_order" action = "" method = "post">
								<div class = "sk_order_comment_holder">
									<table>
										<tbody>
											<tr>
												<td id="price_text">Цена:</td>
												<td id="price">880 грн. м/пог.</td>
											</tr>
											<tr>
												<td id = "sk_order_comment_holder_text">Комментарии:</td>
												<td id = "sk_order_comment_holder_textarea"><textarea name = "info" placeholder="Введите комментарий"></textarea></td>
											</tr>
										</tbody>
									</table>
								</div>
								<table>
									<tbody>
										<tr>
											<td class = "sk_order_info_text">Имя:<span class = "sk_field">*</span></td>
											<td class = "sk_order_info_input"><input type = "text" placeholder="Введите свое имя*" name = "username" required></td>
										</tr>
										<tr>
											<td class = "sk_order_info_text">Телефон:<span class = "sk_field">*</span></td>
											<td class = "sk_order_info_input"><input type = "tel" placeholder="Введите свой телефон*" name = "phone" required></td>
										</tr>
										<tr>
											<td class="sk_order_info_text">Город:<span class = "sk_field">*</span></td>
											<td class = "sk_order_info_input"><input type = "text" placeholder="Введите свой город*" name = "city" required></td>
										</tr>
										<tr>
											<td class = "sk_order_info_text">E-mail:</td>
											<td class = "sk_order_info_input"><input type = "email" placeholder="Введите свою почту*" name = "email"></td>
										</tr>
											<input type="hidden" value="<?=$first_post['sku']?>" id="img_id"  name="img_id"/>
											<input type="hidden" value="<?=$first_post['name']?>" id="img_title"  name="img_title"/>
											<input type="hidden" value="<?=$first_post['href']?>" id="sk_link"  name="sk_link"/>
									</tbody>
								</table>
								<div class = "sk_checker_holder">
									<input id = "sk_mirror_checkbox" type = "checkbox" name = "mirror" value = "mirror_yes">
									<input id = "sk_bw_checkbox" type = "checkbox" name = "bw" value = "bw_yes">
									<input id = "sk_sepia_checkbox" type = "checkbox" name = "sepia" value = "sepia_yes">
								</div>
								<div class = "sk_submit_holder">
									<input type = "submit" value = "Отправить заказ" name = "lego_order_btn">
								</div>
							</form>
						</div>
						<div class = "sk_order_info_right">
							<div class = "sk_order_change_holder">
								<div onClick = "Mirror()">
									<div class = "sk_mirror" id = "sk_mirror"></div>
									<div class = "sk_mirror_text" id = "sk_mirror_text">Отзеркалить</div>
								</div>
								<div onClick = "BlackWhite()">
									<div class = "sk_black_white" id = "sk_black_white"></div>
									<div class = "sk_black_white_text" id = "sk_black_white_text">Черно-белое</div>
								</div>
								<div onClick = "Sepia()">
									<div class = "sk_sepia" id = "sk_sepia"></div>
									<div class = "sk_sepia_text" id = "sk_sepia_text">Сепия</div>
								</div>
							</div>
							<div class = "sk_order_pict_number_text">
								<h1 class = "sk_order_pict_number">
									<span class="sk_title"><?=$first_post['name']?></span><br> <span class="sk_num">&#8470; <?=$first_post['sku'];?></span>
								</h1>
							</div>
							<div class="sk_tags_holder">
								<script type="text/javascript">(function(){if(window.pluso)if(typeof window.pluso.start=="function")return;if(window.ifpluso==undefined){window.ifpluso=1;var d=document,s=d.createElement('script'),g='getElementsByTagName';s.type='text/javascript';s.charset='UTF-8';s.async=true;s.src=('https:'==window.location.protocol?'https':'http')+'://share.pluso.ru/pluso-like.js';var h=d[g]('body')[0];h.appendChild(s);}})();</script>
								<div class="pluso" data-background="transparent" data-options="medium,round,line,horizontal,counter,theme=06" data-services="facebook,twitter,google">
									<div class="pluso-010010011010-06">
										<span class="pluso-wrap" style="background:transparent">
											<a href="<?=$first_post['href']?>" title="Facebook" class="pluso-facebook"></a>
											<a href="<?=$first_post['href']?>" title="Twitter" class="pluso-twitter"></a>
											<a href="<?=$first_post['href']?>" title="Google+" class="pluso-google"></a>
											<a href="<?=$first_post['href']?>" class="pluso-more"></a>
										</span>
										<span class="pluso-counter">
											<b title="0">0</b>
										</span>
									</div>
								</div>
								<div></div>
							</div>

						</div>
					</div>
			</div>
		</div>

	</div>
	<?php else: ?>
	<div class="sk_gallery_holder">
		<div class="sk_main_header_holder">
			<h1><a href="#"><?=$heading_title?></a></h1>
		</div>
		<div class="sk_gallery_wraper" id="sk_galery">
		<?php echo $column_right; ?>	        				
		<?php echo $column_left; ?>
		<?php if ($is_white_page == true): ?>
			<div class="sk_page_galery_container">
				<div id="sk_page_skin_container_holder">
		<?php else: ?>
			<div class="sk_galery_container">
				<div id="sk_galery_container_holder">
		<?php endif;?>
			<?php if ($information_id == 88): ?>
				<?php
					function getPointDateFormat($date) {
						$date_array = explode("-", $date);
						$day = $date_array[2];
						$month = $date_array[1];
						$year = $date_array[0];
						$point_date = $day . "." . $month . "." . $year;
						return $point_date;
					}
				?>
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
				<script>
					/*(function($) {
						$('.new_recall_button').on("click", function() {
							$('.comment-respond').slideToggle('slow');
						});
					}(jQuery));*/
				</script>
			<?php else: ?>
					<?php echo str_replace("<br>", "", htmlspecialchars_decode($description)); ?>
			<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
	<?php endif; ?>
	
<?php echo $footer; ?>