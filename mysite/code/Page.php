<?php

class Page extends SiteTree {
	
	private static $db = array(
	);
	
	private static $has_one = array(
	);
	
	  /*
   * limits words to a number, but tries to validate the code
   */
   public function getSummaryHTML ($ContentArea='Content', $limit = 10){
      $m = 0;
      $addEplisis = '';
      $returnstr = '';
      $returnArray = array();
      $html = array();
      $chars = preg_split('/(<[^>]*[^\/]>| )/i', $this->$ContentArea, -1, PREG_SPLIT_NO_EMPTY | PREG_SPLIT_DELIM_CAPTURE);
      foreach ($chars as $elemnt) {
         // found start tag
         if(preg_match('/^<(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt)){
            preg_match('/^<(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt, $matches);
            array_push($html, $matches[1]);// convert <p class=""> to p
            array_push($returnArray, $elemnt);
            // found end tag
         } else if(preg_match('/^<\/(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt)){
            preg_match('/^<\/(p|h1|h2|h3|h4|h5|h6|q|b|i|strong|em)(.*)>$/', $elemnt, $matches);
            $testelement = array_pop ($html);
            // match (ie: <p>etc</p>)
            if($testelement==$elemnt[1]) array_pop($html);
            array_push($returnArray, $elemnt);
         } else {
            // done
            if($elemnt == ' ') continue;
            array_push($returnArray, $elemnt);
            $m++;
            if($m > $limit) {
               $addEplisis = '&hellip;';
               break;
            }
         }
      }
      // convert start tags to end tags
      $tmpr = '';
      foreach ($html as $elemnt) {
         $tmpr.='</'.$elemnt.'>';
      }
      return implode($returnArray, ' ') . $addEplisis . $tmpr;
   }
	
}

	


class Page_Controller extends ContentController {
	
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates
		// instead of putting Requirements calls here.  However these are
		// included so that our older themes still work
		Requirements::themedCSS("form"); 
	}
	
		function Home($limit=3) {
		//$set = DataObject::get("HomePageTab", null, null, null, $limit);
		$set = HomePageTab::get()->limit($limit);
		return $set;
	}
	
	function Projects($limit=2) {
		//$set = DataObject::get("ProjectsPage", null, null, null, $limit);
		$set = ProjectsPage::get()->limit($limit);
		return $set;
	}
	
	
		function News($limit=3) {
		//$set = DataObject::get("NewsPage", null, null, null, $limit);
		$set = NewsPage::get()->limit($limit);
		return $set;
	}
	
			function NewsList($limit=5) {
		//$set = DataObject::get("NewsPage", null, null, null, $limit);
		$set = NewsPage::get()->limit($limit);
		return $set;
	}
	

	function NotHomePage(){
		
		if($this->ClassName == 'HomePage'){
			return false;
		}else{
			return true;
		}
	}	
		
	function NotNewsPage(){
		
		if($this->ClassName == 'NewsHolder'){
			return false;
		}else{
			return true;
		}
			
		
	}
	
	/**
	 * Site search form 
	 */ 
	function SearchForm() {
		$searchText = isset($_REQUEST['Search']) ? $_REQUEST['Search'] : 'Search';
		$fields = new FieldList(
	      	new TextField("Search", "", $searchText)
	  	);
		$actions = new FieldList(
	      	new FormAction('results', 'Search')
	  	);

	  	return new SearchForm($this, "SearchForm", $fields, $actions);
	}
	
	/**
	 * Process and render search results
	 */
	function results($data, $form){
	  	$data = array(
	     	'Results' => $form->getResults(),
	     	'Query' => $form->getSearchQuery(),
	      	'Title' => 'Search Results'
	  	);

	  	return $this->customise($data)->renderWith(array('Page_results', 'Page'));
	}
	
	function RSSFeedImport($numItems) {
		
	  $feedURL= "feed://sustainability.uiowa.edu/events/rss?alt=rss";
	  $output = new ArrayList();
	  
	  include_once(Director::getAbsFile(FRAMEWORK_DIR . '/thirdparty/simplepie/simplepie.inc'));
	  
	  $t1 = microtime(true);
	  $feed = new SimplePie($feedURL, TEMP_FOLDER);
	  $feed->init();
	  if($items = $feed->get_items(0, $numItems)) {
		 foreach($items as $item) {
			
			// Cast the Date
			$date = new Date('Date');
			$date->setValue($item->get_date());
	
			// Cast the Title
			$title = new Text('Title');
			$title->setValue($item->get_title());
			
			// Cast the description and strip
			$desc = new Text('Description');
			$desc->setValue(strip_tags($item->get_description()));
	
			$output->push(new ArrayData(array(
			   'Title'         => $title,
			   'Date'         => $date,
			   'Link'         => $item->get_link(),
			   'Description'   => $desc
			)));
		 }
		 return $output;
	  }
}
	
}

?>