<?php
/*if(isset($_GET['do']) && $_GET['do']=='ajax') {
  if(isset($_POST['num'])) {
    if( (isset($_POST['id']) && is_numeric($_POST['id']))) {
      $id = $_POST['id'];
      $num = $_POST['num'];

      // echo 'num: ' . $num;

      if(!$_COOKIE["vote-post-".$id]) {
        wp__set_data('vote-total',$id,(int)wp__get_data('vote-total',$id) + 1);
        wp__set_data('vote-rating',$id,(int)wp__get_data('vote-rating',$id) + $num);
        // wp__set_data('vote-total',$id,(int)wp__get_data('vote-total',$id) + 1);
        // wp__set_data('vote-rating',$id, 600);


        $total = wp__get_data('vote-total',$id);
        $rating = wp__get_data('vote-rating',$id);

        // echo 'total: ' . $total . ' rating: ' . $rating;

        if($total==0) {$total = 1;}

        echo ($rating/($total*5))*100;
        // echo
      } else {
        echo 'limit';
      }

      die();
    }
  }
  die();
}*/

//function rating($total, $rating, $voted=true) {
function rating($total, $rating) {
	/*var_dump ($_COOKIE);
	if (isset($_COOKIE["vote-post-4131"])) echo "isset";
	else echo "not isset";*/
  //if($voted) {
    $disable_class = isset($_COOKIE["vote-post-5031"]) ? ' disabled' : '';
  //} else {
   // $disable_class = ' disabled';
  //}
  /*$total = //wp__get_data('vote-total',4131);
  $rating = //wp__get_data('vote-rating',4131);*/
  
  $total_text = sklonen($total, 'голос', 'голоса', 'голосов', true);
  $total_rec = $total;
  if($total==0) {$total = 1;}
  
  $pr = ($rating/($total*5))*100;



  $abs = round($rating/$total, 1);

  $ratingHTML = '<ol class="rating show-current"><li>5</li><li>4</li><li>3</li><li>2</li><li>1</li><li class="current"><span style="width:'.$pr.'%"></span></li></ol> <div class="rating-info"></div><span class="rating-text">('.$total_text.', в среднем: '.($abs).' из 5)</span>
 ';

  $richSnp = '<div itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"><meta itemprop="ratingValue" content="'.($abs).'"><meta itemprop="worstRating" content="1"/><meta itemprop="bestRating" content="5"><meta itemprop="ratingCount" content="'.$total.'"></div>';
    echo $total;
  echo '<div class="vote-block'.$disable_class.'" data-id="5031" data-total="'. $total_rec .'" data-rating="'. $rating .'">'.$richSnp.''.$ratingHTML.'</div>';
}

function sklonen($n,$s1,$s2,$s3, $b = false){
  $m = $n % 10; $j = $n % 100;
  if($m==0 || $m>=5 || ($j>=10 && $j<=20)) return $n.' '.$s3;
  if($m>=2 && $m<=4) return  $n.' '.$s2;
  return $n.' '.$s1;
}

/*
function wp__set_data($name, $postID, $value) {
    $count_key = $name;
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    }else{
        update_post_meta($postID, $count_key, $value);
    }
}*/
