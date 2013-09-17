<?php
/**
 * Defines the Minisite page type
 */
class HomePageTab extends SiteTree {

	static $defaults = array( 
	
	);
	
	

   static $db = array(

	"ExternalLink" => "Text",
	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",

   );
   
   
   
   static $has_one = array(
   	'FeatureImage' => 'Image'
   
   );



function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Main', new TextField('ExternalLink', 'External Link that links the user to another site instead of an interior page - Enter Full URL that you want to link to'));
	$fields->addFieldToTab('Root.Content.Images', new ImageField('FeatureImage', 'Feature Box Image MUST be 484x486 pixels'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeCaption', 'Enter caption here'));
	
	
    return $fields;
	
   }
   
}
 
class HomePageTab_Controller extends Page_Controller {

function init() {
		parent::init();
		
		
	
	}
 
}
?>