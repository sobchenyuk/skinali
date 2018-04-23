<?php foreach ($items as $smenu) { ?>

<li class="menu-item menu-item-type-post_type " >
		<a href="<?php echo $smenu['href']; ?>" title="<?php echo $smenu['title']; ?>"><?php echo $smenu['name']; ?></a>

	<?php if ($smenu['children']) { ?>
	<ul>

		<?php foreach ($smenu['children'] as $child) { ?>


		<li><a href="<?php echo $child['href']; ?>" title="<?php echo $child['title']; ?>"><?php echo $child['name']; ?></a></li>

		<?php } ?>
	</ul>

	<?php } ?>


</li>

<?php  } ?>