<?php
$val .= '<div class="blogSummary sizeFull">
	
	<div class="date">
		<h1><span class="day">';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('format', array('d'), true);
$val .= '</span></h1>
		<h6><span class="month">';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('format', array('F'), true);
$val .= '</span></h6> 
	</div>
	
	<div class="unit over1of3 summary ';

if ($scope->locally()->hasValue('BannerImage', null, true)) { 
$val .= 'photo';


}
$val .= '">
		
		';

if ($scope->locally()->hasValue('Client', null, true)) { 
$val .= '
			';

$scope->locally()->obj('Client', null, true); $scope->pushScope();
$val .= '<div class="topic" style="background-image:url(';

$val .= $scope->locally()->obj('TileImage', null, true)->XML_val('URL', null, true);
$val .= ');"></div>';


; $scope->popScope(); 
$val .= '
		';


}else { 
$val .= '
			<div class="topic ';

$scope->locally()->obj('TagsCollection', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= $scope->locally()->XML_val('Tag', null, true);

}; $scope->popScope(); 
$val .= '">
				';

$scope->locally()->obj('TagsCollection', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<a class="tagFilter" href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="View all posts tagged \'';

$val .= $scope->locally()->XML_val('Tag', null, true);
$val .= '\'" rel="tag"></a>
				';


}; $scope->popScope(); 
$val .= '
			</div>
		';


}
$val .= '
		
		
		';

if ($scope->locally()->hasValue('BannerImage', null, true)) { 
$val .= '
			<div class="newswire-image" style="background-image:url(';

$val .= $scope->locally()->obj('BannerImage', null, true)->XML_val('URL', null, true);
$val .= ');"></div>
		';


}
$val .= '
		
		<div class="postContent">
		
			<h2 class="postTitle"><a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="';

$val .= _t('BlogSummary_ss.VIEWFULL','View full post titled -');
$val .= ' \'';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '\'">';

$val .= $scope->locally()->XML_val('MenuTitle', null, true);
$val .= '</a></h2>
			
			';

$val .= $scope->locally()->obj('Content', null, true)->XML_val('FirstParagraph', array('html'), true);
$val .= '
			
				<div class="blogVitals">
				
				';

if ($scope->locally()->hasValue('Staff', null, true)) { 
$val .= '
					<h6>';

$scope->locally()->obj('Staff', null, true); $scope->pushScope();
$val .= '<div class="authorImage">';

$val .= $scope->locally()->obj('Image', null, true)->XML_val('CroppedImage', array('30', '30'), true);
$val .= '</div>';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '</h6>';


; $scope->popScope(); 
$val .= '
				';


}else { 
$val .= '
					<h6>';

if ($scope->locally()->hasValue('Author', null, true)) { 
$val .= '<span class="authorImage ';

$val .= $scope->locally()->obj('Author', null, true)->XML_val('XML', null, true);
$val .= '"></span>';

$val .= $scope->locally()->obj('Author', null, true)->XML_val('XML', null, true);
$val .= ' </h6>';


}
$val .= '
				';


}
$val .= '
				
					<h6><span class="dateImage"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/dateIcon.png" height="100%" /></span> ';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('Long', null, true);
$val .= '</h6>
				</div>
						
		</div>
	</div>
</div>
';

