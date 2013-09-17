<?php

class ProjectsPage extends Page {
	
	
	public static $defaults = array(
							 

	);
	
	public static $db = array(
	
	"ProjectsLeader" => "Text",
	"LeaderLink" => "Text",
	"ExternalLink" => "Text",
	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",
	
	
	);
	
	public static $has_one = array(
	
	"FeatureImage" => "Image",
	
	);
	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content', 'What is it?'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('ProjectsLeader', 'Project Leader'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('LeaderLink', 'Project Leader Link'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('FeatureImage', 'Project Image MUST be 484x486 pixels'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('ExternalLink', 'External Link that links the user to another site instead of an interior page - Enter Full URL that you want to link to'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeCaption', 'Enter caption here'));
		
    return $fields;
	
   }	
	
}

class ProjectsPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>