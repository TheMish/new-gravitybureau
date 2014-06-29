<?php
$val .= '</div> <!-- close inner -->
<div class="content-container">
	<div id="BlogContent" class="typography">
		
		<div class="blogMeta">
			<ul class="size1of4 over1of4 unit nopadding verticalMetaList">
				<li><h6>
					Posted by ';

$scope->locally()->obj('Staff', null, true); $scope->pushScope();
$val .= $scope->locally()->XML_val('Name', null, true);

; $scope->popScope(); 
$val .= ' on ';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('Long', null, true);
$val .= '
				</h6></li>
				<li><h6>
					Tagged
					';

$scope->locally()->obj('TagsCollection', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						<a class="tagFilter" href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="View all posts tagged \'';

$val .= $scope->locally()->XML_val('Tag', null, true);
$val .= '\'" rel="tag">';

$val .= $scope->locally()->XML_val('Tag', null, true);
$val .= '</a>';

if (!$scope->locally()->hasValue('Last', null, true)) { 
$val .= ',';


}
$val .= '
					';


}; $scope->popScope(); 
$val .= '
				</h6></li>
			</ul>
			<div class="size1of2 unit nopadding largeLinkPanel">
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/work"><h6>View related work</h6><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/before-intro-arrow-blk.png" width="60" /></a>
			</div>
		</div>
		<div class="section nopadding">
		<div class="blogEntry">
			<div class="unit sizeFull nopadding">
				<div class="blogEntry-content size1of2 over1of4 unit">
					
					';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
					
				</div>
			</div>
			
			<div>
		</div>
			
		';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
		</div>
		</div>
	</div>
</div>';

