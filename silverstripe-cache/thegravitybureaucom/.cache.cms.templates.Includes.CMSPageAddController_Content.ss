<?php
$val .= '<div class="cms-content center ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">
	';

$scope->locally()->obj('AddForm', null, true); $scope->pushScope();
$val .= '
		<form ';

$val .= $scope->locally()->XML_val('FormAttributes', null, true);
$val .= ' data-layout-type="border">
			<div class="cms-content-header north">
				<div class="cms-content-header-info">
					<h2>';

$val .= _t('CMSAddPageController.Title','Add page');
$val .= '</h2>
				</div>
			</div>

			<div class="cms-content-fields center cms-panel-content cms-panel-padded">
				';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '
				<p id="';

$val .= $scope->locally()->XML_val('FormName', null, true);
$val .= '_error" class="message ';

$val .= $scope->locally()->XML_val('MessageType', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '</p>
				';


}else { 
$val .= '
				<p id="';

$val .= $scope->locally()->XML_val('FormName', null, true);
$val .= '_error" class="message ';

$val .= $scope->locally()->XML_val('MessageType', null, true);
$val .= '" style="display: none"></p>
				';


}
$val .= '

				<fieldset>
					';

if ($scope->locally()->hasValue('Legend', null, true)) { 
$val .= '<legend>';

$val .= $scope->locally()->XML_val('Legend', null, true);
$val .= '</legend>';


}
$val .= '
					';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
					';


}; $scope->popScope(); 
$val .= '
				</fieldset>
			</div>

			<div class="cms-content-actions south">
				';

if ($scope->locally()->hasValue('Actions', null, true)) { 
$val .= '
				<div class="Actions">
					';

$scope->locally()->obj('Actions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						';

$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '
					';


}; $scope->popScope(); 
$val .= '
				</div>
				';


}
$val .= '
			</div>
		</form>
	';


; $scope->popScope(); 
$val .= '
</div>
';

