<?php
class Client extends DataObject {
	private static $db = array(
   		'Client' => 'Varchar',
   		'Owner' => 'Varchar',
   		'Industry' => 'Varchar',
   		'Location' => 'Varchar',
   		'Email' => 'Varchar',
   		'About' => 'Text',
   	);
   
	private static $has_one = array(
		'LogoReversed' => 'Image',
		'Logo' => 'Image',
		'TileImage' => 'Image'
	);
	
	private static $has_many = array(
		'Projects' => 'Project'
	);
	
	private static $searchable_fields = array(
		'Client', 'Owner'
	);
	
	private static $field_labels = array(
		'Owner' => 'Owners Name' // renames the column to "Cost"
	);
	private static $summary_fields = array(
		'Client',
		'Owner',
		// leaves out the 'ProductCode' field, removing the column
	);
}