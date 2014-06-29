<?php
class HybridPage extends Page {

	private static $db = array(
		'Introduction' => 'HTMLText',
		'IntroPane' => 'HTMLText'
	);
	
    private static $has_one = array(
    );
    
    private static $has_many = array(
    	'Services' => 'Service',
    );
	
	public function getCMSFields() { 
      	$fields = parent::getCMSFields(); 		
		
		
		
		$fields->addFieldToTab("Root.Introduction", new HTMLEditorField('Introduction'));
		$fields->addFieldToTab("Root.Banner", new HTMLEditorField('IntroPane'));
				
				
		
		$servConfig = GridFieldConfig_RecordEditor::create();
		$servConfig->addComponent(new GridFieldSortableRows('Sort'));
		$servGrid = GridField::create("Services", "Services", $this->Services(), $servConfig);
		$fields->addFieldToTab('Root.Services', $servGrid);
				
				
				
		return $fields; 
   } 
   
}


class HybridPage_Controller extends Page_Controller {
}
