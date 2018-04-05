<?php
class ControllerCommonHeader extends Controller {


    public function getImg(){

        return $query = $this->db->query("SELECT * FROM `po_opencart_gallery_image` WHERE 1 ORDER BY `po_opencart_gallery_image`.`sort_order` ASC");

    }


    public function getMenu($setting){

        $this->load->language('module/smenu');

        $this->load->model('catalog/smenu');




        $data['smenus'] = array();

        $root_items = $this->model_catalog_smenu->getSmenu($setting);

        $routs=array(0 =>"/",1=>"information/contact", 2=>"account/return/add", 3=>"information/sitemap", 4=>"product/manufacturer", 5=>"account/voucher", 6=>"affiliate/account", 7=>"product/special", 8=>"account/account", 9=>"account/order", 10=>"account/wishlist", 11=>"account/newsletter", 12=>"account/newsletter");
        $path=array(1=>'information/information', 2=>'product/category', 3 =>'catalog/product', 4=>'information/sigallery',0=>'');
        $path_url=array(1=>'information_id', 2=>'path', 3=>'path', 4=>'path_gallery',0=>'');


        foreach ($root_items as $items) {
            $children_data=false;
            $childs = $this->model_catalog_smenu->getSmenu($items['smenu_id'], $items['smenu_item_id']);
            $active = 0;


            if ($items['type']==5) {
                $url=$items['type_name'];
            }
            elseif (($items['type']==6) AND ($items['type_id']!=0)) {
                $url=$this->url->link($routs[(int)$items['type_id']],"", true);
                if (isset($this->request->get['route']))
                {
                    $active = ($this->request->get['route'] == $routs[(int)$items['type_id']])?'active':'';
                }
            }
            elseif (($items['type']==6) AND ($items['type_id']==0)) {
                $url="/";
                $active = (!$this->request->get)?1:0;
            }
            else {
                $url=$this->url->link($path[(int)$items['type']], "&".$path_url[(int)$items['type']]."=".$items['type_id'], true);
                if ((isset($this->request->get['route']))AND($this->request->get['route']==$path[(int)$items['type']]) AND (isset($this->request->get[$path_url[(int)$items['type']]])) AND ($this->request->get[$path_url[(int)$items['type']]]==(int)$items['type_id']))
                    $active = 1;
            }

            if ($setting == 1) {

                foreach ($childs as $child) {


                    if ($child['type'] == 5) {
                        $href = $child['type_name'];

                    }
                    if ($child['type']==6) {
                       $url=$this->url->link($routs[(int)$child['type']],"", true);
                    }

                    $children_data[] = array(
                        'item_id'  => $child['smenu_item_id'],
                        'href'     => $href,
                        'name'     => $child['smenu_text'],
                        'title'    => $child['smenu_title']
                    );
                }
            }

            $data['items'][] = array(
                'item_id'        => $items['smenu_item_id'],
                'name'           => $items['smenu_text'],
                'title'          => $items['smenu_title'],
                'href'           => $url,
                'active'         => $active,
                'children'       => $children_data
            );
        }

        if($setting !== 1){
            return $this->load->view('extension/module/smenu', $data);
        } else {
            return $this->load->view('extension/module/smenu_nested', $data);
        }


    }


	public function index() {
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

        $data['picture_gallery'] = $this->getImg();

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');
		$data['og_url'] = (isset($this->request->server['HTTPS']) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
		$data['og_image'] = $this->document->getOgImage();

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_page'] = $this->language->get('text_page');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');

        $data['telephone1'] = $this->config->get('config_telephone1');
        $data['telephone2'] = $this->config->get('config_telephone2');


        $data['smenu_header'] = $this->getMenu(1);

        $data['smenu_slider'] = $this->getMenu(3);

//        $smenu = [];
//
//        $str = (string)$_SERVER['REQUEST_URI'];
//
//        echo (preg_match("/' . $str . '/",  $smenu['href'])) ? 'current-menu-item' : '';


        // Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');


        $data['content_top'] = $this->load->controller('common/content_top');


		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} elseif (isset($this->request->get['information_id'])) {
				$class = '-' . $this->request->get['information_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		return $this->load->view('common/header', $data);
	}
}
