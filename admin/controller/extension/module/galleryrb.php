<?php
class ControllerExtensionModuleGalleryrb extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/galleryrb');

		$this->document->setTitle($this->language->get('heading_title'));
    $this->document->addScript('view/javascript/jquery/colorpicker/js/bootstrap-colorpicker.min.js');
    $this->document->addStyle('view/javascript/jquery/colorpicker/css/bootstrap-colorpicker.min.css');
    
    //CKEditor
    $this->document->addScript('view/javascript/ckeditor/ckeditor.js');
    $this->document->addScript('view/javascript/ckeditor/ckeditor_init.js');

		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('galleryrb', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
    $data['text_zoom_in'] = $this->language->get('text_zoom_in');
		$data['text_newspaper'] = $this->language->get('text_newspaper');
		$data['text_move_horizontal'] = $this->language->get('text_move_horizontal');
    $data['text_move_from_top'] = $this->language->get('text_move_from_top');
    $data['text_3d_unfold'] = $this->language->get('text_3d_unfold');
    $data['text_zoom_out'] = $this->language->get('text_zoom_out');
    $data['text_textinimage'] = $this->language->get('text_textinimage');
    $data['text_textbelowimage'] = $this->language->get('text_textbelowimage');
    $data['help_category'] = $this->language->get('help_category');

		$data['entry_name'] = $this->language->get('entry_name');
    $data['entry_title'] = $this->language->get('entry_title');
		$data['entry_thumb'] = $this->language->get('entry_thumb');
		$data['entry_popup'] = $this->language->get('entry_popup');
    $data['entry_resize'] = $this->language->get('entry_resize');
    $data['entry_colspan'] = $this->language->get('entry_colspan');
    $data['entry_texthover'] = $this->language->get('entry_texthover');
		$data['entry_status'] = $this->language->get('entry_status');
    $data['entry_category'] = $this->language->get('entry_category');
		$data['entry_animation'] = $this->language->get('entry_animation');
    $data['entry_borderimage'] = $this->language->get('entry_borderimage');
    $data['entry_textlayout'] = $this->language->get('entry_textlayout');
    $data['entry_textbg'] = $this->language->get('entry_textbg');
    $data['entry_text'] = $this->language->get('entry_text');
    $data['entry_text'] = $this->language->get('entry_text');
    $data['entry_image'] = $this->language->get('entry_image');
    $data['entry_sort_order'] = $this->language->get('entry_sort_order');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
    $data['button_gallery_add'] = $this->language->get('button_gallery_add');
		$data['button_remove'] = $this->language->get('button_remove');
    
    $data['ckeditor'] = $this->config->get('config_editor_default');
    
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['width_thumb'])) {
			$data['error_width_thumb'] = $this->error['width_thumb'];
		} else {
			$data['error_width_thumb'] = '';
		}

		if (isset($this->error['height_thumb'])) {
			$data['error_height_thumb'] = $this->error['height_thumb'];
		} else {
			$data['error_height_thumb'] = '';
		}
    		
    if (isset($this->error['width_popup'])) {
			$data['error_width_popup'] = $this->error['width_popup'];
		} else {
			$data['error_width_popup'] = '';
		}

		if (isset($this->error['height_popup'])) {
			$data['error_height_popup'] = $this->error['height_popup'];
		} else {
			$data['error_height_popup'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('extension/module/galleryrb', 'token=' . $this->session->data['token'], true)
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('extension/module/galleryrb', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true)
			);
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('extension/module/galleryrb', 'token=' . $this->session->data['token'], true);
		} else {
			$data['action'] = $this->url->link('extension/module/galleryrb', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true);
		}

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}
    
    if (isset($this->request->post['title'])) {
			$data['title'] = $this->request->post['title'];
		} elseif (!empty($module_info)) {
			$data['title'] = $module_info['title'];
		} else {
			$data['title'] = '';
		}

		if (isset($this->request->post['thumb_width'])) {
			$data['thumb_width'] = $this->request->post['thumb_width'];
		} elseif (!empty($module_info)) {
			$data['thumb_width'] = $module_info['thumb_width'];
		} else {
			$data['thumb_width'] = '';
		}

		if (isset($this->request->post['thumb_height'])) {
			$data['thumb_height'] = $this->request->post['thumb_height'];
		} elseif (!empty($module_info)) {
			$data['thumb_height'] = $module_info['thumb_height'];
		} else {
			$data['thumb_height'] = '';
		}
    
    if (isset($this->request->post['popup_width'])) {
			$data['popup_width'] = $this->request->post['popup_width'];
		} elseif (!empty($module_info)) {
			$data['popup_width'] = $module_info['popup_width'];
		} else {
			$data['popup_width'] = '';
		}

		if (isset($this->request->post['popup_height'])) {
			$data['popup_height'] = $this->request->post['popup_height'];
		} elseif (!empty($module_info)) {
			$data['popup_height'] = $module_info['popup_height'];
		} else {
			$data['popup_height'] = '';
		}
    
    if (isset($this->request->post['resize'])) {
			$data['resize'] = $this->request->post['resize'];
		} elseif (!empty($module_info['resize'])) {
			$data['resize'] = $module_info['resize'];
		} else {
			$data['resize'] = '';
		}
    
    if (isset($this->request->post['colspan'])) {
			$data['colspan'] = $this->request->post['colspan'];
		} elseif (!empty($module_info)) {
			$data['colspan'] = $module_info['colspan'];
		} else {
			$data['colspan'] = '4';
		}
    
    // Select category
    
    $data['token'] = $this->session->data['token'];
    
    $this->load->model('catalog/category');
    
    if (isset($this->request->post['categories'])) {
			$data['categories'] = $this->request->post['categories'];
		} elseif (!empty($module_info['categories'])) {
			$data['categories'] = $module_info['categories'];
		} else {
			$data['categories'] = array();
		}
    $data['gallery_categories'] = array();
  
    foreach ($data['categories'] as $category_id) {
			$category_info = $this->model_catalog_category->getCategory($category_id);

			if ($category_info) {
				$data['gallery_categories'][] = array(
					'category_id' => $category_info['category_id'],
					'name'        => ($category_info['path']) ? $category_info['path'] . ' &gt; ' . $category_info['name'] : $category_info['name']
				);
			}
		}
    
    if (isset($this->request->post['animation'])) {
			$data['animation'] = $this->request->post['animation'];
		} elseif (!empty($module_info)) {
			$data['animation'] = $module_info['animation'];
		} else {
			$data['animation'] = 'mfp-zoom-in';
		} 
    
    if (isset($this->request->post['borderimage'])) {
			$data['borderimage'] = $this->request->post['borderimage'];
		} elseif (!empty($module_info['borderimage'])) {
			$data['borderimage'] = $module_info['borderimage'];
		} else {
			$data['borderimage'] = '';
		} 

    if (isset($this->request->post['text'])) {
			$data['text'] = $this->request->post['text'];
		} elseif (!empty($module_info)) {
			$data['text'] = $module_info['text'];
		} else {
			$data['text'] = '0';
		}    
    
    if (isset($this->request->post['textbg'])) {
			$data['textbg'] = $this->request->post['textbg'];
		} elseif (!empty($module_info['textbg'])) {
			$data['textbg'] = $module_info['textbg'];
		} else {
			$data['textbg'] = '#fff';
		}
    
    if (isset($this->request->post['texthover'])) {
			$data['texthover'] = $this->request->post['texthover'];
		} elseif (!empty($module_info)) {
			$data['texthover'] = $module_info['texthover'];
		} else {
			$data['texthover'] = '1';
		}
    
    // Gallery image start
    
    $this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();
    $data['lang'] = $this->language->get('lang');
    
    $this->load->model('tool/image');

		if (isset($this->request->post['gallery_image'])) {
			$gallery_images = $this->request->post['gallery_image'];
		} elseif (!empty($module_info['gallery_image'])) {
			$gallery_images = $module_info['gallery_image'];
		} else {
			$gallery_images = array();
		}
    
    $data['gallery_images'] = array();

		foreach ($gallery_images as $key => $value) {
      foreach ($value as $gallery_image) {
        if (is_file(DIR_IMAGE . $gallery_image['image'])) {
          $image = $gallery_image['image'];
          $thumb = $gallery_image['image'];
        } else {
          $image = '';
          $thumb = 'no_image.png';
        }

        $data['gallery_images'][$key][] = array(
          'gallery_image_description' => $gallery_image['gallery_image_description'],
          'image'                    => $image,
          'thumb'                    => $this->model_tool_image->resize($thumb, 100, 100),
          'sort_order'               => $gallery_image['sort_order']
        );
      }
		}

		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
    
    // Gallery Image END
    
		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/galleryrb', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/galleryrb')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!$this->request->post['thumb_width']) {
			$this->error['width_thumb'] = $this->language->get('error_width_thumb');
		}

		if (!$this->request->post['thumb_height']) {
			$this->error['height_thumb'] = $this->language->get('error_height_thumb');
		}
    if (!$this->request->post['popup_width']) {
			$this->error['width_popup'] = $this->language->get('error_width_popup');
		}

		if (!$this->request->post['popup_height']) {
			$this->error['height_popup'] = $this->language->get('error_height_popup');
		}

		return !$this->error;
	}
}