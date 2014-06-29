<?php
$val .= SSViewer::execute_template('SideBar', $scope->getItem(), array(), $scope);

$val .= '
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h1>
		<div class="content">';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '</div>
	</article>
		';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
</div>';

