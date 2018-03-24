<?php
class ControllerServicesSkinalikuhonnyijfartuk extends Controller {
	public function index() {
		//$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setTitle("Купить скинали - Скинали | PrintColor");
		//$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setDescription("Нужно Скинали в Украине (Киев, Харьков, Днепр)? Производство закаленного стеклянного кухонного фартука 41");
		//$this->document->setKeywords($this->config->get('config_meta_keyword'));
		$this->document->setKeywords("Скинали, скинали, купить, стеклянный фартук, кухонный фартук, заказ, украина");

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		
		$data['short_title'] = "Скинали";
		
		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					//'children' => $children_data,
					//'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
		$this->response->setOutput($this->load->view('services/skinali_kuhonnyij_fartuk', $data));
	}
}
