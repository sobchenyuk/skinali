<?php foreach ($items as $smenu) { ?>

<li class="menu-item menu-item-type-post_type menu-item-object-page <?php echo (preg_replace('/\//i', '', $_SERVER['REQUEST_URI']) == preg_replace('/\//i', '', $smenu['href']) ? 'current-menu-item current_page_item' : '');?>" >
		<a href="<?php echo $smenu['href']; ?>" title="<?php echo $smenu['title']; ?>"><?php echo $smenu['name']; ?></a>
</li>

<?php } ?>