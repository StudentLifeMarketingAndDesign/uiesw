<?php

class NewsArchive extends Page {
	
	private static $db = array(
	
	);
	
	private static $has_one = array(
								   
	'ContentImage' => 'Image'
								   
	);

static $allowed_children = array('NewsPage');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Images', new UploadField('ContentImage', 'Event Image 469x331 pixels'));

	
    return $fields;
	
   }	
	
}

class NewsArchive_Controller extends Page_Controller {
	
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
	
	
	
	function allNews() {
	if(!isset($_GET['start']) || !is_numeric($_GET['start']) || (int)$_GET['start'] < 1) $_GET['start'] = 0;
		$SQL_start = (int)$_GET['start'];
		$doSet = DataObject::get(
		$callerClass = "NewsPage",
		$filter = "ShowInMenus = '1' and ParentID = '2'",
		$sort = "sort",
		$join = "",
		$limit = "{$SQL_start},5"
  	);
		
 
  return $doSet ? $doSet : false;
}


	
	
	
	


}

?>