<?php
/**
 * Defines the PersonnelPage page type
 */
 
class PersonnelPage extends Page {
 private static $db = array(

"PersonnelEmail" => "Text",
"PersonnelTitle" => "Text",
	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",

  
);
   private static $has_one = array(
   
  	'ContentImage' => 'Image'
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
	$fields->addFieldToTab('Root.Main', new TextField('PersonnelEmail', 'Email Address'));
	$fields->addFieldToTab('Root.Main', new TextField('PersonnelTitle', 'Title'));
    $fields->addFieldToTab('Root.Images', new UploadField('ContentImage', 'Profile Picture Here MUST be 484x486 pixels'));
	$fields->addFieldToTab('Root.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Video', new TextField('YoutubeCaption', 'Enter caption here'));
	
   return $fields;
}
}
 
class PersonnelPage_Controller extends Page_Controller {
	
}
?>