<?php foreach ($items as $smenu) { ?>

<li class="menu-item menu-item-type-taxonomy menu-item-object-category <?php echo (preg_match("/". preg_replace('/\//i', '', $_SERVER['REQUEST_URI']) ."/i",  $smenu['href'])) ? 'current-menu-item' : ''; ?>" >
    <a href="<?php echo $smenu['href']; ?>" title="<?php echo $smenu['title']; ?>"><?php echo $smenu['name']; ?></a>
</li>

<?php } ?>