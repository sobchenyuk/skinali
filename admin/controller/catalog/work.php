<?php
class ControllerWork extends Controller {

    public function index() {

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $data['action'] = $this->url->link('information/work', '', true);

        $this->response->setOutput($this->load->view('information/work', $data));
    }

}