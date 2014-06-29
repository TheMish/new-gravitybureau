<?php
class Project extends DataObject {
   private static $db = array('Title' => 'Text');
   private static $has_one = array('Client' => 'Client');
   
   public function canView($member = null) {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }
    public function canEdit($member = null) {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }
    public function canDelete($member = null) {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }
    public function canCreate($member = null) {
        return Permission::check('CMS_ACCESS_CMSMain', 'any', $member);
    }
}