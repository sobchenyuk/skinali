<?php

class ControllerCatalogMainCategory extends Controller {

    public function index(){

        $this->document->setTitle('Основные категории');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], true),
            'separator' => false
        );

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/extension', 'token=' . $this->session->data['token'], true),
            'separator' => ' :: '
        );

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('extension/module/opencart_gallery_album', 'token=' . $this->session->data['token'], true),
            'separator' => ' :: '
        );
    }

}