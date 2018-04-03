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

                    <div class="sk_order_pict_holder">
                        <img id="sk_main_order_picture" src="<?=" image/".$images?>" title="<?=$product_info['name']?>"
                        alt="Скинали <?=$product_info['name']?>">
                        <div class="sk_order_shadow"></div>
                    </div>


                    <p class="text">

                        <?php echo $product_info["description"]; ?>

                    </p>


                    <div class="rowIntoProduct">
                        <div class="col-left">
                            <div class="formGroupSkinali">
                                <form class="sk_order_form" name="order" action="" method="post"
                                      onsubmit="ga('send', 'event', 'zakaz', 'submit')">

                                    <input type="hidden" value="<?=$product_info['sku']?>" id="img_id" name="img_id"/>
                                    <input type="hidden" value="<?=$product_info['name']?>" id="img_title"
                                           name="img_title"/>
                                    <input type="hidden" value="<?=$product_url?>" id="sk_link" name="sk_link"/>

                                    <div class="col">

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
                                            <div class="sk_checker_holder">
                                                <input id="sk_mirror_checkbox" type="checkbox" name="mirror" value="mirror_yes">
                                                <input id="sk_bw_checkbox" type="checkbox" name="bw" value="bw_yes">
                                                <input id="sk_sepia_checkbox" type="checkbox" name="sepia" value="sepia_yes">
                                            </div>
                                    </div>
                                    <div class="rowButtons">
                                        <button type="submit" name="order_button" class="btn">Отправить заказ</button>
                                    </div>

                                </form>
                            </div>
                        </div>
                        <div class="col-right">

                            <?php if(count($dataPrinting) > 0 || count($dataMaterials) > 0){ ?>

                            <div class="selectGroup">
                                <div class="titleGrouop">
                                    Выберите вид печати
                                </div>
                                <div class="group">
                                    <div class="selectorCustom">
                                        <select name="type-of-printing" id="type-of-printing" class="selector">
                                            <?php for ( $i = 0; $i < count($dataPrinting); $i++ ) { ?>
                                                    <option value="" data-price='<?php echo $dataPrinting[$i]["price"]; ?>'><?php echo $dataPrinting[$i]["name"]; ?> - <?php echo $dataPrinting[$i]["price"]; ?> грн. м2</option>
                                                <?php
                                            } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="selectGroup">
                                <div class="titleGrouop">
                                    Выберите материал для печати
                                </div>
                                <div class="group">
                                    <div class="selectorCustom">
                                        <select name="print-materials" id="print-materials" class="selector">
                                            <?php for ( $i = 0; $i < count($dataMaterials); $i++ ) { ?>
                                            <option value="" data-price='<?php echo $dataMaterials[$i]["price"]; ?>'><?php echo $dataMaterials[$i]["name"]; ?> - <?php echo $dataMaterials[$i]["price"]; ?> грн. м2</option>
                                            <?php
                                            } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <?php }; ?>



                            <div class="rowEffects">
                                <hr>

                                <div class="keyEffect mirror" onclick="Mirror()">
									<span id="sk_mirror" class="wrapIcon sk_mirror"></span>
                                    <span id="sk_mirror_text" class="textor sk_mirror_text">
										Отзеркалить
									</span>
                                </div>

                                <div class="keyEffect whiteBlack" onclick="BlackWhite()">
									<span id="sk_black_white" class="wrapIcon sk_black_white"></span>
                                    <span id="sk_black_white_text" class="textor sk_black_white_text">
										Черно-белое
									</span>
                                </div>

                                <div class="keyEffect" onclick="Sepia()">
									<span id="sk_sepia" class="wrapIcon sk_sepia"></span>
                                    <span id="sk_sepia_text" class="textor sk_sepia_text">
										Сепия
									</span>
                                </div>

                                <hr>

                            </div>

                            <div class="rowSocialProducts">
                                <?php if(count($dataPrinting) == 0 || count($dataMaterials) == 0){ ?>
                                <div class="resultsPrice">
                                    Цена: <?=round($product_info['price'], 0);?> грн. м2
                                </div>
                                <?php } else { ?>
                                <div class="resultsPrice">
                                    Цена: <span id="resultPrice"><?php echo ((int)$dataPrinting[0]["price"] + (int)$dataMaterials[0]["price"]); ?></span> грн. м2
                                </div>
                                <?php }; ?>

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
                            <!--<div class="rowBtnSector">
                                <button class="btn">
                                    Рассчитать заказ
                                </button>
                            </div>-->
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>

<?php echo $footer; ?>

<script>

    window.addEventListener('load', function (ev) {
        //selector in product
        function materialSelectorZ(){


            if (!document.querySelectorAll('.selectorCustom').length) {
                return;
            }


            var selectors = document.querySelectorAll('.selectorCustom');

            for (var k = selectors.length - 1; k >= 0; k--) {
                selector = selectors[k];
                // console.log(selector)
                function createActiveOption(){
                    var option = selector.querySelectorAll('option');
                    var active = document.createElement('div');
                    active.className = 'active';
                    for (var i = option.length - 1; i >= 0; i--) {
                        if(option[i].selected){
                            active.setAttribute('data-price', option[i].getAttribute('data-price'));
                            active.innerHTML = option[i].innerHTML;
                            selector.style.backgroundImage ='url('+selector.querySelectorAll('option')[i].getAttribute('data-bg')+')';
                        }
                    }
                    selector.appendChild(active);
                }
                createActiveOption();
                function createListOptions(){
                    var option = selector.querySelectorAll('option');
                    var listOption = document.createElement('div');
                    listOption.className = 'listOption';
                    for (var i = option.length - 1; i >= 0; i--) {
                        var optionElem = document.createElement('div');
                        optionElem.className = 'li';
                        optionElem.setAttribute('data-index',i);
                        optionElem.innerHTML = option[i].innerHTML;
                        optionElem.setAttribute('data-bg',selector.querySelectorAll('option')[i].getAttribute('data-bg'))
                        optionElem.style.backgroundImage ='url('+selector.querySelectorAll('option')[i].getAttribute('data-bg')+')';
                        listOption.appendChild(optionElem);
                    }
                    selector.appendChild(listOption)
                }
                createListOptions();


                function createActiveOptionAll(){
                    for (var z = selectors.length - 1; z >= 0; z--) {
                        var selector = selectors[z];
                        selector.removeChild(selector.querySelector('.active'));
                        var option = selector.querySelectorAll('option');
                        var active = document.createElement('div');
                        active.className = 'active';
                        for (var i = option.length - 1; i >= 0; i--) {
                            if(option[i].selected){
                                active.setAttribute('data-price', option[i].getAttribute('data-price'));
                                active.innerHTML = option[i].innerHTML;
                                selector.style.backgroundImage ='url('+selector.querySelectorAll('option')[i].getAttribute('data-bg')+')';
                            }
                        }
                        selector.appendChild(active);
                    }
                }
                function workSelector(){
                    selector.onclick = function(){
                        if (!this.hasAttribute('data-open')) {
                            this.setAttribute('data-open','true');
                        }
                        else{
                            this.removeAttribute('data-open');
                        }
                    }
                    var option = selector.querySelectorAll('.li');
                    for (var i = option.length - 1; i >= 0; i--) {
                        option[i].onclick = function(){
                            var index = this.getAttribute('data-index');
                            this.parentNode.parentNode.querySelectorAll('option')[index].selected = true;
                            // this.parentNode.parentNode.removeChild(this.parentNode.parentNode.querySelector('.active'));
                            createActiveOptionAll();

                        }
                    }
                }


                workSelector();
            }
        }
        materialSelectorZ();


        function calculate() {

            var select = document.querySelectorAll('.selectGroup select');

            var listOption = document.querySelectorAll('.selectGroup .listOption');


            var result = document.querySelector('#resultPrice');

            for ( var i = 0; i < listOption.length; i++ ) {
                listOption[i].setAttribute('data-select', i)
            }



            function changelistOption(e){

                var active = document.querySelectorAll('.selectGroup .active');
                var resultPrice = [];

                var target = e.target;
                var index = target.getAttribute('data-index');
                var selectIndex = target.parentNode.getAttribute('data-select');
                select[selectIndex].querySelectorAll('option')[index].selected = true;

                active.forEach(function (value, i) {
                    resultPrice[i] = parseInt(value.getAttribute('data-price'));
                });

                result.innerHTML = resultPrice.reduce(function (sum, current) {
                    return sum + current;
                }, 0);

            }



            listOption.forEach(function (value, i) {

                value.addEventListener('click', changelistOption);


            });

        }
        calculate();
    });

</script>
