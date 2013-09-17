<?php

class NewsHolder extends Page {
	
	public static $db = array(
	
	);
	
	public static $has_one = array(
								   
	'ContentImage' => 'Image'
								   
	);

static $allowed_children = array('NewsPage', 'NewsArchive');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Event Image 469x331 pixels'));

	
    return $fields;
	
   }	
	
}

class NewsHolder_Controller extends Page_Controller {
	
		public function init() {
			parent::init();
			RSSFeed::linkToFeed($this->Link() . "rss", "RSS feed");
	}
	
	
		function rss() {
			$set = DataObject::get("NewsPage");
			
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