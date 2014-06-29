<?php
$val .= '
</div> <!-- close inner -->


<div class="content-container">

	<div id="BlogContent" class="typography">
		
		
		
		<div class="blogMeta">
			
			<div class="size1of2 unit floatR nopadding largeLinkPanel">
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/work"><h6>View related work</h6><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/before-intro-arrow-blk.png" width="60" /></a>
			</div>

			<ul class="halfInner floatR nopadding meta">
				<li><h6>
					<span class="serif">Posted by</span> ';

$scope->locally()->obj('Staff', null, true); $scope->pushScope();
$val .= $scope->locally()->XML_val('Name', null, true);

; $scope->popScope(); 
$val .= ' on ';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('Long', null, true);
$val .= '
				</h6></li>
				<li><h6>
					<span class="serif">Tagged:</span>
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
						
		</div>
		
		
		
		<div class="section nopadding">
			<div class="blogEntry inner">
			
				<div class="blogEntry-content size2of3 unit">
					
					';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
					
				</div>
				
				';

$scope->locally()->obj('Client', null, true); $scope->pushScope();
$val .= '
				<div class="unit size1of3">
				
					<h3 class="serif">About ';

$val .= $scope->locally()->XML_val('Client', null, true);
$val .= '</h3>
					
					<ul class="meta">
						<li><h6><span class="serif">Client:</span> ';

$val .= $scope->locally()->XML_val('Client', null, true);
$val .= '</h6></li>
						<li><h6><span class="serif">Location:</span> ';

$val .= $scope->locally()->XML_val('Location', null, true);
$val .= '</h6></li>
						<li><h6><span class="serif">Industry:</span> ';

$val .= $scope->locally()->XML_val('Industry', null, true);
$val .= '</h6></li>
					</ul>
					<br>
											
					<p>';

$val .= $scope->locally()->XML_val('About', null, true);
$val .= '</p>
					
				</div>
				';


; $scope->popScope(); 
$val .= '
					
			<div>
		</div>
		
		
		
		<div class="section nopadding">
			<div class="inner">
				
				
			</div>
		</div>
		
			
			
	</div>
		
</div>
</div>
</div>';

