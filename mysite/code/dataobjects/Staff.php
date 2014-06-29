<?php
class Staff extends DataObject {

	static $default_sort = 'Sort ASC';
	
	private static $db = array(
		'Name' => 'Text',
		'JobTitle' => 'Text',
		'PartTime' => 'Text',
		'About' => 'HTMLText',
		'Sort' => 'Int',
		'Visible' => 'Boolean'
	);
	
	private static $has_one = array(
		'Parent' => 'AgentsPage',
		'Image' => 'Image',
		'ImageAlt' => 'Image',

	);
	
	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));
		
		$fields->addFieldToTab('Root.Main', new TextField('Name', 'Name'));
		$fields->addFieldToTab('Root.Main', new TextField('JobTitle', 'Job Title'));
		$fields->addFieldToTab('Root.Main', new TextField('PartTime', 'Part Time'));
				
		$fields->addFieldToTab('Root.Main', $contentField = HTMLEditorField::create('About', 'About'));
		$contentField->setRows(5);
		
		$fields->addFieldToTab('Root.Main', $staffImage1 = UploadField::create('Image', 'Image'));
		$staffImage1->setFolderName('Uploads/Staff');
		$fields->addFieldToTab('Root.Main', $staffImage2 = UploadField::create('ImageAlt', 'Alternate Image'));
		$staffImage2->setFolderName('Uploads/Staff');
				
		$fields->addFieldToTab('Root.Main', new CheckboxField('Visible'));
		
		return $fields;
	}
	
}