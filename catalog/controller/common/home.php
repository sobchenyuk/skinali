<?php
class ControllerCommonHome extends Controller {
	public function index() {
		
		$this->load->model('catalog/product');
		
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		$data['breadcrumbs'][] = array(
			//'text' => $this->language->get('text_home'),
			'text' => "Главная",
			'href' => $this->url->link('common/home')
		);
		
		$all_products = $this->model_catalog_product->getAllProducts();
		
		$data['all_products'] = $all_products;
		$product_total = count($all_products);
		require_once "mypagination.php";
		//$pagination = new Pagination();
		$pagination = new MyPagination();
		$pagination->total = $product_total;
		$pagination->page = $page;
		$pagination->limit = 12;
		$pagination->url = $this->url->link('common/home', 'path=' . '&page={page}');

		$data['pagination'] = $pagination->render();

		//$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

		$limit = 12;
		$start = ($page - 1) * 12;
		$showed_products = $this->model_catalog_product->getSomeProducts($start, $limit);
		//$data['showed_products'] = $showed_products;
		
		foreach ($showed_products as $result) {
			$product_images = $this->model_catalog_product->getProductImages($result['product_id']);
			$data['showed_products'][] = array(
				'product_id'  => $result['product_id'],
				'sku'		  => $result['sku'],
				'thumb'       => $result['image'],
				'image'       => $product_images[0]['image'],
				//'name'        => $result['name'],
				//'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
				//'price'       => $price,
				//'special'     => $special,
				//'tax'         => $tax,
				//'minimum'     => ($result['minimum'] > 0) ? $result['minimum'] : 1,
				//'rating'      => $rating,
				'href'        => $this->url->link('product/product', '&product_id=' . $result['product_id'])
			);
		}
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
