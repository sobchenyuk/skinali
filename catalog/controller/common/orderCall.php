<?php
class ControllerCommonOrderCall extends Controller {
    public function index() {
    }
    public function orderCallCustom (){

        $data['email1'] = $this->config->get('config_email1');

        if($this->request->post['phone'] == ""){
            echo 'failure';
        } else {
            echo 'success';

            $to      = $data['email1'];
            $enc_subject = 'Заказ звонка с сайта skinali-printcolor.com';

            $headers='';
            $headers.= "Mime-Version: 1.0\r\n";
            $headers.= 'Content-type: text/html; charset=utf-8' . "\r\n";
            $headers.= "From: ".$to."\r\n";

            $message = '
<html>
<head>
  <title>'. $enc_subject .'</title>
</head>
<body>
  <p>Форма заказа звонка</p>
  <table>
    <tr>
      <th>Номер телефона: </th>
    </tr>
    <tr>
      <td>'. $this->request->post['phone'] .'</td>
    </tr>
  </table>
</body>
</html>
';
            mail($to, $enc_subject, $message, $headers);
        }

    }
}