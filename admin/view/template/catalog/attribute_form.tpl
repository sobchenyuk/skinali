<?php echo $header;

ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

?><?php echo $column_left; ?>

<?php $groupTrue = false; ?>


<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-attribute" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-attribute" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <?php foreach ($languages as $language) { ?>
              <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
                <input type="text" name="attribute_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($attribute_description[$language['language_id']]) ? $attribute_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" class="form-control" />
              </div>
              <?php if (isset($error_name[$language['language_id']])) { ?>
              <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
              <?php } ?>
              <?php } ?>
            </div>
          </div>
          <div id="group" class="form-group">
            <label class="col-sm-2 control-label" for="input-attribute-group"><?php echo $entry_attribute_group; ?></label>
            <div class="col-sm-10">
              <select name="attribute_group_id" id="input-attribute-group" class="form-control">
                <option value="0"></option>
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <?php if ($attribute_group['attribute_group_id'] == $attribute_group_id) { ?>

                <?php
                switch ($attribute_group['attribute_group_id']) {
                    case 8:
                        $groupTrue = 8;
                        break;
                    case 9:
                        $groupTrue = 9;
                        break;
                }?>

                <option value="<?php echo $attribute_group['attribute_group_id']; ?>" selected="selected"><?php echo $attribute_group['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $attribute_group['attribute_group_id']; ?>"><?php echo $attribute_group['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
              <?php if ($error_attribute_group) { ?>
              <div class="text-danger"><?php echo $error_attribute_group; ?></div>
              <?php } ?>
            </div>
          </div>

          <?php if($groupTrue){ ?>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-type-of-printing">Стоимость Грн. за м2</label>
            <div class="col-sm-10">
                <?php if($groupTrue == 8): ?>

                <input type="text" name="price_type_of_printing" value="" placeholder="" id="input-type-of-printing" class="form-control" />

                <?php else if($groupTrue == 9): ?>

                <input type="text" name="price_type_of_printing" value="" placeholder="" id="input-type-of-printing" class="form-control" />

                <?php endif; ?>
            </div>
          </div>
          <?php }; ?>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>


        </form>
      </div>
    </div>
  </div>
</div>

<script>
    (function () {
        var group = document.querySelector('#group');

        var select = document.querySelector('#input-attribute-group');
        var printing = document.querySelector('#input-type-of-printing');

        var typeOfPrinting = document.createElement('div');
        typeOfPrinting.className = "form-group";
        typeOfPrinting.innerHTML = "<label class=\"col-sm-2 control-label\" for=\"input-type-of-printing\">Стоимость Грн. за м2</label>" +
            "<div class=\"col-sm-10\">" +
            "<input type=\"text\" name=\"price_type_of_printing\" value=\"\" placeholder=\"\" id=\"input-type-of-printing\" class=\"form-control\" />" +
            "</div>" +
            "</div>";

        select.addEventListener("change", function (evt) {
            if(parseInt(this.value) === 8 || parseInt(this.value) === 9){
                if(!printing){
                    group.parentNode.insertBefore(typeOfPrinting, group.nextSibling);
                }
            }
        });


    })();
</script>

<?php echo $footer; ?>
