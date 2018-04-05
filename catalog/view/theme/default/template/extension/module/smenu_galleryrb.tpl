<?php foreach ($items as $smenu) { ?>

<?php

 $str = (string)$_SERVER['REQUEST_URI'];

 echo (preg_match("/' . $str . ' /i",  $smenu['href'])) ? 'current-menu-item' : '';

?>

<li class="menu-item menu-item-type-taxonomy menu-item-object-category <?php echo (preg_match("/' . $str . ' /i",  $smenu['href'])) ? 'current-menu-item' : '';?>" >
    <a href="<?php echo $smenu['href']; ?>" title="<?php echo $smenu['title']; ?>"><?php echo $smenu['name']; ?></a>
</li>

<?php } ?>