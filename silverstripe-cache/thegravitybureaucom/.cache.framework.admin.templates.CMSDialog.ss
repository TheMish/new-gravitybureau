<?php
$val .= '<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
';

$val .= SSViewer::get_base_tag($val);
$val .= '
<title>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</title>
</head>

<body class="cms cms-dialog ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" lang="';

$val .= $scope->locally()->obj('Locale', null, true)->XML_val('RFC1766', null, true);
$val .= '">
	<div class="cms-dialog-content">
		';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
	</div>
</body>
</html>
';

