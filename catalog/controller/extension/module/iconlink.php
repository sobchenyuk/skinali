<?php
class ControllerExtensionModuleIconlink extends Controller {
    public function index() {
        $this->load->model('extension/module');
        $this->load->language('extension/module/iconlink');
        $iconlink = array();
        $iconlink = $this->model_extension_module->getModule(33);

        $data['iconlink'] = $iconlink;

        return $this->load->view('extension/module/iconlink', $data);
    }
}
?>