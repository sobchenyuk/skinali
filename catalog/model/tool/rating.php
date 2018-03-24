<?php
class ModelToolRating extends Model {
	
	public function getRating() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "rating LIMIT 1");
		return $query->row;
	}
	
	public function setRating($new_total, $new_rating) {
		$update = $this->db->query("UPDATE " . DB_PREFIX . "rating SET `vote-total`='$new_total', `vote-rating`='$new_rating' WHERE `vote_id`=4131");
		return $update;
	}
	
}
?>