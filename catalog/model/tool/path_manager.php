<?php
class ModelToolPathManager extends Model {
 
	public function getFullProductPath($product_id, $breadcrumbs_mode = false) {
		$path_mode = 'full_product_path_mode';

		if($breadcrumbs_mode) {
			$path_mode = 'full_product_path_bc_mode';
		}
		
		if (!$this->config->get($path_mode)) {
			return array();
    }
    
		if ($this->config->get($path_mode) == '3') {
			$man_id = $this->db->query("SELECT manufacturer_id FROM " . DB_PREFIX . "product WHERE product_id = '" . (int)$product_id . "'")->row;
			
			if (!empty($man_id['manufacturer_id'])) {
				return array('manufacturer_id' => $man_id['manufacturer_id']);
			}
      
      return array();
		}
		
		$path = array();
		$categories = $this->db->query("SELECT c.category_id, c.parent_id FROM " . DB_PREFIX . "product_to_category p2c LEFT JOIN " . DB_PREFIX . "category c ON (p2c.category_id = c.category_id) WHERE product_id = '" . (int)$product_id . "'")->rows;
		
		foreach($categories as $key => $category) {
			$path[$key] = '';
			if (!$category) continue;
			$path[$key] = $category['category_id'];
			
			while ($category['parent_id']){
				$path[$key] = $category['parent_id'] . '_' . $path[$key];
				$category = $this->db->query("SELECT category_id, parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . $category['parent_id']. "'")->row;
			}
			
			$path[$key] = $path[$key];
			$banned_cats = $this->config->get('full_product_path_categories');
			
			if (count($banned_cats) && (count($categories) > 1))
			{
				//if (preg_match('#[_=](\d+)&$#', $path[$key], $cat))
				if (preg_match('#[_=](\d+)$#', $path[$key], $cat))
				{
					if (in_array($cat[1], $banned_cats))
						unset($path[$key]);
				}
			}
		}
		
		if (!count($path)) return array();

		// wich one is the largest ?
		$whichone = array_map('strlen', $path);
		asort($whichone);
		$whichone = array_keys($whichone);
		
		if ($this->config->get($path_mode) == '2') {
			$whichone = array_pop($whichone);
    } else {
      $whichone = array_shift($whichone);
    }
		
		$path = $path[$whichone];
		
		if ((int) $this->config->get('full_product_path_depth')) {
			$path_parts  = explode('_', $path);
			while (count($path_parts) > (int) $this->config->get('full_product_path_depth')) {
				array_pop($path_parts);
			}
			$path = implode('_', $path_parts);
		}
		
		return array('path' => $path);
	}

  public function getFullCategoryPath($category_id) {
    $path = '';
    $category = $this->db->query("SELECT category_id, parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . (int)$category_id . "'")->row;
    
    if (!$category) {
      return '';
    }
    
    $path = $category['category_id'];
    
    while ($category['parent_id']) {
      $path = $category['parent_id'] . '_' . $path;
      $category = $this->db->query("SELECT category_id, parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . $category['parent_id']. "'")->row;
    }
    
    return $path;
  }

  public function getManufacturerKeyword() {
    if ($this->config->get('mlseo_ml_mode')) {
      $ml_mode = "AND (`language_id` = '" . (int)$this->config->get('config_language_id') . "' OR `language_id` = 0)";
    } else {
      $ml_mode = '';
    }
    
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = 'route=product/manufacturer'". $ml_mode ." LIMIT 1")->row;
    
    if (!empty($query['keyword'])) {
      return '/' . $query['keyword'];
    }
    
    return '';
  }
}