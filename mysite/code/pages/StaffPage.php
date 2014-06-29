<?php
class StaffPage extends Page {
	
	private static $db = array(
		'StaffName' => 'Varchar',
		'JobTitle' => 'Varchar',
		'PartTime' => 'Varchar'
	);
	
	private static $has_one = array(
		'StaffImage' => 'Image',
		'StaffImageAlt' => 'Image'
	);
	
	public function getCMSFields() { 
      	$fields = parent::getCMSFields(); 
		
		$fields->addFieldToTab("Root.Details", new TextField('StaffName'));
		$fields->addFieldToTab("Root.Details", new TextField('JobTitle'));
		$fields->addFieldToTab("Root.Details", new TextField('PartTime'));
		
		$fields->addFieldToTab("Root.Details", $staffImage =  UploadField::create('StaffImage'));
		$staffImage->setFolderName('Uploads/Staff');
		$fields->addFieldToTab("Root.Details", $staffImageAlt = UploadField::create('StaffImageAlt'));
		$staffImageAlt->setFolderName('Uploads/Staff');
				
		return $fields; 
   } 

	
}
class StaffPage_Controller extends Page_Controller {
}