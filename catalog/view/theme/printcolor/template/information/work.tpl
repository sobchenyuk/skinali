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

<div class="sk_gallery_holder">
    <div class="sk_main_header_holder">
        <h1><a href="#"><?=$heading_title?></a></h1>
    </div>
    <div class="sk_gallery_wraper" id="sk_galery">
        <?php echo $column_right; ?>
        <?php echo $column_left; ?>
        <div class="sk_galery_container">
            <div id="sk_galery_container_holder">
                <?php echo $description; ?>
            </div>

            <div class="sk_more_post_buttons">
                <?php if ($prev_new !== null): ?>
                <a href="<?=$prev_new['href']?>" rel="prev">«  <?=$prev_new['title']?></a>
                <?php endif;?>
                <?php if ($next_new !== null): ?>
                <a href="<?=$next_new['href']?>" rel="next"><?=$next_new['title']?> »</a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript"><!--
    $(document).ready(function () {
        $('.thumbnail').magnificPopup({
            type: 'image',
            delegate: 'a',
        });
    });
    //--></script>

<?php echo $footer; ?>