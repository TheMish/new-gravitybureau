<?php
class AgentsPage extends Page {

	private static $db = array(
		'Join' => 'HTMLText',
		'Hire' => 'HTMLText',
		'IntroPane' => 'HTMLText',
		'Visit' => 'HTMLText'
	);
	
    private static $has_one = array(
    );
    
    private static $has_many = array(
    	'Testimonials' => 'Testimonial',
    	'Staff' => 'Staff'
    );
	
	public function getCMSFields() { 
      	$fields = parent::getCMSFields(); 		
		
		
		
		$fields->addFieldToTab("Root.Introduction", new HTMLEditorField('Join'));
		$fields->addFieldToTab("Root.Introduction", new HTMLEditorField('Hire'));
		$fields->addFieldToTab("Root.Introduction", new HTMLEditorField('Visit'));
				
				
		
		$fields->addFieldToTab("Root.Banner", new HTMLEditorField('IntroPane'));
		
		
		
		$testConfig = GridFieldConfig_RecordEditor::create();
		$testConfig->addComponent(new GridFieldSortableRows('Sort'));
		$testGrid = GridField::create("Testimonials", "Testimonials", $this->Testimonials(), $testConfig);
		$fields->addFieldToTab('Root.Testimonials', $testGrid);
		
		
		
		$staffConfig = GridFieldConfig_RecordEditor::create();
		$staffConfig->addComponent(new GridFieldSortableRows('Sort'));
		$staffGrid = GridField::create("Staff", "Staff", $this->Staff(), $staffConfig);
		$fields->addFieldToTab('Root.Staff', $staffGrid);
		
		
		
		return $fields; 
   } 
   
}


class AgentsPage_Controller extends Page_Controller {
}
