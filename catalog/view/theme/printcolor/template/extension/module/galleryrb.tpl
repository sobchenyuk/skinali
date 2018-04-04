<div class="rb-gallery-<?php echo $module; ?> rb-gallery" style="float: right;width: 70%;margin-bottom: 3%;'">
  <?php if(isset($galleries)) { ?>
  <?php if($title) { ?><h2><?php echo $title; ?></h2><?php } ?>
  <div class="rb-gallery-list row">
    <?php foreach ($galleries as $gallery) { ?>
    <div class="rb-gallery-item  col-lg-<?php echo $colspan; ?> col-md-4 col-sm-6 col-xs-12">
      <div class="rb-gallery-inner">
        <img src="<?php echo $gallery['thumb']; ?>" alt="" class="rb-gallery-img <?php if (isset($borderimage)) echo 'foto'; ?>" />
        <a href="<?php echo $gallery['image']; ?>" data-effect="<?php echo $animation; ?>" class="rb-gallery-link style-over"></a>
        <?php if ($gallery['title'] && !$text) {  ?>
          <div class="text-gallery" style="color: #fff;text-align: center;">
            <?php echo $gallery['title']; ?>
          </div>
        <?php } else if ($gallery['title'] && $text) { ?>
          <div class="text-gallery style-over">
            <?php echo $gallery['title']; ?>
          </div> 
        <?php } ?>       
      </div>
    </div>
    <?php } ?>
  </div>
  <?php } ?>


  <?php
  /* Входные параметры */

echo $_SERVER['QUERY_STRING'];

  $count_pages = 50;
  $active = 15;
  $count_show_pages = 10;

  $url = $_SERVER['QUERY_STRING'];
  $url_page = $_SERVER['QUERY_STRING'] . "?page=";

  if ($count_pages > 1) { // Всё это только если количество страниц больше 1
  /* Дальше идёт вычисление первой выводимой страницы и последней (чтобы текущая страница была где-то посредине, если это возможно, и чтобы общая сумма выводимых страниц была равна count_show_pages, либо меньше, если количество страниц недостаточно) */
  $left = $active - 1;
  $right = $count_pages - $active;
  if ($left < floor($count_show_pages / 2)) $start = 1;
  else $start = $active - floor($count_show_pages / 2);
  $end = $start + $count_show_pages - 1;
  if ($end > $count_pages) {
  $start -= ($end - $count_pages);
  $end = $count_pages;
  if ($start < 1) $start = 1;
  }
  ?>
  <!-- Дальше идёт вывод Pagination -->
  <div id="pagination">
    <span>Страницы: </span>
    <?php if ($active != 1) { ?>
    <a href="<?=$url?>" title="Первая страница">&lt;&lt;&lt;</a>
    <a href="<?php if ($active == 2) { ?><?=$url?><?php } else { ?><?=$url_page.($active - 1)?><?php } ?>" title="Предыдущая страница">&lt;</a>
    <?php } ?>
    <?php for ($i = $start; $i <= $end; $i++) { ?>
    <?php if ($i == $active) { ?><span><?=$i?></span><?php } else { ?><a href="<?php if ($i == 1) { ?><?=$url?><?php } else { ?><?=$url_page.$i?><?php } ?>"><?=$i?></a><?php } ?>
    <?php } ?>
    <?php if ($active != $count_pages) { ?>
    <a href="<?=$url_page.($active + 1)?>" title="Следующая страница">&gt;</a>
    <a href="<?=$url_page.$count_pages?>" title="Последняя страница">&gt;&gt;&gt;</a>
    <?php } ?>
  </div>
  <?php } ?>



</div>
<style>
.rb-gallery-<?php echo $module; ?> .text-gallery.style-over{
  background: <?php echo $textbg; ?>;
  opacity: <?php echo $texthover; ?>;
}
</style>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.rb-gallery-<?php echo $module; ?>').magnificPopup({
		type:'image',
		delegate: '.rb-gallery-link',
		gallery: {
			enabled:true
		},
    image: {
      titleSrc: function(item) {
        return item.el.parent().find('.text-gallery').text();
      }
    },
    callbacks: {
      beforeOpen: function() {
        this.st.image.markup = this.st.image.markup.replace('mfp-figure', 'mfp-figure mfp-with-anim');
        this.st.mainClass = this.st.el.attr('data-effect');
      }
    }
	});
});
--></script>
