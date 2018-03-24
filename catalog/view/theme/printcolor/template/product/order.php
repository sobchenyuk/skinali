<?php
	//require($_SERVER['DOCUMENT_ROOT'].'/wp-load.php');
	if (isset($_POST['order_btn'])) {
		$comment = htmlspecialchars($_POST['info']);
		$comment = trim($comment);
		$username = htmlspecialchars($_POST['username']);
		$phone = htmlspecialchars($_POST['phone']);
		$city = htmlspecialchars($_POST['city']);
		$email = $_POST['email'];
		
		$img_id = $_POST['img_id'];
		$img_title = $_POST['img_title'];
		$sk_link = $_POST['sk_link'];
		
		$mirror = $_POST['mirror'];
		$bw = $_POST['bw'];
		$sepia = $_POST['sepia'];
		
		$msg = "Новый заказ скинали\n";
		$msg .= "\n";
		$msg .= "Имя: " . $username . "\n";
		$msg .= "Телефон: " . $phone . "\n";
		$msg .= "Город: " . $city . "\n";
		$msg .= "E-mail: " . $email . "\n";
		$msg .= "\n";
		$msg .= "Изображение скинали:\n";
		$msg .= $img_title . "\n";
		if (is_numeric($img_id)) {
			$msg .= "№ " . $img_id . "\n";
			$msg .= "Ссылка на скинали: " . $sk_link . "\n";
		}
		else $msg .= $img_id . "\n";
		$msg .= "\n";
		$msg .= "Дополнительные опции:\n";
		if ($mirror == 'mirror_yes') $msg .= " - Отзеркалить\n";
		if ($bw == 'bw_yes') $msg .= " - Черно-белое\n";
		if ($sepia == 'sepia_yes') $msg .= " - Сепия\n";
		$msg .= "\n";
		if ($comment != '')	$msg .= "Комментарий заказчика: " . $comment . "\n";
		
		mail("nva1985@mail.ru", "Новый заказ скинали", $msg);
		
		echo $msg;
		
		/*if (mail("printcolor45@gmail.com", "Новый заказ скинали", $msg)) {
			$redirect_to = home_url() . '/spasibo-za-vash-zakaz';
			wp_redirect($redirect_to, $status);
			exit;
		}
		else {
			$redirect_to = home_url() . '/konstruktor-skinali';
			wp_redirect($redirect_to, $status);
			exit;
		}*/
		
		
	}
?>