<?php
/**
 * Defines the HomePage page type
 */
 
class InteriorPage extends Page {
 static $db = array(

	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",
);
   static $has_one = array(
   
  	'ContentImage' => 'Image'
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Content.Video', new TextField('YoutubeCaption', 'Enter caption here'));
    $fields->addFieldToTab('Root.Content.Images', new ImageField('ContentImage', 'Interior page image MUST be 484x486 pixels'));

   return $fields;
}
}
 
class InteriorPage_Controller extends Page_Controller {
	
}
?>