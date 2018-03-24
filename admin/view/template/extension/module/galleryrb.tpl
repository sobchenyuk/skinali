<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-gallery" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-gallery" class="form-horizontal">
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
            <label class="col-sm-2 control-label" for="input-title"><?php echo $entry_title; ?></label>
            <div class="col-sm-10">
              <input type="text" name="title" value="<?php echo $title; ?>" placeholder="<?php echo $entry_title; ?>" id="input-title" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_thumb; ?></label>
            <div class="col-sm-1">
              <input type="text" name="thumb_width" value="<?php echo $thumb_width; ?>" id="input-thumb-width" class="form-control" />
              <?php if ($error_width_thumb) { ?>
              <div class="text-danger"><?php echo $error_width_thumb; ?></div>
              <?php } ?>
            </div>
            <div class="col-sm-1">
              <input type="text" name="thumb_height" value="<?php echo $thumb_height; ?>" id="input-thumb-height" class="form-control" />
              <?php if ($error_height_thumb) { ?>
              <div class="text-danger"><?php echo $error_height_thumb; ?></div>
              <?php } ?>
            </div>
            <label class="col-sm-2 control-label"><?php echo $entry_popup; ?></label>
            <div class="col-sm-1">
              <input type="text" name="popup_width" value="<?php echo $popup_width; ?>" id="input-popup-width" class="form-control" />
              <?php if ($error_width_popup) { ?>
              <div class="text-danger"><?php echo $error_width_popup; ?></div>
              <?php } ?>
            </div>
            <div class="col-sm-1">
              <input type="text" name="popup_height" value="<?php echo $popup_height; ?>" id="input-popup-height" class="form-control" />
              <?php if ($error_height_popup) { ?>
              <div class="text-danger"><?php echo $error_height_popup; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3" for="input-resize"><?php echo $entry_resize; ?></label>
            <div class="col-sm-9">
              <input name="resize" type="checkbox" value="1" id="input-resize" class="form-control" <?php if ($resize) { ?>checked="checked" <?php } ?>>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-colspan"><?php echo $entry_colspan; ?></label>
            <div class="col-sm-10">
              <select name="colspan" id="input-colspan" class="form-control">
                <option value="1" <?php if ($colspan == 1) { ?>selected="selected" <?php } ?>>1</option>
                <option value="2" <?php if ($colspan == 2) { ?>selected="selected" <?php } ?>>2</option>
                <option value="3" <?php if ($colspan == 3) { ?>selected="selected" <?php } ?>>3</option>
                <option value="4" <?php if ($colspan == 4) { ?>selected="selected" <?php } ?>>4</option>
                <option value="6" <?php if ($colspan == 6) { ?>selected="selected" <?php } ?>>6</option>
                <option value="12" <?php if ($colspan == 12) { ?>selected="selected" <?php } ?>>12</option>
              </select>
            </div>
          </div>
          <div class="form-group">
              <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="<?php echo $help_category; ?>"><?php echo $entry_category; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" class="form-control" />
                  <div id="gallery-category" class="well well-sm" style="height: 150px; overflow: auto;">
                    <?php foreach ($gallery_categories as $category) { ?>
                    <div id="gallery-category<?php echo $category['category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $category['name']; ?>
                      <input type="hidden" name="categories[]" value="<?php echo $category['category_id']; ?>" />
                    </div>
                    <?php } ?>
                  </div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-animation"><?php echo $entry_animation; ?></label>
            <div class="col-sm-10">
              <select name="animation" id="input-animation" class="form-control">
                <option value="mfp-zoom-in" <?php if ($animation == 'mfp-zoom-in') { ?>selected="selected" <?php } ?>><?php echo $text_zoom_in; ?></option>
                <option value="mfp-newspaper" <?php if ($animation == 'mfp-newspaper') { ?>selected="selected" <?php } ?>><?php echo $text_newspaper; ?></option>
                <option value="mfp-move-horizontal" <?php if ($animation == 'mfp-move-horizontal') { ?>selected="selected" <?php } ?>><?php echo $text_move_horizontal; ?></option>
                <option value="mfp-move-from-top" <?php if ($animation == 'mfp-move-from-top') { ?>selected="selected" <?php } ?>><?php echo $text_move_from_top; ?></option>
                <option value="mfp-3d-unfold" <?php if ($animation == 'mfp-3d-unfold') { ?>selected="selected" <?php } ?>><?php echo $text_3d_unfold; ?></option>
                <option value="mfp-zoom-out" <?php if ($animation == 'mfp-zoom-out') { ?>selected="selected" <?php } ?>><?php echo $text_zoom_out; ?></option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3" for="input-borderimage"><?php echo $entry_borderimage; ?></label>
            <div class="col-sm-9">
              <input name="borderimage" type="checkbox" value="1" id="input-borderimage" class="form-control" <?php if ($borderimage) { ?>checked="checked" <?php } ?>>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-text"><?php echo $entry_textlayout; ?></label>
            <div class="col-sm-10">
              <select name="text" id="input-text" class="form-control">
                <?php if ($text) { ?>
                <option value="1" selected="selected"><?php echo $text_textinimage; ?></option>
                <option value="0"><?php echo $text_textbelowimage; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_textinimage; ?></option>
                <option value="0" selected="selected"><?php echo $text_textbelowimage; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-gallery-bg"><?php echo $entry_textbg; ?></label>
            <div class="col-sm-10">
              <div class="input-group colorpicker-component">
                <input type="text" name="textbg" value="<?php echo $textbg; ?>" placeholder="<?php echo $entry_textbg; ?>" id="input-gallery-bg" class="form-control" />
                <span class="input-group-addon"><i></i></span>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-texthover"><?php echo $entry_texthover; ?></label>
            <div class="col-sm-10">
              <select name="texthover" id="input-texthover" class="form-control">
                <?php if ($texthover) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <ul class="nav nav-tabs" id="language">
            <?php foreach ($languages as $language) { ?>
            <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
            <?php } ?>
          </ul>
           <div class="tab-content">
            <?php $image_row = 0; ?>
            <?php foreach ($languages as $language) { ?>
            <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
              <table id="images<?php echo $language['language_id']; ?>" class="table table-striped table-bordered table-hover">
                <thead>
                  <tr>
                    <td class="text-left"><?php echo $entry_text; ?></td>
                    <td class="text-left"><?php echo $entry_image; ?></td>
                    <td class="text-right"><?php echo $entry_sort_order; ?></td>
                    <td></td>
                  </tr>
                </thead>
                <tbody>
                <?php if (isset($gallery_images[$language['language_id']])) { ?>
                <?php foreach ($gallery_images[$language['language_id']] as $gallery_image) { ?>
                  <tr id="image-row<?php echo $image_row; ?>">
                    <td class="text-left" style="width: 40%;">
                        <textarea name="gallery_image[<?php echo $language['language_id']; ?>][<?php echo $image_row; ?>][gallery_image_description]" placeholder="<?php echo $entry_title; ?>" class="form-control gallery-image-description input-description<?php echo $language['language_id'] .'-' .$image_row; ?>" rows=10 ><?php echo isset($gallery_image['gallery_image_description']) ? $gallery_image['gallery_image_description'] : ''; ?></textarea>
                      <?php if (isset($error_gallery_image[$image_row][$language['language_id']])) { ?>
                      <div class="text-danger"><?php echo $error_gallery_image[$image_row][$language['language_id']]; ?></div>
                      <?php } ?>
                    </td>
                    <td class="text-left"><a href="" id="thumb-image<?php echo $image_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $gallery_image['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                      <input type="hidden" name="gallery_image[<?php echo $language['language_id']; ?>][<?php echo $image_row; ?>][image]" value="<?php echo $gallery_image['image']; ?>" id="input-image<?php echo $image_row; ?>" /></td>
                    <td class="text-right" style="width: 10%;"><input type="text" name="gallery_image[<?php echo $language['language_id']; ?>][<?php echo $image_row; ?>][sort_order]" value="<?php echo $gallery_image['sort_order']; ?>" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>
                    <td class="text-left"><button type="button" onclick="$('#image-row<?php echo $image_row; ?>, .tooltip').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                  </tr>
                <?php $image_row++; ?>
                <?php } ?>
                <?php } ?>
                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="3"></td>
                    <td class="text-left"><button type="button" onclick="addImage('<?php echo $language['language_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_gallery_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                  </tr>
                </tfoot>
              </table>
           </div>
            <?php } ?>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$(function() {
  $('.colorpicker-component').colorpicker();
});
// Category
$('input[name=\'category\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['category_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'category\']').val('');

		$('#gallery-category' + item['value']).remove();

		$('#gallery-category').append('<div id="gallery-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="categories[]" value="' + item['value'] + '" /></div>');
	}
});

$('#gallery-category').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

//gallery Images

$('.tab-content').on('focus', '.gallery-image-description', function(){
  <?php foreach ($languages as $language) { ?>
    $('.gallery-image-description').each(function(){
      var nameDesc = $(this).attr('name');
      if (CKEDITOR.instances[nameDesc]){
        CKEDITOR.instances[nameDesc].destroy();
      }
    });
    CKEDITOR.replace($(this).attr('name'), {
      toolbar: [
        ['Source','ShowBlocks', 'Maximize'],
        ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
        ['NumberedList','BulletedList','-','Outdent','Indent'],
        ['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
        ['Undo','Redo'],
        ['Font','FontSize'],
        ['TextColor','BGColor'],
        ['Link','Unlink', 'HorizontalRule']
      ],
      allowedContent : true
    });
    //ckeditorInit($(this).attr('name'), '<?php echo $token; ?>');
  <?php } ?>
});
$(document).click(function(e) {
  if($(e.target).parents().hasClass('cke') || $(e.target).parents().hasClass('cke_dialog')){
    e.preventDefault();
  } else {
    $('.gallery-image-description').each(function(){
      var nameDesc = $(this).attr('name');
      if (CKEDITOR.instances[nameDesc]){
        CKEDITOR.instances[nameDesc].destroy();
      }
    });
  }
});


var image_row = <?php echo $image_row; ?>;

function addImage(language_id) {
	html  = '<tr id="image-row' + image_row + '">';
  html += '  <td class="text-left" style="width: 40%;">';
	html += '    <textarea type="text" name="gallery_image[' + language_id + '][' + image_row + '][gallery_image_description]" placeholder="<?php echo $entry_title; ?>" class="form-control gallery-image-description input-description' + language_id + '-' + image_row + '" rows=10 /></textarea>';
	html += '  </td>';	
	html += '  <td class="text-left"><a href="" id="thumb-image' + image_row + '" data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="gallery_image[' + language_id + '][' + image_row + '][image]" value="" id="input-image' + image_row + '" /></td>';
	html += '  <td class="text-right" style="width: 10%;"><input type="text" name="gallery_image[' + language_id + '][' + image_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#image-row' + image_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#images' + language_id + ' tbody').append(html);
	image_row++;
}
$('#language a:first').tab('show');
//-->
</script>
<?php echo $footer; ?>