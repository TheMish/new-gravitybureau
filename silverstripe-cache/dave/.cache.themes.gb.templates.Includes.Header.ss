<?php
$val .= '<header id="header" role="banner" class="';

if ($scope->locally()->hasValue('BannerImage', null, true)) { 
$val .= 'banner-page';


}else if ($scope->locally()->XML_val('ClassName', null, true)=='BlogEntry') { 
$val .= 'banner-page';


}
$val .= '">
	
	<div class="sizeFull unit">
		
		
		<div class="header-logo size1of4 unit">
			<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '" class="brand fadeLink" rel="home">
				
				<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/logo-main.png" alt="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '" width="240" />
				
			</a>
		</div>
		
		
		<div class="header-reveal size1of4 unit">			
			<h4 class="serif currPage">';


$val .= 'Bringing brands back to earth™</h4>			
		</div>
		
		';

$val .= SSViewer::execute_template('Navigation', $scope->getItem(), array(), $scope);

$val .= '
		
	</div>
			
</header>

<div id="contact" class="contact-hide">
	
	<div class="close"></div>

	<div class="social">
		<ul class="vertical-dark">
			<li class="fb"><a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#"></a></li>
			<li class="twitter"><a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#"></a></li>
			<li class="insta right"><a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#"></a></li>
		</ul>
	</div>

	<div class="sizeFull nopadding">
		
		<div class="contact-details">
			<ul class="vertical-dark">
			
				<li>
					<h3 class="nomargin serif">Auckland</h3>
					<h6 class="nomargin yellow">+64 9 306 4140</h6>
					<a href="mailto:nzaction@thegravitybureau.com"><h6 class="nomargin yellow">NZACTION@THEGRAVITYBUREAU.COM</h6></a>
				</li>
				
				<li class="borders">
					<h3 class="nomargin serif">Los Angeles</h3>
					<h6 class="nomargin yellow">001 206 240 4949</h6>
					<a href="mailto:usaction@thegravitybureau.com"><h6 class="nomargin yellow">USACTION@THEGRAVITYBUREAU.COM</h6></a>
				</li>
				
			</ul>
		</div>
		
		<div class="contact-form">
			';

$val .= $scope->locally()->XML_val('ContactForm', null, true);
$val .= '
		</div>
		
	</div>
	
	
</div>
';

