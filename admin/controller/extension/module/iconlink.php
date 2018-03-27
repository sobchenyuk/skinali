<?php
class ControllerExtensionModuleIconlink extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/iconlink'); 
		$this->load->model('setting/setting');   
		$this->load->model('extension/module');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('iconlink', $this->request->post);
			} else {

				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
				//$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "iconlink` WHERE `id_iconlink` = '" . (int)$this->request->get['module_id'] . "'");

				// $data['icon_item'] = $query->rows;				
				
					$this->db->query("DELETE FROM `" . DB_PREFIX . "iconlink` WHERE `id_iconlink` = '" . (int)$this->request->get['module_id'] . "'");
					foreach ($this->request->post['product_image'] as $post_arr) {
						$query = $this->db->query("INSERT INTO `" . DB_PREFIX . "iconlink` SET `id_iconlink` = '" . (int)$this->request->get['module_id'] . "', `image` = '" . $post_arr['image'] . "', `link` = '" . $post_arr['link'] . "', `sorted` = '" . $post_arr['sorted'] . "'");
					}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
		}
		}

      
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');		
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_additional_image'] = $this->language->get('entry_additional_image');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['button_image_add'] = $this->language->get('button_add');
		$data['entry_additional_link'] = $this->language->get('entry_additional_link');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
 
    
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
        
		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'], 'SSL')
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/category', 'token=' . $this->session->data['token'], 'SSL')
		);

       
		$data['action'] = $this->url->link('extension/module/iconlink', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'], 'SSL');

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('extension/module/iconlink', 'token=' . $this->session->data['token'], true);
		} else {
			$data['action'] = $this->url->link('extension/module/iconlink', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true);
		}

		$data_mod = array();

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
			$mod_info = $this->db->query("SELECT * FROM `" . DB_PREFIX . "iconlink` WHERE `id_iconlink` = '" . (int)$this->request->get['module_id'] . "'");
		}
		$data_mod = $mod_info->rows;
		$data['token'] = $this->session->data['token'];

        if (isset($this->request->post['iconlink_status'])) {
			$data['iconlink_status'] = $this->request->post['iconlink_status'];
		} else {
			$data['iconlink_status'] = $module_info['iconlink_status'];;
		}
		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}
		$this->load->model('tool/image');

		foreach ($data_mod as $value) {

			if ($value['image']) {
				$image = $this->model_tool_image->resize($value['image'], 100, 100);
			} else {
				$image = $this->model_tool_image->resize('no_image.png', 100, 100);
			}

			if ($value['link']) {
				$link = $value['link'];
			} else {
				$link = '';
			}

			$sorted = $value['sorted'];
			

			$data['mod'][] = array('image' => $image, 'link' => $link, 'sorted' => $sorted, 'image_h' => $value['image']);

		}
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('extension/module/iconlink', $data));
	}

   
	protected function validate() {
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}
		if (!$this->user->hasPermission('modify', 'extension/module/iconlink')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}
}