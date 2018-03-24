<?php
class ControllerInformationReviews extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');
		$this->load->model('catalog/review');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			//'text' => $this->language->get('text_home'),
			'text' => "Главная",
			'href' => $this->url->link('common/home')
		);

		/*if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}*/
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
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
			mail("printcolor45@gmail.com", "Новый отзыв", $msg);
		}
		//$information_info = $this->model_catalog_information->getInformation($information_id);

		//if ($information_info) {

			//if ($information_info['meta_title']) {
				//$this->document->setTitle($information_info['meta_title']);
			//} else {
				$this->document->setTitle("Отзывы наших клиентов | кухонный фартук из стекла от PrintColor");
			//}

			//$this->document->setDescription($information_info['meta_description']);
			$this->document->setDescription("Не знаете Отзывы наших клиентов в Украине (Киев, Харьков, Днепр)? Производство закаленного стеклянного кухонного фартука от PrintColor");
			//$this->document->setKeywords($information_info['meta_keyword']);
			$this->document->setKeywords("Отзывы наших клиентов, скинали, купить, стеклянный фартук, кухонный фартук, заказ, украина");

			/*$data['breadcrumbs'][] = array(
				'text' => $information_info['title'],
				'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
			);*/

			//if ($information_info['meta_h1']) {
				//$data['heading_title'] = $information_info['meta_h1'];
			//} else {
				$data['heading_title'] = "Отзывы наших клиентов";
			//}

			//$data['button_continue'] = $this->language->get('button_continue');

			//$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			//$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

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
			$pagination->url = $this->url->link('information/reviews', 'page={page}');

			$data['pagination'] = $pagination->render();
			
			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));
			
			$start = ($page - 1) * 5;
			
			$showed_reviews = $this->model_catalog_review->getSomeReviews($start, $limit);
			$data['showed_reviews'] = $showed_reviews;
			$this->response->setOutput($this->load->view('information/reviews', $data));
		//} else {
			/*$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/information', 'information_id=' . $information_id)
			);*/

			/*$this->document->setTitle($this->language->get('text_error'));

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

			$this->response->setOutput($this->load->view('error/not_found', $data));*/
		//}
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
}