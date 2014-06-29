<?php
$val .= '<header class="header" role="banner">
	<div class="inner">
		<div class="unit size4of4 lastUnit">
			<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '" class="brand" rel="home">
				<h1>';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</h1>
				';

if ($scope->locally()->obj('SiteConfig', null, true)->hasValue('Tagline', null, true)) { 
$val .= '
				<p>';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Tagline', null, true);
$val .= '</p>
				';


}
$val .= '
			</a>
			';

if ($scope->locally()->hasValue('SearchForm', null, true)) { 
$val .= '
				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">
					';

$val .= $scope->locally()->XML_val('SearchForm', null, true);
$val .= '
				</div>
			';


}
$val .= '
			';

$val .= SSViewer::execute_template('Navigation', $scope->getItem(), array(), $scope);

$val .= '
		</div>
	</div>
</header>
';

