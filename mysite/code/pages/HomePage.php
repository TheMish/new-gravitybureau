<?php
class HomePage extends Page {
	private static $icon = "framework/docs/en/tutorials/_images/treeicons/home-file.gif";
	
	
    
    private static $has_many = array(
    	'Slides' => 'HomeSlide'
    );
    
	public function getCMSFields() { 
      	$fields = parent::getCMSFields(); 		
		
		
		
		$homeSlideConfig = GridFieldConfig_RecordEditor::create();
		$homeSlideConfig->addComponent(new GridFieldSortableRows('Sort'));
		$homeSlideGrid = GridField::create("Slides", "Slides", $this->Slides(), $homeSlideConfig);
		$fields->addFieldToTab('Root.Slides', $homeSlideGrid);
		
		
		
		return $fields; 
   } 
	
}
class HomePage_Controller extends Page_Controller {

}