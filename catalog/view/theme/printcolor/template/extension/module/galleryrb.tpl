<div class="rb-gallery-<?php echo $module; ?> rb-gallery" style="float: right;width: 70%;margin-bottom: 3%;'">
  <?php if(isset($galleries)) { ?>
  <?php if($title) { ?><h2><?php echo $title; ?></h2><?php } ?>
  <div class="rb-gallery-list row">
    <?php for ($i = 0; $i < count($showed_images); $i++) { ?>
    <div class="rb-gallery-item  col-lg-<?php echo $colspan; ?> col-md-4 col-sm-6 col-xs-12">

      <div class="rb-gallery-inner">

        <img src="<?php echo $showed_thumb[$i]; ?>" alt="" class="rb-gallery-img <?php if (isset($borderimage)) echo 'foto'; ?>" />

        <a href="<?php echo $showed_images[$i]; ?>" data-effect="<?php echo $animation; ?>" class="rb-gallery-link style-over"></a>


        <?php if ($showed_title[$i] && !$text) {  ?>
          <div class="text-gallery" style="color: #fff;text-align: center;">
            <?php echo $showed_title[$i]; ?>
          </div>
        <?php } else if ($showed_title[$i] && $text) { ?>
          <div class="text-gallery style-over">
            <?php echo $showed_title[$i]; ?>
          </div> 
        <?php } ?>


      </div>

    </div>
    <?php } ?>
  </div>
  <?php } ?>



  <div class="sk_galery_pagination_holder">
    <?php echo $pagination; ?>
  </div>



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
