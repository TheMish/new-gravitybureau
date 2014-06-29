<?php
$val .= '</div> <!-- close inner -->
<div class="content-container">
	<article>
		
		<div id="slides" class="auto">
			<ul class="slides-container">
			
			
			
			
				<li class="slide';

if ($scope->locally()->hasValue('Tagline', null, true)) { 
$val .= ' copy';


}
$val .= ' custom">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/home-astro2.jpg" />
					<div class="container">
						<div class="content">
							<div class="custom-content">
								<hr>
								<br>
								<h1 class="switch" id="text-swap1">CREATIVE</h1><h1 class="move">AGENCY</h1>
								<h1>OF TOMORROW</h1>
								<br>
								<hr>
							</div>
						</div>
					</div>
				</li>
				
				
				
				<!--	ALTERNATIVE INTRO
				<li class="slide';

if ($scope->locally()->hasValue('Tagline', null, true)) { 
$val .= ' copy';


}
$val .= ' custom2">
					<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/home-astro2.jpg" />
					<div class="container">
						<div class="content">
							<div class="custom-content2">
								<h2>CREATIVE AGENCY<br>OF TOMORROW</h2>
								<hr>
								<h3>We<span class="line">_</span></h3><div class="text-swap-wrap"><h3 id="text-swap2">create memorable brand experiences</h3></div><h3><span class="line">_</span></h3>
							</div>
						</div>
					</div>
				</li>
				-->
			
			
			
			
			';

$scope->locally()->obj('Slides', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			
				<li class="slide';

if ($scope->locally()->hasValue('Tagline', null, true)) { 
$val .= ' copy';


}
$val .= '">
					';

if ($scope->locally()->hasValue('Video', null, true)) { 
$val .= '
						<video autoplay="autoplay">
							<source type="video/mp4" src="';

$val .= $scope->locally()->obj('Video', null, true)->XML_val('URL', null, true);
$val .= '">
						</video>
					';


}else { 
$val .= '
						';

$val .= $scope->locally()->XML_val('Slide', null, true);
$val .= '
					';


}
$val .= '
					<div class="container">
					<div class="content">
					';

if ($scope->locally()->hasValue('Tagline', null, true)) { 
$val .= '
						<h1>';

$val .= $scope->locally()->XML_val('Tagline', null, true);
$val .= '</h1>
						<h4>';

$val .= $scope->locally()->XML_val('Subtitle', null, true);
$val .= '</h4>
						<a href="';

$val .= $scope->locally()->XML_val('ButtonLink', null, true);
$val .= '" class="button large white">';

$val .= $scope->locally()->XML_val('ButtonText', null, true);
$val .= '</a>
					';


}else if ($scope->locally()->hasValue('ButtonText', null, true)) { 
$val .= '
						<a href="';

$val .= $scope->locally()->XML_val('ButtonLink', null, true);
$val .= '" class="button large white loneBtn">';

$val .= $scope->locally()->XML_val('ButtonText', null, true);
$val .= '</a>
					';


}
$val .= '
					</div>
					</div>
					';

if ($scope->locally()->hasValue('ColorOverlay', null, true)) { 
$val .= '<div class="overlay" style="background-color:#';

$val .= $scope->locally()->XML_val('ColorOverlay', null, true);
$val .= ';"></div>';


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

		
	</article>
		';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('PageComments', null, true);
$val .= '
</div>




';

