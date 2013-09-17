<?php
/**
 * Defines the PersonnelPage page type
 */
 
class PersonnelPage extends Page {
 static $db = array(

"PersonnelEmail" => "Text",
"PersonnelTitle" => "Text",
	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",

  
);
   static $has_one = array(
   
  	'ContentImage' => 'Image'
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
	$fields->addFieldToTab('Root.Content.Main', new TextField('PersonnelEmail', 'Email Address'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('PersonnelTitle', 'Title'));
    $fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Profile Picture Here MUST be 484x486 pixels'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeCaption', 'Enter caption here'));
	
   return $fields;
}
}
 
class PersonnelPage_Controller extends Page_Controller {
	
}
?>