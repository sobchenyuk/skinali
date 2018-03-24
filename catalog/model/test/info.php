<?php
class ModelTestInfo extends Model {
	/*public function getInformation($information_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "information i LEFT JOIN " . DB_PREFIX . "information_description id ON (i.information_id = id.information_id) LEFT JOIN " . DB_PREFIX . "information_to_store i2s ON (i.information_id = i2s.information_id) WHERE i.information_id = '" . (int)$information_id . "' AND id.language_id = '" . (int)$this->config->get('config_language_id') . "' AND i2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND i.status = '1'");

		return $query->row;
	}

	public function getInformations() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "information i LEFT JOIN " . DB_PREFIX . "information_description id ON (i.information_id = id.information_id) LEFT JOIN " . DB_PREFIX . "information_to_store i2s ON (i.information_id = i2s.information_id) WHERE id.language_id = '" . (int)$this->config->get('config_language_id') . "' AND i2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND i.status = '1' ORDER BY i.sort_order, LCASE(id.title) ASC");

		return $query->rows;
	}

	public function getInformationLayoutId($information_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "information_to_layout WHERE information_id = '" . (int)$information_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}*/
	
	public function getInfoIds() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "information");
		$info_ids = $query->rows;
		return $info_ids;
	}
	
	public function addIds() {
		for ($i = 9; $i <= 87; $i++) {
			$information_id = $i;
			$bottom = 1;
			$sort_order = $i - 2;
			$status = 1;
			$query = $this->db->query("INSERT INTO " . DB_PREFIX . "information (`information_id`, `bottom`, `sort_order`, `status`) VALUES ('$information_id', '$bottom', '$sort_order', '$status')");
		}
	}
	
	public function addToStore() {
		for ($i = 9; $i <= 87; $i++) {
			$information_id = $i;
			$store_id = 0;
			$query = $this->db->query("INSERT INTO " . DB_PREFIX . "information_to_store (`information_id`, `store_id`) VALUES ('$information_id', '$store_id')");
		}
	}
	
	
	
	public function addInfo() {
		include "info_array.php";
		//for ($i = 0; $i < count($info_array); $i++) {
		foreach ($info_array as $info_array_one) {
			$information_id = $info_array_one['information_id'];
			$title = $info_array_one['title'];
			if (isset($info_array_one['description'])) $description = trim($info_array_one['description']);
			else $description = '';
			$query = $this->db->query("UPDATE " . DB_PREFIX . "information_description SET `description` = '$description' WHERE `information_id` = '$information_id'");
			//$query = $this->db->query("INSERT INTO " . DB_PREFIX . "information_description (`information_id`, `language_id`, `title`, `description`) VALUES ('$information_id', 2, '$title', '$description')");
		}
	}
	
	public function addSeoLinks() {
		include "seo_links_array.php";
		foreach ($seo_links_array as $seo_link_one) {
			$information_id = $seo_link_one['information_id'];
			$keyword = $seo_link_one['keyword'];
			$query = "information_id=".$information_id;
			$query_to_db = $this->db->query("UPDATE " . DB_PREFIX . "url_alias SET `keyword` = '$keyword' WHERE `query` = '$query'");
			//$query_to_db = $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias (`query`, `keyword`) VALUES ('$query', '$keyword')");
		}
	}
	
	public function addCats() {
		include "cats_array.php";
		foreach ($cats_array as $one_product) {
			$product_id = (int)$one_product['product_id'];
			$category_id = (int)$one_product['category_id'];
			$main_category = (int)$one_product['main_category'];
			$query = $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category (`product_id`, `category_id`, `main_category`) VALUES ('$product_id', '$category_id', '$main_category')");
			
		}
	}
	
	public function getImagePaths() {
		$select = $this->db->query("SELECT * FROM " . DB_PREFIX . "product");
		return $select->rows;
	}
	
	public function changeImagePath($product_id, $new_image_path) {
		$change = $this->db->query("UPDATE " . DB_PREFIX . "product SET `image` = '$new_image_path' WHERE `product_id` = '$product_id'");
	}
	
	public function getAddImages() {
		$select = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_image");
		return $select->rows;
	}
	
	public function changeAddImages($product_image_id, $new_image_path) {
		$change = $this->db->query("UPDATE " . DB_PREFIX . "product_image SET `image` = '$new_image_path' WHERE `product_image_id` = '$product_image_id'");
	}
	
	public function getInfoTexts() {
		$select = $this->db->query("SELECT * FROM " . DB_PREFIX . "information_description");
		return $select->rows;
	}
	
	public function changeInfoTexts($new_info) {
		$change = $this->db->query("UPDATE " . DB_PREFIX . "information_description SET `description` = '" . $new_info['description'] . "', `meta_title` = '" . $new_info['meta_title'] . "', `meta_description`='" . $new_info['meta_description'] . "', `meta_keyword` = '" . $new_info['meta_keyword'] . "' WHERE `information_id` = '" . $new_info['information_id'] . "'");
		return $change;
	}
	
	public function getNewsTexts() {
		$select = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_description");
		return $select->rows;
	}
	
	public function changeNewsTexts($new_info) {
		$change = $this->db->query("UPDATE " . DB_PREFIX . "news_description SET `description` = '" . $new_info['description'] . "' WHERE `news_id` = '" . $new_info['news_id'] . "'");
		return $change;
	}
	
}