<?php
class ControllerProductCategory extends Controller {
	public function index() {
		$this->load->language('product/category');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get($this->config->get('config_theme') . '_product_limit');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			//'text' => $this->language->get('text_home'),
			'text' => "Главная",
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					/*$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);*/
				}
			}
		} else {
			$category_id = 0;
		}

		$category_info = $this->model_catalog_category->getCategory($category_id);
		$data['category_info'] = $category_info; 
		if ($category_info) {

			if ($category_info['parent_id'] != 0) {
				$data['parent_cat_info'] = $this->model_catalog_category->getCategory($category_info['parent_id']);
				
				$par_cat = $this->model_catalog_category->getCategory($category_info['parent_id']);
				
				$data['par_cat'] = $par_cat;
				
				$par_subcats = $this->model_catalog_category->getCategories($category_info['parent_id']);

				foreach ($par_subcats as $par_subcat) {
					$filter_data = array(
						'filter_category_id'  => $par_subcat['category_id'],
						'filter_sub_category' => true
					);

					$data['par_subcats'][] = array(
						'category_id' => $par_subcat['category_id'],
						'name' => $par_subcat['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $par_subcat['category_id'] . $url)
					);
				}
				
				$data['breadcrumbs'][] = array(
					'text' => $par_cat['name'],
					'href' => $this->url->link('product/category', 'path=' . $category_info['parent_id'] . $url)
				);
				
				$data['category_type'] = 'subcategory';
			}
			else $data['category_type'] = 'parcategory';
		
			/*if ($category_info['meta_title']) {

				if( version_compare( VERSION, '2.2.0.0', '>=' ) ) {
					$config_image_popup_width = $this->config->get($this->config->get('config_theme') . '_image_category_width');
					$config_image_popup_height = $this->config->get($this->config->get('config_theme') . '_image_category_height');
				} else {
					$config_image_popup_width = $this->config->get('config_image_category_width');
					$config_image_popup_height = $this->config->get('config_image_category_height');
				}
				
				if( NULL != ( $tmp = (array) $this->config->get( 'smp_facebook_open_graph' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ) {
					$this->load->model('tool/image');
				
					$this->document
						->addMeta( 'og:type', 'og:website', 'property' )
						->addMeta( 'og:title', $category_info['name'], 'property' )
						->addMeta( 'og:url', $this->url->link('product/category', 'path=' . $this->request->get['path']), 'property' )
						->addMeta( 'og:image', $this->model_tool_image->resize($category_info['image'], $config_image_popup_width, $config_image_popup_height), 'property' )
						->addMeta( 'og:description', $category_info['meta_description'], 'property' );
				}
				
				if( NULL != ( $tmp = (array) $this->config->get( 'smp_twitter_cart' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ) {
					$this->load->model('tool/image');
				
					$this->document
						->addMeta( 'twitter:card', 'category' )
						->addMeta( 'twitter:title', $category_info['name'] )
						->addMeta( 'twitter:url', $this->url->link('product/category', 'path=' . $this->request->get['path']) )
						->addMeta( 'twitter:image:src', $this->model_tool_image->resize($category_info['image'], $config_image_popup_width, $config_image_popup_height) )
						->addMeta( 'twitter:image:width', $this->config->get('config_image_category_width') )
						->addMeta( 'twitter:image:height', $this->config->get('config_image_category_height') )
						->addMeta( 'twitter:description', $category_info['meta_description'] )
						->addMeta( 'twitter:site', NULL != ( $tmp = (array) $this->config->get( 'smp_twitter_site' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ? $tmp[$this->config->get('config_store_id')] : '' )
						->addMeta( 'twitter:creator', NULL != ( $tmp = (array) $this->config->get( 'smp_twitter_creator' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ? $tmp[$this->config->get('config_store_id')] : '' );
				}
				
				if( NULL != ( $tmp = (array) $this->config->get( 'smp_googleplus_metadata' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ) {		
					$this->load->model('tool/image');
					
					$this->document
						->addMeta( 'name', $category_info['name'], 'itemprop' ) 
						->addMeta( 'description', $category_info['meta_description'], 'itemprop' ) 
						->addMeta( 'image', $this->model_tool_image->resize($category_info['image'], $config_image_popup_width, $config_image_popup_height), 'itemprop' );
				}
			
				$this->document->setTitle($category_info['meta_title']);
			
				$data['tags'] = array();

				if( ! empty( $category_info['tag'] ) ) {		
					$tags = explode( ',', $category_info['tag'] );

					foreach( $tags as $tag ) {
						$data['tags'][] = array(
							'tag'  => trim( $tag ),
							'href' => $this->url->link( 'product/search', 'tag=' . trim( $tag ) )
						);
					}
				}
			
			} else {
				$this->document->setTitle($category_info['name']);
			}*/
			if ($category_info['meta_title']) {

				if( version_compare( VERSION, '2.2.0.0', '>=' ) ) {
					$config_image_popup_width = $this->config->get($this->config->get('config_theme') . '_image_category_width');
					$config_image_popup_height = $this->config->get($this->config->get('config_theme') . '_image_category_height');
				} else {
					$config_image_popup_width = $this->config->get('config_image_category_width');
					$config_image_popup_height = $this->config->get('config_image_category_height');
				}
				
				if( NULL != ( $tmp = (array) $this->config->get( 'smp_facebook_open_graph' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ) {
					$this->load->model('tool/image');
				
					$this->document
						->addMeta( 'og:type', 'og:website', 'property' )
						->addMeta( 'og:title', $category_info['name'], 'property' )
						->addMeta( 'og:url', $this->url->link('product/category', 'path=' . $this->request->get['path']), 'property' )
						->addMeta( 'og:image', $this->model_tool_image->resize($category_info['image'], $config_image_popup_width, $config_image_popup_height), 'property' )
						->addMeta( 'og:description', $category_info['meta_description'], 'property' );
				}
				
				if( NULL != ( $tmp = (array) $this->config->get( 'smp_twitter_cart' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ) {
					$this->load->model('tool/image');
				
					$this->document
						->addMeta( 'twitter:card', 'category' )
						->addMeta( 'twitter:title', $category_info['name'] )
						->addMeta( 'twitter:url', $this->url->link('product/category', 'path=' . $this->request->get['path']) )
						->addMeta( 'twitter:image:src', $this->model_tool_image->resize($category_info['image'], $config_image_popup_width, $config_image_popup_height) )
						->addMeta( 'twitter:image:width', $this->config->get('config_image_category_width') )
						->addMeta( 'twitter:image:height', $this->config->get('config_image_category_height') )
						->addMeta( 'twitter:description', $category_info['meta_description'] )
						->addMeta( 'twitter:site', NULL != ( $tmp = (array) $this->config->get( 'smp_twitter_site' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ? $tmp[$this->config->get('config_store_id')] : '' )
						->addMeta( 'twitter:creator', NULL != ( $tmp = (array) $this->config->get( 'smp_twitter_creator' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ? $tmp[$this->config->get('config_store_id')] : '' );
				}
				
				if( NULL != ( $tmp = (array) $this->config->get( 'smp_googleplus_metadata' ) ) && ! empty( $tmp[$this->config->get('config_store_id')] ) ) {		
					$this->load->model('tool/image');
					
					$this->document
						->addMeta( 'name', $category_info['name'], 'itemprop' ) 
						->addMeta( 'description', $category_info['meta_description'], 'itemprop' ) 
						->addMeta( 'image', $this->model_tool_image->resize($category_info['image'], $config_image_popup_width, $config_image_popup_height), 'itemprop' );
				}
			
				$this->document->setTitle($category_info['meta_title']);
			
				$data['tags'] = array();

				if( ! empty( $category_info['tag'] ) ) {		
					$tags = explode( ',', $category_info['tag'] );

					foreach( $tags as $tag ) {
						$data['tags'][] = array(
							'tag'  => trim( $tag ),
							'href' => $this->url->link( 'product/search', 'tag=' . trim( $tag ) )
						);
					}
				}
			
			}
			else {
				$this->document->setTitle("Купить скинали из рубрики: " . $category_info['name'] . " | PrintColor");
			}
			if ($category_info['meta_description']) {
				$this->document->setDescription($category_info['meta_description']);
			}
			else {
				$this->document->setDescription("Нужно " . $category_info['name'] . " в Украине (Киев, Харьков, Днепр)? Производство закаленного стеклянного кухонного фартука");
			}
			if ($category_info['meta_keyword']) {
				$this->document->setKeywords($category_info['meta_keyword']);
			}
			else {
				$this->document->setKeywords($category_info['name'] . ", скинали, купить, стеклянный фартук, , кухонный фартук, заказ, украина");
			}

			if ($category_info['meta_h1']) {
				$data['heading_title'] = $category_info['meta_h1'];
			} else {
				$data['heading_title'] = empty($category_info['smp_h1_title'])?$category_info['name']:$category_info['smp_h1_title'];
			}

			$data['text_refine'] = $this->language->get('text_refine');
			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			// Set the last category breadcrumb
			/*$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
			);*/

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get($this->config->get('config_theme') . '_image_category_width'), $this->config->get($this->config->get('config_theme') . '_image_category_height'));
				$this->document->setOgImage($data['thumb']);
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$data['compare'] = $this->url->link('product/compare');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

			$results = $this->model_catalog_category->getCategories($category_id);

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);

				$data['categories'][] = array(
					'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
				);
			}

			$data['products'] = array();

			$filter_data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * 12,
				'limit'              => 12
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);
			$data['product_images'] = array();
			foreach ($results as $result) {
				if ($result['image']) {
					//$image = $this->model_tool_image->resize($result['image'].(isset($result['product_id'])?'::'.$result['product_id']:''), $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
					$image = $result['image'];
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				$product_images = $this->model_catalog_product->getProductImages($result['product_id']);
				$product_previews = $this->model_catalog_product->getProductPreviews($result['product_id']);
				$data['products'][] = array(
					'product_id'  => $result['product_id'],

				'smp_alt_images' => empty( $result['smp_alt_images'] ) ? '' : $result['smp_alt_images'],
				'smp_title_images' => empty( $result['smp_title_images'] ) ? '' : $result['smp_title_images'],
			
					'sku'		  => $result['sku'],
					'thumb'       => $product_previews['image'],
 					'image'       => $product_images[0]['image'],
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => ($result['minimum'] > 0) ? $result['minimum'] : 1,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get($this->config->get('config_theme') . '_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
			require_once "mypagination.php";
			//$pagination = new Pagination();
			$pagination = new MyPagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = 12;
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], true), 'canonical');
			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], true), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), true), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), true), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('product/category', $data));
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			/*$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/category', $url)
			);*/

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

				if( class_exists( 'ControllerCommonSeoMegaPackProUrl' ) ) {
					ControllerCommonSeoMegaPackProUrl::notFound( $this );
				}
			

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}
