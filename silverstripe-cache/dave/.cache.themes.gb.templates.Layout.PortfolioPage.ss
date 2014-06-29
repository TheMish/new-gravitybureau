<?php
$val .= '</div> <!-- close inner -->
<div class="content-container">
	<article>
		
		
		
		<div id="slides" class="auto">
			<ul class="slides-container">
			
				
				';

if ($scope->locally()->hasValue('Video', null, true)) { 
$val .= '
					<div class="slide video-slide">
						';

$val .= $scope->locally()->XML_val('Video', null, true);
$val .= '
					</div>
				';


}
$val .= '

				';

$scope->locally()->obj('PortfolioImage', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<li class="slide">
						<img src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" />
						';

if ($scope->locally()->hasValue('Caption', null, true)) { 
$val .= $scope->locally()->XML_val('Caption', null, true);

}
$val .= '
					</li>
				';


}; $scope->popScope(); 
$val .= '
			
			
			</ul>
		
			<nav class="slides-navigation">
				<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" class="next"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/icon-next-wht.png" width="50" /></a>
				<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" class="prev"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/icon-prev-wht.png" width="50" /></a>
			</nav>
			
			
		</div>
		
		
		
		<div class="project-btns">
			<div class="project-back"><a href="./work"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/icon-grid-ylw.png" alt="more-info"></a></div>
			<div class="project-info-btn openclose"><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/icon-open-ylw.png" alt="more-info"></div>
		</div>
		
		<div class="project-info-wrapper">
			<div class="project-info">
				<div class="unit size1of4 project-info-inner">
					<h2 class="nomargin">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h2>
					<ul class="meta">
						';

if ($scope->locally()->hasValue('Location', null, true)) { 
$val .= '<li><h6>Location: ';

$val .= $scope->locally()->XML_val('Location', null, true);
$val .= '</h6></li>';


}
$val .= '
						';

if ($scope->locally()->hasValue('Industry', null, true)) { 
$val .= '<li><h6>Industry: ';

$val .= $scope->locally()->XML_val('Industry', null, true);
$val .= '</h6></li>';


}
$val .= '
						';

if ($scope->locally()->hasValue('Scope', null, true)) { 
$val .= '<li><h6>Scope: ';

$val .= $scope->locally()->XML_val('Scope', null, true);
$val .= '</h6></li>';


}
$val .= '
						
						';

if ($scope->locally()->hasValue('HybridContent', null, true)) { 
$val .= '
						<li class="hybridcontent"><h6>
							';

$scope->locally()->obj('HybridContentCollection', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/';

$val .= $scope->locally()->XML_val('HybridContent', null, true);
$val .= '.png" />
							';


}; $scope->popScope(); 
$val .= '
						</h6></li>
						';


}
$val .= '
					</ul>
				</div>
				<div class="unit size1of4 project-info-inner"><h5 class="nomargin">BRIEF</h5>';

$val .= $scope->locally()->XML_val('BriefContent', null, true);
$val .= '</div>
				<div class="unit size1of4 project-info-inner"><h5 class="nomargin">DISCOVERY</h5>';

$val .= $scope->locally()->XML_val('DiscoveryContent', null, true);
$val .= '</div>
				<div class="unit size1of4 project-info-inner"><h5 class="nomargin">SOLUTION</h5>';

$val .= $scope->locally()->XML_val('SolutionContent', null, true);
$val .= '</div>
			</div>
		</div>
		
		
		
		
		
			
	</article>
	';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
	';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
</div>





<!--	OLD SLIDER

		<div id="carousel">
			<div class="cycle-slideshow"
				data-cycle-fx=carousel
				data-cycle-timeout=10000
				data-cycle-carousel-visible=3
    			data-cycle-swipe=true
				data-cycle-next="#next"
				data-cycle-prev="#prev"
				data-cycle-pager="#pager"
				data-cycle-pause-on-hover="true"
    			data-cycle-slides="> div.slide-wrapper"
    			data-cycle-caption="#custom-caption"
	    		data-cycle-caption-template="<h1>0{{slideNum}}</h1><h4>of</h4><h2>{{slideCount}}</h2>"
				>
			
				<div id="pager" class="cycle-pager"></div>
				<div id="custom-caption" class="floatR"></div>
				
				';

if ($scope->locally()->hasValue('Video', null, true)) { 
$val .= '
				<div class="slide-wrapper">
					';

$val .= $scope->locally()->XML_val('Video', null, true);
$val .= '	
				</div>
				';


}
$val .= '

				';

$scope->locally()->obj('PortfolioImage', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<div class="slide-wrapper" style="background-image:url(';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= ');"></div>
				';


}; $scope->popScope(); 
$val .= '
				
			</div>
					
			<a href=# id="prev"></a>
			<a href=# id="next"></a>
			
-->




';

