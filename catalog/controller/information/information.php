<?php
class ControllerInformationInformation extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			//'text' => $this->language->get('text_home'),
			'text' => "Главная",
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$information_info = $this->model_catalog_information->getInformation($information_id);

		$data['information_id'] = $information_id;


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

		echo $layout_id;

		
		if ($information_id == 9) {
			if (isset($_POST['dealer_submit'])) {
				$comment = htmlspecialchars($_POST['comment']);
				$comment = trim($comment);
				$username = htmlspecialchars($_POST['username']);
				$phone = htmlspecialchars($_POST['phone']);
				$email = $_POST['email'];
				
				$msg = "Заявка от дилера\n";
				$msg .= "\n";
				$msg .= "Имя: " . $username . "\n";
				$msg .= "Телефон: " . $phone . "\n";
				$msg .= "E-mail: " . $email . "\n";
				$msg .= "\n";
				if ($comment != '')	$msg .= "Комментарий: " . $comment . "\n";
				
				mail("nva1985@mail.ru", "Заявка от дилера", $msg);
				
				if (mail("printcolor45@gmail.com", "Заявка от дилера", $msg)) {
					$redirect_to = 'https://skinali-printcolor.com/spasibo-za-vash-zakaz';
					header ("Location: ".$redirect_to);
				}
			}
		}



		if ($information_id == 25) {
			$dir = "image/catalog/ourworks";
			$res = array();
			$dir_list = scandir($dir);
			$dir_count = 0;
			$detail_dir_list = array();
			foreach ($dir_list as $d) {
				if ($d!='.' AND $d!='..') {
					if (!is_dir($dir."/".$d)) {
						$dir_count++;
						$detail_dir_list[$dir_count] = $d;
					}
				}
			}

			$work_images = array();

			for ($i = 1; $i <= count($detail_dir_list); $i++) {
				if ($i < count($detail_dir_list)) {
					if (substr($detail_dir_list[$i], 0, 2) != substr($detail_dir_list[$i + 1], 0, 2)) {
						array_push($work_images, $detail_dir_list[$i]);
					}
				}
			}
			array_push($work_images, end($detail_dir_list));

			$data['work_dir'] = $dir;

			$limit = 9;

			$first_image = (($page - 1) * $limit);
			$last_image = ($page * $limit <= count($work_images) ? $page * $limit : count($work_images));

			$showed_images = array();

			for ($i = $first_image; $i < $last_image; $i++) {
				array_push($showed_images, $work_images[$i]);
			}

			$data['showed_images'] = $showed_images;

			require_once "mypagination.php";
			//$pagination = new Pagination();
			$pagination = new MyPagination();
			$pagination->total = count($work_images);
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('information/information', '&information_id=25&page={page}');

			$data['pagination'] = $pagination->render();

		}
		
		if ($information_id == 88) {
			$this->load->model('catalog/review');
			if (isset($_POST['submit'])) {
				$comment = $_POST['comment'];
				$author = $_POST['author'];
				$email = $_POST['email'];
				$url = $_POST['url'];
				//echo $comment . " - " . $author . " - " . $email . " - " . $url;
				$review_info = array(
					'text' => $_POST['comment'],
					'author' => $_POST['author'],
					'date_added' => date("Y-m-d H:i:s")
				);
				$add_review = $this->model_catalog_review->addNewReview($review_info);
				$msg = "Новый отзыв\n";
				$msg .= "\n";
				$msg .= "Имя: " . $author . "\n";
				$msg .= "E-mail: " . $email . "\n";
				$msg .= "Профиль Вконтакте: " . $url . "\n";
				$msg .= "\n";
				$msg .= "Комментарий: " . $comment . "\n";
				
				mail("nva1985@mail.ru", "Новый отзыв", $msg);
			}
			
			
			$total_reviews = $this->model_catalog_review->getTotalReviews();
			$data['total_reviews'] = $total_reviews;
			$product_total = count($total_reviews);
			
			$limit = 5;
			
			require_once "mypagination.php";
			//$pagination = new Pagination();
			$pagination = new MyPagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = 5;
			$pagination->url = $this->url->link('information/information', '&information_id=88&page={page}');

			$data['pagination'] = $pagination->render();
			
			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));
			
			$start = ($page - 1) * 5;
			
			$showed_reviews = $this->model_catalog_review->getSomeReviews($start, $limit);
			$data['showed_reviews'] = $showed_reviews;
			
			//$this->response->setOutput($this->load->view('information/reviews', $data));
		}
		
		if ($information_id == 89) {
			if (isset($_POST['lego_order_btn'])) {
				$comment = htmlspecialchars($_POST['info']);
				$comment = trim($comment);
				$username = htmlspecialchars($_POST['username']);
				$phone = htmlspecialchars($_POST['phone']);
				$city = htmlspecialchars($_POST['city']);
				$email = $_POST['email'];
				
				$img_id = $_POST['img_id'];
				$img_title = $_POST['img_title'];
				$sk_link = $_POST['sk_link'];
				
				if (isset($_POST['mirror'])) $mirror = $_POST['mirror'];
				else $mirror = 'mirror_no';
				if (isset($_POST['bw'])) $bw = $_POST['bw'];
				else $bw = 'bw_no';
				if (isset($_POST['sepia'])) $sepia = $_POST['sepia'];
				else $sepia = 'sepia_no';
				
				$msg = "Новый заказ скинали\n";
				$msg .= "\n";
				$msg .= "Имя: " . $username . "\n";
				$msg .= "Телефон: " . $phone . "\n";
				$msg .= "Город: " . $city . "\n";
				$msg .= "E-mail: " . $email . "\n";
				$msg .= "\n";
				$msg .= "Изображение скинали:\n";
				$msg .= $img_title . "\n";
				if (is_numeric($img_id)) {
					$msg .= "№ " . $img_id . "\n";
					$msg .= "Ссылка на скинали: " . $sk_link . "\n";
				}
				else $msg .= $img_id . "\n";
				$msg .= "\n";
				$msg .= "Дополнительные опции:\n";
				if ($mirror == 'mirror_yes') $msg .= " - Отзеркалить\n";
				if ($bw == 'bw_yes') $msg .= " - Черно-белое\n";
				if ($sepia == 'sepia_yes') $msg .= " - Сепия\n";
				$msg .= "\n";
				if ($comment != '')	$msg .= "Комментарий заказчика: " . $comment . "\n";
				
				mail("nva1985@mail.ru", "Новый заказ скинали", $msg);
				
				if (mail("printcolor45@gmail.com", "Новый заказ скинали", $msg)) {
					$redirect_to = 'https://skinali-printcolor.com/spasibo-za-vash-zakaz';
					header ("Location: ".$redirect_to);
				}
				/*else {
					$redirect_to = home_url() . '/konstruktor-skinali';
					wp_redirect($redirect_to, $status);
					exit;
				}*/
				
				
			}	
			$this->load->model('catalog/category');
			$this->load->model('catalog/product');
			$main_categories = $this->model_catalog_category->getCategories();
			//$data['main_categories'] = $main_categories;
			
			foreach ($main_categories as $main_category) {
				$data['main_categories'][] = array(
					'category_id' => $main_category['category_id'],
					'image' => $main_category['image'],
					'name' => $main_category['name'],
					'description' => $main_category['description'],
					'href' => $this->url->link('product/category', 'path=' . $main_category['category_id'])
				);
			}
			
			$filter_data = array(
				'filter_category_id' => $main_categories[0]['category_id'],
				/*'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * 12,
				'limit'              => 12*/
			);

			$first_cat_products = $this->model_catalog_product->getProducts($filter_data);
			//$data['first_cat_products'] = $first_cat_products;
			foreach ($first_cat_products as $first_cat_product) {
				//$data['first_cat_first_product'] = $first_cat_product;
				$data['first_cat_first_product'] = array(
					'product_id'  => $first_cat_product['product_id'],
					'sku'		  => $first_cat_product['sku'],
 					'image'       => $first_cat_product['image'],
					'name'        => $first_cat_product['name'],
					'href'        => $this->url->link('product/product', 'path=' . '&product_id=' . $first_cat_product['product_id'])
				);
				break;
			}
			foreach ($first_cat_products as $first_cat_product) {
				$data['first_cat_products'][] = array(
					'product_id'  => $first_cat_product['product_id'],
					'sku'		  => $first_cat_product['sku'],
 					'image'       => $first_cat_product['image'],
					'name'        => $first_cat_product['name'],
					'href'        => $this->url->link('product/product', 'path=' . '&product_id=' . $first_cat_product['product_id'])
				);
			}
			//$this->response->setOutput($this->load->view('information/list_wrapper.tpl', $data));
		}
		
		if ($information_info) {

			if ($information_info['meta_title']) {
				$this->document->setTitle($information_info['meta_title']);
			} else {
				$this->document->setTitle($information_info['title']);
			}

			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);

			/*$data['breadcrumbs'][] = array(
				'text' => $information_info['title'],
				'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
			);*/

			if ($information_info['meta_h1']) {
				$data['heading_title'] = $information_info['meta_h1'];
			} else {
				$data['heading_title'] = $information_info['title'];
			}

			$data['button_continue'] = $this->language->get('button_continue');

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');


			$data['content_bottom'] = $this->load->controller('common/content_bottom');


			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('information/information', $data));
		} else {
			/*$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/information', 'information_id=' . $information_id)
			);*/

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}

	public function agree() {
		$this->load->model('catalog/information');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$output = '';

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
		}

		$this->response->setOutput($output);
	}
	
	public function ajaxGetCategory() {
		if (isset($this->request->get['cat_id'])) {
			$this->load->model('catalog/category');
			$this->load->model('catalog/product');
			$new_cat_id = (int) $this->request->get['cat_id'];
			
			$filter_data = array(
				'filter_category_id' => $new_cat_id,
			);

			$new_cat_products = $this->model_catalog_product->getProducts($filter_data);
			
			//$data['first_cat_products'] = $new_cat_products;
			foreach ($new_cat_products as $new_cat_product) {
				$data['first_cat_first_product'] = array(
					'product_id'  => $new_cat_product['product_id'],
					'sku'		  => $new_cat_product['sku'],
 					'image'       => $new_cat_product['image'],
					'name'        => $new_cat_product['name'],
					'href'        => $this->url->link('product/product', 'path=' . '&product_id=' . $new_cat_product['product_id'])
				);
				break;
			}
			
			foreach ($new_cat_products as $first_cat_product) {
				$data['first_cat_products'][] = array(
					'product_id'  => $first_cat_product['product_id'],
					'sku'		  => $first_cat_product['sku'],
 					'image'       => $first_cat_product['image'],
					'name'        => $first_cat_product['name'],
					'href'        => $this->url->link('product/product', 'path=' . '&product_id=' . $first_cat_product['product_id'])
				);
			}
			
			$this->response->setOutput($this->load->view('information/list_wrapper.tpl', $data));
		}
		
	}
	
	public function ajaxGetProduct() {
		if (isset($this->request->get['sku'])) {
			$this->load->model('catalog/category');
			$this->load->model('catalog/product');
			$sku = $this->request->get['sku'];

			$find_product = $this->model_catalog_product->getProductBySku($sku);
			if ($find_product) {
				$data['no_product'] = false;
				$find_product_name = $this->model_catalog_product->getProductName($find_product['product_id']);
				$find_product_cat_id = $this->model_catalog_product->getProductCategoryId($find_product['product_id']);
				$find_product_category = $this->model_catalog_product->getProductCategory($find_product_cat_id['category_id']);
				
				$data['find_product'] = array(
					'product_id'  => $find_product['product_id'],
					'sku'		  => $find_product['sku'],
					'image'       => $find_product['image'],
					'name'        => $find_product_name['name'],
					'href'        => $this->url->link('product/product', 'path=' . '&product_id=' . $find_product['product_id']),
					'category_name' => $find_product_category['name']
				);
				
				$this->response->setOutput($this->load->view('information/list_wrapper_find_product.tpl', $data));
			}
			else {
				$data['no_product'] = true;
				$this->response->setOutput($this->load->view('information/list_wrapper_find_product.tpl', $data));
			}
		}
		
	}
	
}