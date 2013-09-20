<?php
/**
 * Defines the HomePage page type
 */
 
class InteriorPage extends Page {
	private static $db = array(

	"YoutubeLink" => "Text",
  	"YoutubeCaption" => "Text",
);
   	private static $has_one = array(
   
  	'ContentImage' => 'Image'
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
	$fields->addFieldToTab('Root.Video', new TextField('YoutubeLink', 'Enter code at end of youtube url here'));
	$fields->addFieldToTab('Root.Video', new TextField('YoutubeCaption', 'Enter caption here'));
    $fields->addFieldToTab('Root.Images', new UploadField('ContentImage', 'Interior page image MUST be 484x486 pixels'));

   return $fields;
}
}
 
class InteriorPage_Controller extends Page_Controller {
	
}
?>