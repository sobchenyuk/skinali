<?php
class ControllerServicesInfo extends Controller {
	public function index() {
		

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$this->load->model('test/info');
		$info_info = $this->model_test_info->getInfoTexts();
       $new_info = array();
		$changed = 0;
		for ($i = 0; $i < count($info_info); $i++) {
			$new_info[$i]['information_id'] = $info_info[$i]['information_id'];
			//$new_info[$i]['description'] = str_replace(array('https://skinali-printcolor.com/wp-content/uploads/20', 'http://localhost/skinali/image/uploads/20'), 'image/uploads/20', $info_info[$i]['description']);
			//$new_info[$i]['description'] = str_replace('http://localhost/skinali/', '', $info_info[$i]['description']);
			//$new_info[$i]['description'] = str_replace('http://wtesthost.kl.com.ua/', '', $info_info[$i]['description']);
			$new_info[$i]['description'] = str_replace('https://skinali-printcolor.com/', '', $info_info[$i]['description']);
			/*$_new_info_description_1 = str_replace('https://skinali-printcolor.com/wp-content/uploads/20', 'image/uploads/20', $info_info[$i]['description']);
			$_new_info_description_2 = str_replace('http://localhost/skinali/image/uploads/20', 'image/uploads/20', $_new_info_description_1);
			$new_info[$i]['description'] = str_replace('http://wtesthost.kl.com.ua/wp-content/uploads/20', 'image/uploads/20', $_new_info_description_2);*/
			$new_info[$i]['meta_title'] = $info_info[$i]['title'] . ' | кухонный фартук из стекла от PrintColor';
			$new_info[$i]['meta_description'] = 'Не знаете ' . $info_info[$i]['title'] . ' в Украине (Киев, Харьков, Днепр)? Производство закаленного стеклянного кухонного фартука от PrintColor';
			$new_info[$i]['meta_keyword'] = $info_info[$i]['title'] . ', скинали, купить, стеклянный фартук, кухонный фартук, заказ, украина';
			$change = $this->model_test_info->changeInfoTexts($new_info[$i]);
			if ($change == 1) $changed++;
		}
		
		/*$info_info = $this->model_test_info->getNewsTexts();
        $new_info = array();
		$changed = 0;
		for ($i = 0; $i < count($info_info); $i++) {
			$new_info[$i]['news_id'] = $info_info[$i]['news_id'];
			//$new_info[$i]['description'] = str_replace(array('https://skinali-printcolor.com/wp-content/uploads/20', 'http://localhost/skinali/image/uploads/20'), 'image/uploads/20', $info_info[$i]['description']);
			$_new_info_description_1 = str_replace('https://skinali-printcolor.com/wp-content/uploads/20', 'image/uploads/20', $info_info[$i]['description']);
			$_new_info_description_2 = str_replace('http://localhost/skinali/image/uploads/20', 'image/uploads/20', $_new_info_description_1);
			$_new_info_description_3 = str_replace('http://wtesthost.kl.com.ua/wp-content/uploads/20', 'image/uploads/20', $_new_info_description_2);
			$_new_info_description_4 = str_replace('http://wtesthost.kl.com.ua/', '', $_new_info_description_3);
			$_new_info_description_5 = str_replace('http://localhost/skinali/', '', $_new_info_description_4);
			$_new_info_description_6 = str_replace('<?=HTTPS_SERVER?>/', '', $_new_info_description_5);
			$new_info[$i]['description'] = str_replace('https://skinali-printcolor.com/', '', $_new_info_description_6);
			$change = $this->model_test_info->changeNewsTexts($new_info[$i]);
			if ($change == 1) $changed++;
		}*/
		//https://skinali-printcolor.com/wp-content/uploads/
		$data['new_info'] = $new_info;
		
		//http://wtesthost.kl.com.ua/wp-content/uploads/2015/07/skinali-iz-stekla-dlya-kuhni-kak-sozdat-06-300x125.jpg 300w, http://wtesthost.kl.com.ua/wp-content/uploads/2015/07/skinali-iz-stekla-dlya-kuhni-kak-sozdat-06-768x320.jpg 768w, http://wtesthost.kl.com.ua/wp-content/uploads/2015/07/skinali-iz-stekla-dlya-kuhni-kak-sozdat-06-1024x427.jpg 1024w, http://wtesthost.kl.com.ua/wp-content/uploads/2015/07/skinali-iz-stekla-dlya-kuhni-kak-sozdat-06.jpg 1280w
		
		echo $changed;
		
		/*foreach ($image_paths as $image_path) {
			if (strpos($image_path['image'], "image/") === 0) {
				//echo "Jest image";
				$new_image_path = str_replace("image/", "", $image_path['image']);
				$change_path = $this->model_test_info->changeAddImages($image_path['product_image_id'], $new_image_path);
			}
			//else echo "Nie ma image";
		}*/
		
		$this->response->setOutput($this->load->view('services/info', $data));
	}
}
