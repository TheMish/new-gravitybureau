<?php
$val .= '</div> <!-- close inner -->

';

$val .= SSViewer::execute_template('BlogSideBar', $scope->getItem(), array(), $scope);

$val .= '

';

if ($scope->locally()->hasValue('SelectedTag', null, true)) { 
$val .= '
		<div class="filterTitle"><div class="sizeFull">
			<h5 class="serif unit size1of2">';

$val .= _t('BlogHolder_ss.VIEWINGTAGGED','Viewing entries tagged with');
$val .= ' \'';

$val .= $scope->locally()->XML_val('SelectedTag', null, true);
$val .= '\'</h5>
			<a class="size1of4 unitRightv closeSml" href="';

$val .= $scope->locally()->obj('Level', array('1'), true)->XML_val('Title', null, true);
$val .= '"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/close-small.png" width="20" /></a>
		</div></div>
		
	';


}else if ($scope->locally()->hasValue('SelectedDate', null, true)) { 
$val .= '
		<div class="filterTitle"><div class="sizeFull">
			<h5 class="serif">';

$val .= _t('BlogHolder_ss.VIEWINGPOSTEDIN','Viewing entries posted in');
$val .= ' ';

$val .= $scope->locally()->XML_val('SelectedNiceDate', null, true);
$val .= '</h5>
		</div></div>
		
	';


}else if ($scope->locally()->hasValue('SelectedAuthor', null, true)) { 
$val .= '
		<div class="filterTitle"><div class="sizeFull">
			<h5 class="serif">';

$val .= _t('BlogHolder_ss.VIEWINGPOSTEDBY','Viewing entries posted by');
$val .= ' ';

$val .= $scope->locally()->XML_val('SelectedAuthor', null, true);
$val .= '</h5>
		</div></div>
	';


}
$val .= '
	
<div id="BlogContent" class="unit blogcontent typography nopadding">
		
	';

$val .= SSViewer::execute_template('BreadCrumbs', $scope->getItem(), array(), $scope);

$val .= '	
	
	';

if ($scope->locally()->hasValue('BlogEntries', null, true)) { 
$val .= '
		';

$scope->locally()->obj('BlogEntries', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

$val .= SSViewer::execute_template('BlogSummary', $scope->getItem(), array(), $scope);

$val .= '
		';


}; $scope->popScope(); 
$val .= '
	';


}else { 
$val .= '
		<h2>';

$val .= _t('BlogHolder_ss.NOENTRIES','There are no blog entries');
$val .= '</h2>
	';


}
$val .= '
	
	';

$val .= SSViewer::execute_template('BlogPagination', $scope->getItem(), array(), $scope);

$val .= '
	
</div>
';

