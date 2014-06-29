<?php
if ($scope->locally()->hasValue('SideBarView', null, true)) { 
$val .= '
	<div id="Sidebar" class="typography">
		';

$val .= $scope->locally()->XML_val('SideBarView', null, true);
$val .= '
	</div>
';


}
