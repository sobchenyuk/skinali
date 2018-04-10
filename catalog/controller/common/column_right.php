<?php
class ControllerCommonColumnRight extends Controller {
	public function index() {
		if (isset($_POST['call_back'])) {
			$phone = $_POST['phone'];
			$msg = "Запрос звонка\n";
			$msg .= "\n";
			$msg .= "Телефон: " . $phone . "\n";
			
			//echo $msg;
			mail("nva1985@mail.ru", "Запрос звонка", $msg);
			
			if (mail("printcolor45@gmail.com", "Запрос звонка", $msg)) {
				$redirect_to = 'https://skinali-printcolor.com/spasibo-za-vashu-zayavku';
				header ("Location: ".$redirect_to);
			}
		}
		$this->load->model('design/layout');

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}

		$layout_id = 0;

		if ($route == 'product/category' && isset($this->request->get['path'])) {
			$this->load->model('catalog/category');

			$path = explode('_', (string)$this->request->get['path']);

			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));
		}

		if ($route == 'product/product' && isset($this->request->get['product_id'])) {
			$this->load->model('catalog/product');

			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
		}

		if ($route == 'information/information' && isset($this->request->get['information_id'])) {
			$this->load->model('catalog/information');

			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
		}

		if (!$layout_id) {
			$layout_id = $this->model_design_layout->getLayout($route);
		}

		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}

		$this->load->model('extension/module');

		$data['modules'] = array();

		$modules = $this->model_design_layout->getLayoutModules($layout_id, 'column_right');

		foreach ($modules as $module) {
			$part = explode('.', $module['code']);

			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
				$module_data = $this->load->controller('extension/module/' . $part[0]);

				if ($module_data) {
					$data['modules'][] = $module_data;
				}
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);

				if ($setting_info && $setting_info['status']) {
					$output = $this->load->controller('extension/module/' . $part[0], $setting_info);

					if ($output) {
						$data['modules'][] = $output;
					}
				}
			}
		}
		
		$this->load->model('tool/rating');
		$total_rating = $this->model_tool_rating->getRating();


		$data['total'] = $total_rating['vote-total'];
		$data['rating'] = $total_rating['vote-rating'];

		return $this->load->view('common/column_right', $data);
	}
	
	public function ajaxSetRating() {
		if (isset($this->request->get['do']) && $this->request->get['do'] == 'ajax') {
			if(isset($this->request->get['num'])) {


				if ((isset($this->request->get['id']) && is_numeric($this->request->get['id']))) {


					$this->load->model('tool/rating');
					$id = $this->request->get['id'];
					$num = $this->request->get['num'];



					if (!isset($_COOKIE["vote-post-".$id])) {


						$total_rating = $this->model_tool_rating->getRating();
						$total = $total_rating['vote-total'];

						$rating = $total_rating['vote-rating'];
						$new_total = $total + 1;

						$new_rating = ($total + $num) * 4.5 + 1;


						$set_rating_data = $this->model_tool_rating->setRating($new_total, $new_rating);

						$updated_total_rating = $this->model_tool_rating->getRating();
						$updated_total = $updated_total_rating['vote-total'];
						$updated_rating = $updated_total_rating['vote-rating'];

						if($updated_total==0) {$updated_total = 1;}

						//echo ($updated_rating / ($updated_total * 5)) * 100;
						$json['pr'] = ($updated_rating / ($updated_total * 5)) * 100;

						$this->response->setOutput(json_encode($json));
					}
					else {
						//echo 'limit';
						$json['pr'] = 'limit';
						$this->response->setOutput(json_encode($json));
					}
				
				}
			}
		}
	}
	
}
