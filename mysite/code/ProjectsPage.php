<?php

class ProjectsPage extends Page {
	
	
	private static $defaults = array(
							 

	);
	
	private static $db = array(
	
	"ProjectsLeader" => "Text",
	"LeaderLink" => "Text",
	"ExternalLink" => "Text",
	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",
	
	
	);
	
	private static $has_one = array(
	
	"FeatureImage" => "Image",
	
	);
	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'What is it?'));
	$fields->addFieldToTab('Root.Main', new TextField('ProjectsLeader', 'Project Leader'));
	$fields->addFieldToTab('Root.Main', new TextField('LeaderLink', 'Project Leader Link'));
	$fields->addFieldToTab('Root.Images', new UploadField('FeatureImage', 'Project Image MUST be 484x486 pixels'));
	$fields->addFieldToTab('Root.Main', new TextField('ExternalLink', 'External Link that links the user to another site instead of an interior page - Enter Full URL that you want to link to'));
	$fields->addFieldToTab('Root.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Video', new TextField('YoutubeCaption', 'Enter caption here'));
		
    return $fields;
	
   }	
	
}

class ProjectsPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>