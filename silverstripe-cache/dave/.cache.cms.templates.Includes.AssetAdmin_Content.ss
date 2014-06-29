<?php
$val .= '<div id="assetadmin-cms-content" class="cms-content center cms-tabset ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content">

	';

$scope->locally()->obj('EditForm', null, true); $scope->pushScope();
$val .= '
	<div class="cms-content-header north">
		<div class="cms-content-header-info">
			';

$val .= SSViewer::execute_template('BackLink_Button', $scope->getItem(), array(), $scope);

$val .= '


			';

$scope->locally()->obj('Controller', null, true); $scope->pushScope();
$val .= '
				';

$val .= SSViewer::execute_template('CMSBreadcrumbs', $scope->getItem(), array(), $scope);

$val .= '
			';


; $scope->popScope(); 
$val .= '

		</div>
		';

if ($scope->locally()->obj('Fields', null, true)->hasValue('hasTabset', null, true)) { 
$val .= '
			';

$scope->locally()->obj('Fields', null, true)->obj('fieldByName', array('Root'), true); $scope->pushScope();
$val .= '
			<div class="cms-content-header-tabs">
				<ul class="cms-tabset-nav-primary">
				';

$scope->locally()->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<li';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' class="';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '"';


}
$val .= '><a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#';

$val .= $scope->locally()->XML_val('id', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a></li>
				';


}; $scope->popScope(); 
$val .= '
				</ul>
			</div>
			';


; $scope->popScope(); 
$val .= '
		';


}
$val .= '
	</div>

	<div class="cms-content-fields center ui-widget-content" data-layout-type="border">
		';

$val .= $scope->locally()->obj('Top', null, true)->XML_val('Tools', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('forTemplate', null, true);
$val .= '
	</div>
	';


; $scope->popScope(); 
$val .= '

</div>';

