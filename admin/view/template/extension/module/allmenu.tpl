<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-iconlink" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb){ ?>
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
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-allmenu" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>


          <div class="form-group">
            <div class="table-responsive">
              <table id="images" class="table table-striped table-bordered table-hover">
                <thead>
                  <tr>
                    <td class="text-left"><?php echo $text_t1; ?></td>
                    <td class="text-left"><?php echo $text_t2; ?></td>
                    <td class="text-left"><?php echo $entry_sort_order; ?></td>
                    <td></td>
                  </tr>
                </thead>

                <tbody>
                    <?php $image_row = 0; ?>
                    <?php foreach ($mod as $product_image) { ?>
                    <tr id="image-row<?php echo $image_row; ?>">
                      <td class="text-left">
                         <input type="text" name="product_image[<?php echo $image_row; ?>][name]" value="<?php echo $product_image['name']; ?>" placeholder="<?php echo $product_image['name']; ?>" id="input-link" class="form-control" />
                      </td>
                      <td class="text-left">
                         <input type="text" name="product_image[<?php echo $image_row; ?>][link]" value="<?php echo $product_image['link']; ?>" placeholder="<?php echo $product_image['link']; ?>" id="input-link" class="form-control" />
                      </td>
                      <td class="text-right">
                        <input type="text" name="product_image[<?php echo $image_row; ?>][sort_order]" value="<?php echo $product_image['sort_order']; ?>" placeholder="<?php echo $entry_sorted; ?>" class="form-control" />
                      </td>
                      <td class="text-left">
                        <button type="button" onclick="$('#image-row<?php echo $image_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button><button type="button" onclick="addImage();" data-toggle="tooltip" title="<?php echo $button_image_add; ?>" class="btn btn-primary">
                        <i class="fa fa-plus-circle"></i>
                      </td>
                    </tr>
                    <?php $image_row++; ?>
                    <?php } ?>
                </tbody>

                <tfoot>
                  <tr>
                    <td colspan="5"></td>
                    <td class="text-left">
                      <button type="button" onclick="addImage();" data-toggle="tooltip" title="<?php echo $button_image_add; ?>" class="btn btn-primary">
                        <i class="fa fa-plus-circle"></i>
                      </button>
                    </td>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="allmenu_status" id="input-status" class="form-control">
                <?php if ($allmenu_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var image_row = 4;
function addImage() {
  html  = '<tr id="image-row' + image_row + '">';
  html += '  <td class="text-left"><input type="text" name="product_image[' + image_row + '][name]" value="" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" /></td>';
  html += '  <td class="text-left"><input type="text" name="product_image[' + image_row + '][link]" value="" placeholder="<?php echo $text_t2; ?>" id="input-name" class="form-control" /></td>';
  html += '  <td class="text-right"><input type="text" name="product_image[' + image_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';
  html += '  <td class="text-left"><button type="button" onclick="$(\'#image-row' + image_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
  html += '</tr>';

  $('#images tbody').append(html);

  image_row++;
}
//--></script>
<?php echo $footer; ?>