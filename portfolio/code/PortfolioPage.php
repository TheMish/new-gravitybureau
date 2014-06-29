<?php	
class PortfolioPage extends Page {
	
    private static $db = array(
        'Date' => 'Date',
        'Author' => 'Text',
        'Location' => 'Text',
        'Industry' => 'Text',
        'Scope' => 'Text',
        'Office' => 'Text',
		'ShortDescription' => 'Text',
		'HybridContent' => 'Text',
        'BriefContent' => 'HTMLText',
        'DiscoveryContent' => 'HTMLText',
        'SolutionContent' => 'HTMLText',
        'Video' => 'HTMLText',
    );
			
    private static $has_one = array(
        'Logo' => 'Image',
        'TileImage' => 'Image',
        'TileImageLarge' => 'Image',
		'Staff' => 'Staff',
		'Client' => 'Client' 
    );
			
    private static $many_many = array(
        'PortfolioImage' => 'Image'
    );
    
    
	
	function getStaffOptions() { 
	    if($Pages = DataObject::get('Staff')) { 
	    	return $Pages->map('ID', 'Name', 'Please Select'); 
	    } else { 
	    	return array('No staff found'); 
	    } 
	} 
	
	function getClientOptions() { 
	    if($Pages = DataObject::get('Client')) { 
	    	return $Pages->map('ID', 'Client', 'Please Select'); 
	    } else { 
	    	return array('No clients found'); 
	    } 
	} 
			
	
	
	public function getCMSFields() {
		
		$fields = parent::getCMSFields();
		
		$fields->removeByName('Content');
		
		$fields->addFieldToTab('Root.Meta', new TextField('Author'));
		$fields->addFieldToTab('Root.Meta', new TextField('Industry'));
		$fields->addFieldToTab('Root.Meta', new TextField('Scope'));
		$fields->addFieldToTab('Root.Meta', new TextField('Office'));
		
		
		$fields->addFieldToTab('Root.Meta', new DropdownField('Location','Location', array(
			'Australasia' => 'Australasia',
			'Americas' => 'Americas',
			'Global' => 'Global'
			)
		));
		
		$fields->addFieldToTab("Root.Meta", new TextField('HybridContent', 'Hybrid Content - BrandActivation, CreativeDirection, DesignDirection, DigitalContent, Media, Strategy'));
		
		
		
		
		$fields->addFieldToTab("Root.Meta", new DropdownField( 
			'StaffID', 
			'Please choose a Staff Member', 
			$this->getStaffOptions() 
		)); 
		
		$fields->addFieldToTab("Root.Meta", new DropdownField( 
			'ClientID', 
			'Please choose a client', 
			$this->getClientOptions() 
		)); 
		
		
		
		
		$fields->addFieldToTab("Root.Images", $portfolioLogoImages = UploadField::create('Logo'));
		$portfolioLogoImages->setFolderName('Uploads/PortfolioImages');
		$fields->addFieldToTab("Root.Images", $portfolioTileImages = UploadField::create('TileImage', 'Tile Image'));
		$portfolioTileImages->setFolderName('Uploads/PortfolioImages');
		$fields->addFieldToTab("Root.Images", $portfolioTileLargeImages = UploadField::create('TileImageLarge', 'Large Tile Image'));
		$portfolioTileLargeImages->setFolderName('Uploads/PortfolioImages');
		$fields->addFieldToTab("Root.PortfolioImages", $portfolioImages = UploadField::create('PortfolioImage', 'Portfolio Images'));
		$portfolioImages->setFolderName('Uploads/PortfolioImages');
		
		$fields->addFieldToTab("Root.Main", $shortDesc = TextareaField::create('ShortDescription','Short Description')); 
		$shortDesc->setRows(5);
		 		
		$fields->addFieldToTab("Root.Main", new HTMLEditorField('BriefContent','Brief Content')); 
		$fields->addFieldToTab("Root.Main", new HTMLEditorField('DiscoveryContent','Discovery Content')); 
		$fields->addFieldToTab("Root.Main", new HTMLEditorField('SolutionContent','Solution Content')); 
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Video', 'Paste Vimeo embed code in here'));
		
		$metadataTab = $fields->findOrMakeTab('Root.Main.Metadata'); 
		$fields->removeByName('Metadata'); 
		$fields->addFieldToTab('Root.Main', $metadataTab);
				
		return $fields;
	}
	
	
   
	/**
	 * Returns the tags added to this blog entry
	 */
	function HybridContentCollection() {

		$hybridcontent = preg_split(" *, *", trim($this->HybridContent));
		$output = new ArrayList();
		
		$link = $this->getParent() ? $this->getParent()->Link('hybridcontent') : '';
		foreach($hybridcontent as $hybridcontent) {
			$output->push(new ArrayData(array(
				'HybridContent' => Convert::raw2xml($hybridcontent),
				'Link' => $link . '/' . urlencode($hybridcontent),
				'URLTag' => urlencode($hybridcontent)
			)));
		}
		
		if($this->HybridContent) {
			return $output;
		}
	}
   
	
}



class PortfolioPage_Controller extends Page_Controller {
}