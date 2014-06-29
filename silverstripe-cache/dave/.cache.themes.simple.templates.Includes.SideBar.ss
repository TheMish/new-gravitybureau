<?php
$val .= '<aside class="sidebar unit size1of4">
	';

if ($scope->locally()->hasValue('Menu', array('2'), true)) { 
$val .= '
		<nav class="secondary">
			';

$scope->locally()->obj('Level', array('1'), true); $scope->pushScope();
$val .= '
				<h3>
					';

$val .= $scope->locally()->XML_val('MenuTitle', null, true);
$val .= '
				</h3>
				<ul>
					';

$val .= SSViewer::execute_template('SidebarMenu', $scope->getItem(), array(), $scope);

$val .= '
				</ul>
			';


; $scope->popScope(); 
$val .= '
		</nav>
	';


}
$val .= '
</aside>
';

