<?php
$val .= '<div class="content-container inner">
	<article>
		<div class="content">
			
			<h1>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h1>
			';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
			
			
			
		</div>
	</article>
</div>

<div class="section">
	<div class="inner">
	
	
	
		';

$scope->locally()->obj('getClients', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= ' 
			<div class="size1of2 unit">
				<h4 class="serif floatL nomargin">';

$val .= $scope->locally()->XML_val('Client', null, true);
$val .= '</h4>
				<h6 class="floatR nomargin">';

$val .= $scope->locally()->XML_val('Owner', null, true);
$val .= '</h6>
				<hr class="full">
			</div>
		';


}; $scope->popScope(); 
$val .= '
		
		
	</div>
</div>

<div class="inner">
	';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
	';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
</div>

';

