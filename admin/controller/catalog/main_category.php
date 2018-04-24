<?php

class ControllerCatalogMainCategory extends Controller {

    private $error = array();
    private $category_id = 0;
    private $path = array();

    public function index(){

        $this->load->language('catalog/category');

        $this->document->setTitle('Основные категории');

        $this->load->model('catalog/category');

        $this->getList();
    }

    private function getCategories($parent_id, $parent_path = '', $indent = '') {
        $category_id = array_shift($this->path);

        $output = array();

        static $href_category = null;
        static $href_action = null;

        if ($href_category === null) {
            $href_category = $this->url->link('catalog/category', 'token=' . $this->session->data['token'] . '&path=', 'SSL');
            $href_action = $this->url->link('catalog/category/update', 'token=' . $this->session->data['token'] . '&category_id=', 'SSL');
        }

        $url = '';

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }

        $results = $this->model_catalog_category->getCategoriesByParentId($parent_id);

        foreach ($results as $result) {
            $path = $parent_path . $result['category_id'];

            $href = ($result['children']) ? $href_category . $path : '';

            $name = $result['name'];

            if ($category_id == $result['category_id']) {
                $name = '<b>' . $name . '</b>';

                $data['breadcrumbs'][] = array(
                    'text'      => $result['name'],
                    'href'      => $href,
                    'separator' => ' :: '
                );

                $href = '';
            }

            $selected = isset($this->request->post['selected']) && in_array($result['category_id'], $this->request->post['selected']);

            $action = array();

            $action[] = array(
                'text' => $this->language->get('text_edit'),
                'href' => $href_action . $result['category_id']
            );

            $output[$result['category_id']] = array(
                'category_id' => $result['category_id'],
                'name'        => $name,
                'sort_order'  => $result['sort_order'],
                'selected'    => $selected,
                'action'      => $action,
                'edit'        => $this->url->link('catalog/category/edit', 'token=' . $this->session->data['token'] . '&category_id=' . $result['category_id'] . $url, 'SSL'),
                'delete'      => $this->url->link('catalog/category/delete', 'token=' . $this->session->data['token'] . '&category_id=' . $result['category_id'] . $url, 'SSL'),
                'href'        => $href,
                'indent'      => $indent
            );

            if ($category_id == $result['category_id']) {
                $output += $this->getCategories($result['category_id'], $path . '_', $indent . str_repeat('&nbsp;', 8));
            }
        }

        return $output;
    }

    protected function getList() {
        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'name';
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

        $url = '';

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('catalog/category', 'token=' . $this->session->data['token'] . $url, true)
        );

        $data['add'] = $this->url->link('catalog/category/add', 'token=' . $this->session->data['token'] . $url, true);
        $data['delete'] = $this->url->link('catalog/category/delete', 'token=' . $this->session->data['token'] . $url, true);
        $data['repair'] = $this->url->link('catalog/category/repair', 'token=' . $this->session->data['token'] . $url, true);

        $data['categories'] = array();

        if (isset($this->request->get['path'])) {
            if ($this->request->get['path'] != '') {
                $this->path = explode('_', $this->request->get['path']);
                $this->category_id = end($this->path);
                $this->session->data['path'] = $this->request->get['path'];
            } else {
                unset($this->session->data['path']);
            }
        } elseif (isset($this->session->data['path'])) {
            $this->path = explode('_', $this->session->data['path']);
            $this->category_id = end($this->path);
        }

        $data['categories'] = $this->getCategories(0);

        $category_total = count($data['categories']);

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_list'] = $this->language->get('text_list');
        $data['text_no_results'] = $this->language->get('text_no_results');
        $data['text_confirm'] = $this->language->get('text_confirm');

        $data['column_name'] = $this->language->get('column_name');
        $data['column_sort_order'] = $this->language->get('column_sort_order');
        $data['column_action'] = $this->language->get('column_action');

        $data['button_add'] = $this->language->get('button_add');
        $data['button_edit'] = $this->language->get('button_edit');
        $data['button_delete'] = $this->language->get('button_delete');
        $data['button_rebuild'] = $this->language->get('button_rebuild');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->session->data['success'])) {
            $data['success'] = $this->session->data['success'];

            unset($this->session->data['success']);
        } else {
            $data['success'] = '';
        }

        if (isset($this->request->post['selected'])) {
            $data['selected'] = (array)$this->request->post['selected'];
        } else {
            $data['selected'] = array();
        }

        $url = '';

        if ($order == 'ASC') {
            $url .= '&order=DESC';
        } else {
            $url .= '&order=ASC';
        }

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }

        $data['sort_name'] = $this->url->link('catalog/category', 'token=' . $this->session->data['token'] . '&sort=name' . $url, true);
        $data['sort_sort_order'] = $this->url->link('catalog/category', 'token=' . $this->session->data['token'] . '&sort=sort_order' . $url, true);

        $url = '';

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        if (isset($this->request->get['path'])) {
            $url .= '&path=' . $this->request->get['path'];
        }

        $pagination = new Pagination();
        $pagination->total = $category_total;
        $pagination->page = $page;
        $pagination->limit = $this->config->get('config_limit_admin');
        $pagination->url = $this->url->link('catalog/category', 'token=' . $this->session->data['token'] . $url . '&page={page}', true);

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($category_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($category_total - $this->config->get('config_limit_admin'))) ? $category_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $category_total, ceil($category_total / $this->config->get('config_limit_admin')));

        $data['sort'] = $sort;
        $data['order'] = $order;

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('catalog/category_list', $data));
    }

}