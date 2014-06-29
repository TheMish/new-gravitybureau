<?php
$val .= '<footer class="footer" role="contentinfo">
	<div class="inner">
		<div class="unit size4of4 lastUnit">
			<div class="left">
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '" class="brand" rel="home">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</a>
				<span class="arrow">&rarr;</span> ';

$val .= SSViewer::execute_template('Navigation', $scope->getItem(), array(), $scope);

$val .= '</div>
			<small class="right"><a href="http://simple.innovatif.com/about/">Theme</a> by <a href="http://www.saratusar.com">Sara</a> (Innovatif) / Powered by <a href="http://silverstripe.org">SilverStripe</a></small>
		</div>
	</div>
</footer>';

