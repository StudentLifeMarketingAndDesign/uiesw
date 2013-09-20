<?php
/**
 * Defines the HomePage page type
 */
 
class JoinPage extends Page {
 	private static $db = array(


); 
	private static $has_one = array(
   

 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   

   return $fields;
}
}
 
class JoinPage_Controller extends Page_Controller {
	
}
?>