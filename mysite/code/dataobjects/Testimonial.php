<?php
class Testimonial extends DataObject {

	static $default_sort = 'Sort ASC';
	
	private static $db = array(
		'Testimonial' => 'HTMLText',
		'Author' => 'Varchar',
		'Sort' => 'Int'
	);
	
	private static $has_one = array(
		'Parent' => 'AgentsPage'
	);
	
	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));
		
		$fields->addFieldToTab('Root.Main', $contentField = HTMLEditorField::create('Testimonial', 'Testimonial'));
		$contentField->setRows(5);
		
		$fields->addFieldToTab('Root.Main', $authorField = TextField::create('Author', 'Author'));
		
		return $fields;
	}
	
}