<?php
$val .= '<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '" class="ie ie8"><![endif]-->
<head>
	';

$val .= SSViewer::get_base_tag($val);
$val .= '
	<title>';

if ($scope->locally()->hasValue('MetaTitle', null, true)) { 
$val .= $scope->locally()->XML_val('MetaTitle', null, true);

}else { 
$val .= $scope->locally()->XML_val('Title', null, true);

}
$val .= ' &raquo; ';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	';

$val .= $scope->locally()->XML_val('MetaTags', array('false'), true);
$val .= '
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	';

Requirements::themedCSS('reset');
$val .= '
	';

Requirements::themedCSS('typography');
$val .= '
	';

Requirements::themedCSS('form');
$val .= '
	';

Requirements::themedCSS('layout');
$val .= '
	<link rel="shortcut icon" href="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/favicon.ico" />
</head>
<body class="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
if (!$scope->locally()->hasValue('Menu', array('2'), true)) { 
$val .= ' no-sidebar';


}
$val .= '" ';

if ($scope->locally()->hasValue('i18nScriptDirection', null, true)) { 
$val .= 'dir="';

$val .= $scope->locally()->XML_val('i18nScriptDirection', null, true);
$val .= '"';


}
$val .= '>
';

$val .= SSViewer::execute_template('Header', $scope->getItem(), array(), $scope);

$val .= '
<div class="main" role="main">
	<div class="inner typography line">
		';

$val .= $scope->locally()->XML_val('Layout', null, true);
$val .= '
	</div>
</div>
';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array(), $scope);

$val .= '

';

Requirements::javascript('framework/thirdparty/jquery/jquery.js');
$val .= '
';


$val .= '
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/script.js"></script>

</body>
</html>
';

