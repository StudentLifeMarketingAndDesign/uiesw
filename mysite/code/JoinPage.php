<?php
/**
 * Defines the HomePage page type
 */
 
class JoinPage extends Page {
 static $db = array(


);
   static $has_one = array(
   

 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   

   return $fields;
}
}
 
class JoinPage_Controller extends Page_Controller {
	
}
?>