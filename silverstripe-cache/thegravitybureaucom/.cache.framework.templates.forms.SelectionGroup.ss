<?php
if ($scope->locally()->hasValue('IsReadonly', null, true)) { 
$val .= '
	<ul class="SelectionGroup';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
	';

$scope->locally()->obj('FieldSet', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	';

if ($scope->locally()->hasValue('Selected', null, true)) { 
$val .= '
		<li';

$val .= $scope->locally()->XML_val('Selected', null, true);
$val .= '>
			';

$val .= $scope->locally()->XML_val('RadioLabel', null, true);
$val .= '
			';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
		</li>
	</ul>
	';


}
$val .= '
	';


}; $scope->popScope(); 
$val .= '
';


}else { 
$val .= '
	<ul class="SelectionGroup';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
	';

$scope->locally()->obj('FieldSet', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<li';

$val .= $scope->locally()->XML_val('Selected', null, true);
$val .= '>
			';

$val .= $scope->locally()->XML_val('RadioButton', null, true);
$val .= $scope->locally()->XML_val('RadioLabel', null, true);
$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
		</li>
	';


}; $scope->popScope(); 
$val .= '
	</ul>
';


}
$val .= '
';

