<?php

class ClientAdmin extends ModelAdmin {

  private static $managed_models = array('Client','Project'); // Can manage multiple models
  private static $url_segment = 'clients'; // Linked as /admin/products/
  private static $menu_title = 'Clients';
}