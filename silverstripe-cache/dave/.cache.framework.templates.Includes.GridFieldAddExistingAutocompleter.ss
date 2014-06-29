<?php
$val .= '<div class="add-existing-autocompleter">
	';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	<span>';

$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '</span>
	';


}; $scope->popScope(); 
$val .= '
</div>
';

