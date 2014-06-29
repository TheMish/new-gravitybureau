<?php
class HomeSlide extends DataObject {

	static $default_sort = 'Sort ASC';
	
	private static $db = array(
		'Title' => 'Text',
		'Tagline' => 'Text',
		'Subtitle' => 'Text',
		'ButtonText' => 'Text',
		'ButtonLink' => 'Text',
		'ColorOverlay' => 'Varchar(6)',
		'Sort' => 'Int'
	);
	
	private static $has_one = array(
		'Slide' => 'Image',
		'Video' => 'File',
		'Parent' => 'HomePage'
	);
	
	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));
				
		$fields->addFieldToTab('Root.Main', new TextField('Title', 'Title'));
		
		$fields->addFieldToTab('Root.Main', new TextareaField('Tagline', 'Tagline'));
		$fields->addFieldToTab('Root.Main', new TextareaField('Subtitle', 'Subtitle'));
		$fields->addFieldToTab('Root.Main', new TextareaField('ButtonText', 'Button Text'));
		$fields->addFieldToTab('Root.Main', new TextareaField('ButtonLink', 'Button Link'));
		
		$fields->addFieldToTab('Root.Main', new UploadField('Slide', 'Slide Image'));
		
		$fields->addFieldToTab('Root.Main', $videoUpload = new UploadField('Video', 'Video Upload'));
		
		$fields->addFieldToTab('Root.Main', new ColorField('ColorOverlay', 'Colour Overlay'));
		
		return $fields;
	}
	
}