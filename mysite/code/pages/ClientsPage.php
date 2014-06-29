<?php
class ClientsPage extends Page {
}
class ClientsPage_Controller extends Page_Controller {
	
	function getClients(){ 
		$clients = DataObject::get('Client');    
		return $clients; 
	}
	
	function getProjects(){ 
		$projects = DataObject::get('Project');    
		return $projects; 
	}
	
}