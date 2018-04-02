<?php echo $header; ?>

<div class="sk_breadcrumbs" xmlns:v="http://rdf.data-vocabulary.org/#" style="margin-bottom: 0;">
    <div id="sk_order" class="sk_breadcrumbs_holder">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <span typeof="v:Breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>" rel="v:url" property="v:title">
				<?php echo $breadcrumb['text']; ?>
			</a></span> »
        <?php } ?>
        <span class="current"><?=$heading_title?></span>
    </div>
</div>

<div class="content">


    <div class="rowTitlePage">
        <h1 class="title"><?=$product_info['name']?> № <?=$product_info['sku']?></h1>
        <hr>
    </div>


    <div class="sk_order_holder">
        <?php echo $column_right; ?>
        <?php echo $column_left; ?>
        <div class="sk_order_form_holder">
            <div class="middle-sector calculatorSector">
                <div class="rowInfoNode">

                    <img id="nodeImg" src="<?=" image/".$images?>" title="<?=$product_info['name']?>"
                    alt="Скинали <?=$product_info['name']?>">

                    <p class="text">
                        Цвета печати могут отличаться от цветов на мониторе. Для подбора определенного оттенка заказывается цветопроба. Претензии по поводу не попадения в тот или иной оттенок не принимаются при отсутствии цветопробы.
                    </p>



                    <div class="rowIntoProduct">
                        <div class="col-left">
                            <div class="formGroupSkinali">
                                <div class="col">
                                    <form class="sk_order_form" name="order" action="" method="post"
                                          onsubmit="ga('send', 'event', 'zakaz', 'submit')">
                                    <div class="fieldGroup">
                                        <label for="sk_order_comment_holder_textarea">Коментарий</label>
                                        <textarea name="info" id="sk_order_comment_holder_textarea" class="placeWrite bigPlaceWrite"></textarea>
                                    </div>
                                    <div class="fieldGroup">
                                        <label for="sk_order_info_input_username">Имя: <b>*</b></label>
                                        <input id="sk_order_info_input_username" type="text" class="placeWrite" name="username" required="" />
                                    </div>
                                    <div class="fieldGroup">
                                        <label for="sk_order_info_input_city">Город: <b>*</b></label>
                                        <input id="sk_order_info_input_city" type="text" class="placeWrite" name="city" required="" />
                                    </div>
                                    <div class="fieldGroup">
                                        <label for="sk_order_info_input_phone">Телефон: <b>*</b></label>
                                        <input id="sk_order_info_input_phone" type="text" class="placeWrite phone" name="phone" required="" />
                                    </div>
                                    <div class="fieldGroup">
                                        <label for="sk_order_info_input_email">E-mail: <b>*</b></label>
                                        <input id="sk_order_info_input_email" type="text" class="placeWrite" name="email" required="" />
                                    </div>
                                    </form>
                                </div>
                                <div class="rowButtons">
                                    <input type="submit" value="Отправить заказ" name="order_button" class="btn">
                                </div>
                            </div>
                        </div>
                        <div class="col-right">
                            <div class="selectGroup">
                                <div class="titleGrouop">
                                    Выберите вид печати
                                </div>
                                <div class="group">
                                    <div class="selectorCustom" style="background-image: url(&quot;null&quot;);">
                                        <select name="" id="" class="selector">
                                            <option value="">Ультрафиолетовая печать - 888 грн. м2</option>
                                            <option value="">Ультрафиолетовая печать - 888 грн. м2</option>
                                            <option value="">Ультрафиолетовая печать - 888 грн. м2</option>
                                        </select>
                                        <div class="active">Ультрафиолетовая печать - 888 грн. м2</div><div class="listOption"><div class="li" data-index="2" data-bg="null" style="background-image: url(&quot;null&quot;);">Ультрафиолетовая печать - 888 грн. м2</div><div class="li" data-index="1" data-bg="null" style="background-image: url(&quot;null&quot;);">Ультрафиолетовая печать - 888 грн. м2</div><div class="li" data-index="0" data-bg="null" style="background-image: url(&quot;null&quot;);">Ультрафиолетовая печать - 888 грн. м2</div></div></div>
                                </div>
                            </div>
                            <div class="selectGroup">
                                <div class="titleGrouop">
                                    Выберите материал для печати
                                </div>
                                <div class="group">
                                    <div class="selectorCustom" style="background-image: url(&quot;null&quot;);">
                                        <select name="" id="" class="selector">
                                            <option value="">Стекло б/ц 5 мм каленое - 1650 грн. м2</option>
                                            <option value="">Стекло б/ц 5 мм каленое - 1650 грн. м2</option>
                                            <option value="">Стекло б/ц 5 мм каленое - 1650 грн. м2</option>
                                        </select>
                                        <div class="active">Стекло б/ц 5 мм каленое - 1650 грн. м2</div><div class="listOption"><div class="li" data-index="2" data-bg="null" style="background-image: url(&quot;null&quot;);">Стекло б/ц 5 мм каленое - 1650 грн. м2</div><div class="li" data-index="1" data-bg="null" style="background-image: url(&quot;null&quot;);">Стекло б/ц 5 мм каленое - 1650 грн. м2</div><div class="li" data-index="0" data-bg="null" style="background-image: url(&quot;null&quot;);">Стекло б/ц 5 мм каленое - 1650 грн. м2</div></div></div>
                                </div>
                            </div>
                            <div class="rowEffects">
                                <hr>
                                <div class="keyEffect mirror">
									<span class="wrapIcon sk_mirror">

									</span>
                                    <span class="textor">
										Отзеркалить
									</span>
                                </div>
                                <div class="keyEffect whiteBlack">
									<span class="wrapIcon sk_black_white">

									</span>
                                    <span class="textor">
										Черно-белое
									</span>
                                </div>
                                <div class="keyEffect">
									<span class="wrapIcon sk_sepia">

									</span>
                                    <span class="textor">
										Сепия
									</span>
                                </div>
                                <hr>
                            </div>
                            <div class="rowSocialProducts">
                                <div class="resultsPrice">
                                    Цена: <?=round($product_info['price'], 0);?> грн. м/пог.
                                </div>
                                <div class="socialsZ">
                                    <div class="sk_tags_holder">
                                        <script type="text/javascript">(function (){if(window.pluso)if(typeof window.pluso.start=="function")return;if(window.ifpluso==undefined){window.ifpluso=1;var d=document,s=d.createElement('script'),g='getElementsByTagName';s.type='text/javascript';s.charset='UTF-8';s.async=true;s.src=('https:'==window.location.protocol?'https':'http')+'://share.pluso.ru/pluso-like.js';var h=d[g]('body')[0];h.appendChild(s);}})();</script>
                                        <div class="pluso" data-background="transparent"
                                             data-options="medium,round,line,horizontal,counter,theme=06"
                                             data-services="facebook,twitter,google">
                                            <div class="pluso-010010011010-06">
												<span class="pluso-wrap" style="background:transparent">
													<a href="https://skinali-printcolor.com/arhitektura/mostyi/staraya-praga"
                                                       title="Facebook" class="pluso-facebook"></a>
													<a href="https://skinali-printcolor.com/arhitektura/mostyi/staraya-praga"
                                                       title="Twitter" class="pluso-twitter"></a>
													<a href="https://skinali-printcolor.com/arhitektura/mostyi/staraya-praga"
                                                       title="Google+" class="pluso-google"></a>
													<a href="https://pluso.ru/" class="pluso-more"></a>
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
                            <div class="rowBtnSector">
                                <button class="btn">
                                    Рассчитать заказ
                                </button>
                            </div>
                        </div>
                    </div>




                    <div class="sk_order_info">
                        <div class="sk_order_info_left">
                            <form class="sk_order_form" name="order" action="" method="post"
                                  onsubmit="ga('send', 'event', 'zakaz', 'submit')">
                                <div class="sk_order_comment_holder">
                                    <table>
                                        <tbody>
                                        <tr>
                                            <td id="price_text">Цена:</td>
                                            <td id="price"><?=round($product_info['price'], 0);?> грн. м/пог.</td>
                                        </tr>
                                        <tr>
                                            <td id="sk_order_comment_holder_text">Комментарии:</td>
                                            <td id="sk_order_comment_holder_textarea"><textarea name="info"
                                                                                                placeholder="Введите комментарий"></textarea>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="sk_order_info_text">Имя:<span class="sk_field">*</span></td>
                                        <td class="sk_order_info_input"><input type="text"
                                                                               placeholder="Введите свое имя*"
                                                                               name="username" required=""></td>
                                    </tr>
                                    <tr>
                                        <td class="sk_order_info_text">Телефон:<span class="sk_field">*</span></td>
                                        <td class="sk_order_info_input"><input type="tel"
                                                                               placeholder="Введите свой телефон*"
                                                                               name="phone" required=""></td>
                                    </tr>
                                    <tr>
                                        <td class="sk_order_info_text">Город:<span class="sk_field">*</span></td>
                                        <td class="sk_order_info_input"><input type="text"
                                                                               placeholder="Введите свой город*"
                                                                               name="city" required=""></td>
                                    </tr>
                                    <tr>
                                        <td class="sk_order_info_text">E-mail:</td>
                                        <td class="sk_order_info_input"><input type="email"
                                                                               placeholder="Введите свою почту*"
                                                                               name="email"></td>
                                    </tr>
                                    <input type="hidden" value="<?=$product_info['sku']?>" id="img_id" name="img_id"/>
                                    <input type="hidden" value="<?=$product_info['name']?>" id="img_title"
                                           name="img_title"/>
                                    <input type="hidden" value="<?=$product_url?>" id="sk_link" name="sk_link"/>
                                    </tbody>
                                </table>
                                <div class="sk_checker_holder">
                                    <input id="sk_mirror_checkbox" type="checkbox" name="mirror" value="mirror_yes">
                                    <input id="sk_bw_checkbox" type="checkbox" name="bw" value="bw_yes">
                                    <input id="sk_sepia_checkbox" type="checkbox" name="sepia" value="sepia_yes">
                                </div>
                                <div class="sk_submit_holder">
                                    <input type="submit" value="Отправить заказ" name="order_button">
                                </div>
                            </form>
                        </div>
                        <div class="sk_order_info_right">
                            <div class="sk_order_change_holder">
                                <div onclick="Mirror()">
                                    <div class="sk_mirror" id="sk_mirror"></div>
                                    <div class="sk_mirror_text" id="sk_mirror_text">Отзеркалить</div>
                                </div>
                                <div onclick="BlackWhite()">
                                    <div class="sk_black_white" id="sk_black_white"></div>
                                    <div class="sk_black_white_text" id="sk_black_white_text">Черно-белое</div>
                                </div>
                                <div onclick="Sepia()">
                                    <div class="sk_sepia" id="sk_sepia"></div>
                                    <div class="sk_sepia_text" id="sk_sepia_text">Сепия</div>
                                </div>
                            </div>


                            <div class="sk_order_pict_number_text"><h1
                                        class="sk_order_pict_number"><?=$product_info['name']?>
                                    № <?=$product_info['sku']?></h1></div>


                            <div class="sk_tags_holder">
                                <script type="text/javascript">(function (){if(window.pluso)if(typeof window.pluso.start=="function")return;if(window.ifpluso==undefined){window.ifpluso=1;var d=document,s=d.createElement('script'),g='getElementsByTagName';s.type='text/javascript';s.charset='UTF-8';s.async=true;s.src=('https:'==window.location.protocol?'https':'http')+'://share.pluso.ru/pluso-like.js';var h=d[g]('body')[0];h.appendChild(s);}})();</script>
                                <div class="pluso" data-background="transparent"
                                     data-options="medium,round,line,horizontal,counter,theme=06"
                                     data-services="facebook,twitter,google">
                                    <div class="pluso-010010011010-06">
												<span class="pluso-wrap" style="background:transparent">
													<a href="https://skinali-printcolor.com/arhitektura/mostyi/staraya-praga"
                                                       title="Facebook" class="pluso-facebook"></a>
													<a href="https://skinali-printcolor.com/arhitektura/mostyi/staraya-praga"
                                                       title="Twitter" class="pluso-twitter"></a>
													<a href="https://skinali-printcolor.com/arhitektura/mostyi/staraya-praga"
                                                       title="Google+" class="pluso-google"></a>
													<a href="https://pluso.ru/" class="pluso-more"></a>
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
    </div>

</div>


<?php echo $footer; ?>
