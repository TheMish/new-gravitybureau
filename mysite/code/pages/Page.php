<?php
class Page extends SiteTree {

	private static $db = array(
		'AccentColor' => 'Varchar(6)',
        'BannerCaption' => 'Text',
        'Mailto' => 'Varchar(100)',
        'SubmitText' => 'Text'
	);
	
    private static $has_one = array(
        'BannerImage' => 'Image',
    );
    
    private static $has_many = array(
    );
	
	public function getCMSFields() { 
      	$fields = parent::getCMSFields(); 
		
		$fields->addFieldToTab("Root.Banner", new UploadField('BannerImage'));  
		$fields->addFieldToTab("Root.Banner", new TextField('BannerCaption'));  
		
		$fields->addFieldToTab('Root.Main', new ColorField('AccentColor', 'Page Accent Color'), 'Content');
		
        $fields->addFieldToTab("Root.ContactForm", new TextField('Mailto', 'Email submissions to'));    
        $fields->addFieldToTab("Root.ContactForm", new TextareaField('SubmitText', 'Text on Submission'));  
		
		return $fields; 
   } 
   
}


class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
		'ContactForm'
	);
	
	
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		Requirements::themedCSS('reset');
		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form'); 
	}
	
	
	
	function ContactForm() {

        $fields = new FieldList(
            $nameField = new TextField('Name', 'Name'),
            $emailField = new EmailField('Email', 'Email'),
            $messageField = new TextareaField('Comments','Message')
        );
        
        $nameField->setAttribute('placeholder', 'YOUR NAME');
        $emailField->setAttribute('placeholder', 'YOUR EMAIL ADDRESS');
        $messageField ->setAttribute('placeholder', 'YOUR MESSAGE');
             
        $actions = new FieldList(
            new FormAction('SendContactFormHi', 'Say Hi'),
            new FormAction('SendContactFormWork', 'Work With Us') 
        );
        
        $validator = new RequiredFields('Name', 'Email', 'Comments');
         
        return new Form($this, 'ContactForm', $fields, $actions, $validator);
    }
    
    function SendContactFormHi($data, $form) {
   
        //Set data
        $From = $data['Email'];
        $To = $this->Mailto;
        $Subject = "Website 'Say Hi' Contact Message";     
        $email = new Email($From, $To, $Subject);
        //set template
        $email->setTemplate('ContactEmail');
        //populate template
        $email->populateTemplate($data);
        //send mail
        $email->send();
        //return to submitted message
        $this->redirectBack($this->Link("?success=1"));
    }
    
    function SendContactFormWork($data, $form) {
   
        //Set data
        $From = $data['Email'];
        $To = $this->Mailto;
        $Subject = "Website 'Work With Us' Contact Message";     
        $email = new Email($From, $To, $Subject);
        //set template
        $email->setTemplate('ContactEmail');
        //populate template
        $email->populateTemplate($data);
        //send mail
        $email->send();
        //return to submitted message
        $this->redirectBack($this->Link("?success=1"));
    }
    
    public function Success()
    {
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }

}
