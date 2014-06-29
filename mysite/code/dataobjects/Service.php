<?php
class Service extends DataObject {

	static $default_sort = 'Sort ASC';
	
	private static $db = array(
		'Title' => 'Text',
		'Content' => 'Text',
		'Services' => 'HTMLText',
		'Sort' => 'Int'
	);
	
	private static $has_one = array(
		'Parent' => 'HybridPage'
	);
	
	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));
		
		$fields->addFieldToTab('Root.Main', new TextField('Title', 'Title'));
		
		$fields->addFieldToTab('Root.Main', new TextareaField('Content', 'Content'));
		
		$fields->addFieldToTab('Root.Main', $contentField = HTMLEditorField::create('Services', 'Services'));
		$contentField->setRows(5);
		
		
		return $fields;
	}
	
}