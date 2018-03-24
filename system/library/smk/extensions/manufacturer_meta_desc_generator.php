<?php

/**
 * SEO Mega Pack
 * 
 * @author marsilea15 <marsilea15@gmail.com>
 */

require_once VQMod::modCheck( DIR_SYSTEM . 'library/smk/extensions/abstract_manufacturer_generator.php' );

class SeoMegaPack_ManufacturerMetaDescGenerator extends SeoMegaPack_AbstractManufacturerGenerator {
	
	/**
	 * @var array 
	 */
	protected $_tags			= array(
		'{name}'			=> 'name',
		'{description}'		=> 'description',
		'{sample_products}'	=> 'sample_products',
		'{total_products}'	=> 'total_products',
		'{site_name}'		=> 'site_name',
		'{site_title}'		=> 'site_title'
	);
	
	/**
	 * @var string
	 */
	protected $_name		= 'manufacturer_meta_desc_generator';
	protected $_shortName	= 'mmdg';
	
	/**
	 * @var string
	 */
	protected $_title		= 'Meta Description Generator';
	
	/**
	 * @var int
	 */
	protected $_sort		= 3.4;
	
	/**
	 * @var type 
	 */
	protected $_fieldName	= 'meta_description';
	
	/**
	 * @var string 
	 */
	protected $_icon		= 'list-alt';
	
	/**
	 * @var string 
	 */
	protected $_version		= '2';
	
	/**
	 * @return void
	 */
	public function install() {
		parent::install();
		
		$this->addColumn( 'meta_description', 'VARCHAR(255) NULL DEFAULT NULL' );
		$this->addColumn( 'meta_description_ag', "ENUM('0','1') NOT NULL DEFAULT '0'" );
	}
	
	/**
	 * @return void
	 */
	public function uninstall() {
		//$this->removeColumn( 'meta_description_ag' );
		
		parent::uninstall();
	}
	
	/**
	 * @return string
	 */
	public function getParams( $language_id = null ) {
		$params = parent::getParams();
		
		if( $language_id !== null && is_array( $params ) ) {
			$params = isset( $params[$language_id] ) ? $params[$language_id] : null;
		}
		
		if( $params === NULL )
			$params = '{name} - {description#sentences#1}';
		
		return $params;
	}
}