<?php

class ProjectsHolder extends Page {
	
	private static $db = array(
	
	);
	
	private static $has_one = array(
								   
	'ContentImage' => 'Image'
								   
	);

static $allowed_children = array('ProjectsPage');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Images', new UploadField('ContentImage', 'Event Image 469x331 pixels'));

	
    return $fields;
	
   }	
	
}

class ProjectsHolder_Controller extends Page_Controller {
	
		public function init() {
			parent::init();
			RSSFeed::linkToFeed($this->Link() . "rss", "RSS feed");
	}
	
	
		function rss() {
			//$set = DataObject::get("ProjectsPage");
			$set = ProjectsPage::get(); 
			$rss = new RSSFeed($set, $this->Link(), "Projects Feed", "Shows a list of the most recently updated news and events.", "Title", "Content", "Author");
			$rss->outputToBrowser();
	}	
	

}

?>