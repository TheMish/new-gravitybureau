<?php
$val .= '<?xml version="1.0"?>
<rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:atom="http://www.w3.org/2005/Atom">
	<channel>
		<title>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</title>
		<link>';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '</link>
		<atom:link href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" rel="self" type="application/rss+xml" />
		<description>';

$val .= $scope->locally()->obj('Description', null, true)->XML_val('XML', null, true);
$val .= '</description>

		';

$scope->locally()->obj('Entries', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<item>
			<title>';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '</title>
			<link>';

$val .= $scope->locally()->XML_val('AbsoluteLink', null, true);
$val .= '</link>
			';

if ($scope->locally()->hasValue('Description', null, true)) { 
$val .= '<description>';

$val .= $scope->locally()->obj('Description', null, true)->obj('AbsoluteLinks', null, true)->XML_val('XML', null, true);
$val .= '</description>';


}
$val .= '
			';

if ($scope->locally()->hasValue('Date', null, true)) { 
$val .= '<pubDate>';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('Rfc822', null, true);
$val .= '</pubDate>
			';


}else { 
$val .= '<pubDate>';

$val .= $scope->locally()->obj('Created', null, true)->XML_val('Rfc822', null, true);
$val .= '</pubDate>';


}
$val .= '
			';

if ($scope->locally()->hasValue('Author', null, true)) { 
$val .= '<dc:creator>';

$val .= $scope->locally()->obj('Author', null, true)->XML_val('XML', null, true);
$val .= '</dc:creator>';


}
$val .= '
			<guid>';

$val .= $scope->locally()->XML_val('AbsoluteLink', null, true);
$val .= '</guid>
		</item>
		';


}; $scope->popScope(); 
$val .= '
	</channel>
</rss>
';

