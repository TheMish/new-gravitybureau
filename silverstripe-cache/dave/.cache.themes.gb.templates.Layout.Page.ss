<?php
$val .= '<div class="content-container inner">
	<article>
		<div class="content">
		
			';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
			
		</div>
	</article>
		';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
</div>
';

