<?php
$val .= '</div><!-- end inner -->

<div class="content-container unit sizeFull nopadding portfolio-container">

	<section id="content">
	<div id="container" class="masonry">
		';

$scope->locally()->obj('Children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

$val .= SSViewer::execute_template('PortfolioItem', $scope->getItem(), array(), $scope);

$val .= '
		';


}; $scope->popScope(); 
$val .= '
	</div>
	</section>
	
	';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
	';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
		
</div>';

