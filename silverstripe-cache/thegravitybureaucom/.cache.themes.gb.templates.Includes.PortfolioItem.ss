<?php
$val .= '<div class="work ';

$val .= $scope->locally()->XML_val('Location', null, true);
if ($scope->locally()->XML_val('Pos', null, true)=='13') { 
$val .= ' large';


}
if ($scope->locally()->hasValue('First', null, true)) { 
$val .= ' large';


}
$val .= ' item">
	
	<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">
	<div class="work-content">
		<div class="work-logo">';

if ($scope->locally()->hasValue('Logo', null, true)) { 
$val .= $scope->locally()->XML_val('Logo', null, true);

}
$val .= '</div>
		<div class="work-copy">
			';

if ($scope->locally()->hasValue('First', null, true)) { 
$val .= '<h3>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h3><hr class="white"><h5>';

$val .= $scope->locally()->XML_val('ShortDescription', null, true);
$val .= '</h5>';


}
$val .= '
		</div>
				
		';

if ($scope->locally()->hasValue('First', null, true)) { 
$val .= '
			';

if ($scope->locally()->hasValue('TileImageLarge', null, true)) { 
$val .= $scope->locally()->XML_val('TileImageLarge', null, true);

}else { 
$val .= $scope->locally()->XML_val('TileImage', null, true);

}
$val .= '
		';


}else { 
$val .= '
			';

if ($scope->locally()->XML_val('Pos', null, true)=='13') { 
$val .= '
				';

if ($scope->locally()->hasValue('TileImageLarge', null, true)) { 
$val .= $scope->locally()->XML_val('TileImageLarge', null, true);

}else { 
$val .= $scope->locally()->XML_val('TileImage', null, true);

}
$val .= '
			';


}else { 
$val .= '
				';

$val .= $scope->locally()->XML_val('TileImage', null, true);
$val .= '
			';


}
$val .= '
		';


}
$val .= '
		
	</div>
	
	<div class="work-details">
		<ul>
			<li><h6><span class="serif">CLIENT</span> ';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6></li>
			<li><h6><span class="serif">SCOPE</span> ';

$val .= $scope->locally()->XML_val('Scope', null, true);
$val .= '</h6></li>
		</ul>
	</div>
	</a>
	
</div>';

