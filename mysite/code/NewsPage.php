<?php

class NewsPage extends Page {
	
	
	public static $defaults = array(
							 

	
	);
	
	public static $db = array(
	
	"ExternalLink" => "Text",
	"NewsDate" => "Text",
	"NewsLocation" => "Text",
	'NewsType' => 'Text',
	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",
	
	);
	
	public static $has_one = array(
	
	"NewsImage" => "Image",
	
	);
	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('NewsDate', 'Enter News/Events Date and Time Here'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('NewsLocation', 'Optional Location in this field'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('NewsImage', 'News/Events Image MUST be 484x486 pixels'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('ExternalLink', 'External Link that links the user to another site instead of an interior page - Enter Full URL that you want to link to'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeCaption', 'Enter caption here'));


	
	
	
	
	
    return $fields;
	
   }	
	
}

class NewsPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>