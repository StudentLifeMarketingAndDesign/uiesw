<?php
/**
 * Defines the HomePage page type
 */
 
class HomePage extends Page {
	private static $db = array(

  
);
	private static $has_one = array(
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Main","Content");
   


    	

   return $fields;
}
}
 
class HomePage_Controller extends Page_Controller {
	
			public function init() {
			parent::init();
			RSSFeed::linkToFeed($this->Link() . "rss", "RSS feed");
	}
	
	
		function rss() {
			//$set = DataObject::get("NewsPage");
			$set = NewsPage::get(); 
			$rss = new RSSFeed($set, $this->Link(), "News Feed", "Shows a list of the most recently updated news and events.", "Title", "Content", "Author");
			$rss->outputToBrowser();
	}	
	
}
?>