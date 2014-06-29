<?php
$val .= '
<span class="nav-open-button">
	<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" class="menu-container">
	  <div id="bar1" class="menu-bar"></div>
	  <div id="bar2" class="menu-bar"></div>
	  <div id="bar3" class="menu-bar"></div>
	</a>
</span>

<nav class="primary size3of4 floatR">
	
	<ul class="main-nav">
		';

$scope->locally()->obj('Menu', array('1'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<li class="';

$val .= $scope->locally()->XML_val('LinkingMode', null, true);
$val .= '"><a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" class="fadeLink"><h6>';

$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</h6></a></li>
		';


}; $scope->popScope(); 
$val .= '
			<li class="contact"><a class="smoothScroll" href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#contact"><h6>CONTACT</h6></a></li>
	</ul>
	
</nav>
';

