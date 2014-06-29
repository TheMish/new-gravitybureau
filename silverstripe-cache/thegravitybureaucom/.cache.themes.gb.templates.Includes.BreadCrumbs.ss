<?php
if ($scope->locally()->hasValue('Level', array('2'), true)) { 
$val .= '
	<div id="Breadcrumbs">
	   	';

$val .= $scope->locally()->XML_val('Breadcrumbs', null, true);
$val .= '
	</div>
';


}
$val .= '
';

