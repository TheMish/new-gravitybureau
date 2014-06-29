<?php
$val .= '<!DOCTYPE html>

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
$val .= ' | ';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</title>
	<meta charset="utf-8">
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
	';

Requirements::themedCSS('responsive');
$val .= '
	
	<link rel="stylesheet" href="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/css/jquery.ias.css" type="text/css" />
	
	<link rel="shortcut icon" href="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/favicon.png" />	
	
</head>
<body class="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
if (!$scope->locally()->hasValue('Menu', array('2'), true)) { 
$val .= ' no-sidebar';


}
$val .= '" style="display:none;" ';

if ($scope->locally()->hasValue('i18nScriptDirection', null, true)) { 
$val .= 'dir="';

$val .= $scope->locally()->XML_val('i18nScriptDirection', null, true);
$val .= '"';


}
$val .= '>




';

$val .= SSViewer::execute_template('Header', $scope->getItem(), array(), $scope);

$val .= '





';

if ($scope->locally()->hasValue('BannerImage', null, true)) { 
$val .= '


	<div class="banner bg-parallax" style="background-image:url(';

$val .= $scope->locally()->obj('BannerImage', null, true)->XML_val('URL', null, true);
$val .= ');">
		
		

		';

if ($scope->locally()->hasValue('IntroPane', null, true)) { 
$val .= '
			<div class="section about">
				<div class="inner">
					';

if ($scope->locally()->hasValue('BannerCaption', null, true)) { 
$val .= '<h3 class="page-title serif">';

$val .= $scope->locally()->XML_val('BannerCaption', null, true);
$val .= '<span class="yellow">_</span></h3>';


}else { 
$val .= '<h3 class="page-title serif">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '<span class="yellow">_</span></h3>';


}
$val .= '
					';

$val .= $scope->locally()->XML_val('IntroPane', null, true);
$val .= '
				</div>
			</div>
		';


}
$val .= '
		
		';

if ($scope->locally()->XML_val('ClassName', null, true)=='BlogEntry') { 
$val .= '
		<div class="caption ';

if ($scope->locally()->hasValue('BannerCaption', null, true)) { 
$val .= 'my-caption';


}
$val .= '">
			
			';

if ($scope->locally()->hasValue('Date', null, true)) { 
$val .= '
			<div class="date">
				<h1><span class="day">';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('format', array('d'), true);
$val .= '</span></h1>
				<h5><span class="month">';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('format', array('M'), true);
$val .= '</span></h5> 
			</div>
			';


}
$val .= '
			
			<h2 class="center nomargin">';

if ($scope->locally()->hasValue('BannerCaption', null, true)) { 
$val .= $scope->locally()->XML_val('BannerCaption', null, true);

}else { 
$val .= $scope->locally()->XML_val('Title', null, true);

}
$val .= '</h2>
		</div>
		';


}
$val .= '
		
		
		
		<div class="gradient-fade" style="
			background-image: -webkit-linear-gradient(0.1deg, #';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '000';


}
$val .= ', rgba(38, 38, 38, 0) 90%);
			background-image: -o-linear-gradient(0.1deg, #';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '000';


}
$val .= ', rgba(38, 38, 38, 0) 90%);
			background-image: linear-gradient(0.1deg, #';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '000';


}
$val .= ', rgba(38, 38, 38, 0) 90%);
		"></div>
		<div class="overlay sizeFull" style="background-color:';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= '#';

$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '#000';


}
$val .= '"></div>
	</div>
	
	
';


}else if ($scope->locally()->XML_val('ClassName', null, true)=='BlogEntry') { 
$val .= '


	<div class="banner bg-parallax" style="background-image:url(';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/banner-default.jpg);">
		<div class="caption ';

if ($scope->locally()->hasValue('BannerCaption', null, true)) { 
$val .= 'my-caption';


}
$val .= '" style="background-color:';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= '#';

$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '#000';


}
$val .= '">
			
			';

if ($scope->locally()->hasValue('Date', null, true)) { 
$val .= '
			<div class="date">
				<h1><span class="day">';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('format', array('d'), true);
$val .= '</span></h1>
				<h5><span class="month">';

$val .= $scope->locally()->obj('Date', null, true)->XML_val('format', array('M'), true);
$val .= '</span></h5> 
			</div>
			';


}
$val .= '
			
			<h2 class="center nomargin">';

if ($scope->locally()->hasValue('BannerCaption', null, true)) { 
$val .= $scope->locally()->XML_val('BannerCaption', null, true);

}else { 
$val .= $scope->locally()->XML_val('Title', null, true);

}
$val .= '</h2>
		</div>
		
		<div class="gradient-fade" style="
			background-image: -webkit-linear-gradient(0.1deg, #';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '000';


}
$val .= ', rgba(38, 38, 38, 0) 90%);
			background-image: -o-linear-gradient(0.1deg, #';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '000';


}
$val .= ', rgba(38, 38, 38, 0) 90%);
			background-image: linear-gradient(0.1deg, #';

if ($scope->locally()->hasValue('AccentColor', null, true)) { 
$val .= $scope->locally()->XML_val('AccentColor', null, true);

}else { 
$val .= '000';


}
$val .= ', rgba(38, 38, 38, 0) 90%);
		"></div>
	</div>
	
	
';


}
$val .= '






<div class="main ';

if ($scope->locally()->hasValue('BannerImage', null, true)) { 
$val .= 'banner-page';


}
$val .= ' ';

if ($scope->locally()->XML_val('ClassName', null, true)=='BlogEntry') { 
$val .= 'banner-page';


}
$val .= ' ';

if ($scope->locally()->XML_val('URLSegment', null, true)=='home') { 
$val .= 'home';


}
$val .= '" role="main">
	<div class="inner typography line">
		';

$val .= $scope->locally()->XML_val('Layout', null, true);
$val .= '
	</div>
</div>




';

if ($scope->locally()->XML_val('ClassName', null, true)=='PortfolioPage') { 
$val .= '
';


}else { 
$val .= '

	<div id="footerContent">
		<div class="sizeFull footerTop">
			<div class="size1of4 over1of4 unit nopadding "><ul class="meta">
				<li><h6>
					<span class="serif">AUCKLAND</span> +64 9 306 4140 | <a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#">EMAIL US</a>
				</h6></li>
				<li><h6>
					<span class="serif">LOS ANGELES</span> 001 206 240 4949 | <a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#">EMAIL US</a>
				</h6></li>
			</ul></div>
			<div class="size1of2 unit nopadding largeLinkPanel">
				<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#contact" id="footerContact" class="smoothScroll"><h6>GET IN TOUCH</h6><img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/before-intro-arrow-blk.png" width="60" /></a>
			</div>
		</div>
		<div class="sizeFull footerMain">
			<div class="size1of2 over1of4">
				<h3 class="yellow serif">&ldquo;Any man who can drive safely while kissing a pretty girl is simply not giving the kiss the attention it deserves.&rdquo;</h3>
				<h6>Albert Einstein</h6>
				<hr />
				<h6>© 2014 gravitybureau. All rights reserved.</h6>
			</div>
		</div>
	</div> 
	
	';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array(), $scope);

$val .= '
';


}
$val .= '





<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/site.js"></script>
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/jquery-ias.js"></script>
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/smoothscroll.js"></script>

<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/jquery.superslides.js"></script>
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/waypoints.min.js"></script>

<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/instafeed.min.js"></script>

<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/splitflap.js"></script>
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/main.js"></script>
<script type="text/javascript" src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/Core.js"></script>



<script>



/* SUPERSLIDES */



	$(function() {
	  $(\'#slides\').superslides({
	    hashchange: false,
	    play: ';

if ($scope->locally()->XML_val('URLSegment', null, true)=='home') { 
$val .= '10500';


}else { 
$val .= '0';


}
$val .= '
	  });
	});
	
	
	
	$(document).on(\'animated.slides\', function(slide) {
		// slide number
	    slideIndex = $(\'#slides\').superslides(\'current\');
	    ';

if ($scope->locally()->XML_val('URLSegment', null, true)=='home') { 
$val .= '
	    
		    $(\'.slides-container li:nth-child(\' + (slideIndex + 1) + \')\').addClass(\'current\');
		    
		    if(slideIndex == 0) {
		    	$(\'.slides-container li:nth-child(';

$scope->locally()->obj('Slides', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
if ($scope->locally()->hasValue('Last', null, true)) { 
$val .= $scope->locally()->XML_val('TotalItems', null, true);

}

}; $scope->popScope(); 
$val .= ')\').removeClass(\'current\');
		    } else {
		    	$(\'.slides-container li:nth-child(\' + (slideIndex) + \')\').removeClass(\'current\');
		    }
		    
	    ';


}else { 
$val .= '
	    
		    $(\'.slides-container li:nth-child(\' + (slideIndex + 1) + \')\').addClass(\'current\');
		    
		    if(slideIndex == 0) {
		    	$(\'.slides-container li:nth-child(4)\').removeClass(\'current\');
		    } else {
		    	$(\'.slides-container li:nth-child(\' + (slideIndex) + \')\').removeClass(\'current\');
		    }
	    
	    ';


}
$val .= '
	    
	});
	
	
	
	$(document).on(\'animated.slides || init.slides\', function() {   
	
	     currentSlideIndex = $(\'#slides\').superslides(\'current\');
	     currentSlide = $(\'.slides-container > li\')[currentSlideIndex];
	
	    $("video").each(function () { this.pause() });
	
	    currentVid = $(currentSlide).find("video")[0];                  
	    if ($(currentVid).length) {     
	        $(currentVid)[0].oncanplaythrough = $(currentVid)[0].play() 
	    }
	
	});
	
	
	
	';

if ($scope->locally()->XML_val('ClassName', null, true)=='PortfolioPage') { 
$val .= '
	
		var lastScrollTop = 0;
		
		$(window).scroll(function(event){
		   var st = $(document).scrollTop();
		   if (st > lastScrollTop){
		       $(\'.slides-navigation .next\').click();
		   } else {
		      $(\'.slides-navigation .prev\').click();
		   }
		   lastScrollTop = st;
		});
		
	';


}else if ($scope->locally()->XML_val('URLSegment', null, true)=='home') { 
$val .= '
	
		var lastScrollTop = 0;
		
		$(window).scroll(function(event){
		   var st = $(document).scrollTop();
		   if (st > lastScrollTop){
		       $(\'.slides-navigation .next\').click();
		   } else {
		      $(\'.slides-navigation .prev\').click();
		   }
		   lastScrollTop = st;
		});
	';


}else { 
$val .= '
	';


}
$val .= '





';

if ($scope->locally()->XML_val('ClassName', null, true)=='AgentsPage') { 
$val .= '

	/* SPLITFLAP */

	
	$(document).ready(function() {
		$(\'#map\').waypoint(function(direction){
			$(\'.splitflap\').splitFlap({
				\'image\' : \'themes/gb/images/chars.png\',
				\'speed\' : 10,
				\'speedVariation\' : 10,
				\'charWidth\' : 100,
				\'charHeight\' : 100
			});
		}, { offset : \'90%\', triggerOnce: true });
	});
	
';


}
$val .= '




';

if ($scope->locally()->XML_val('ClassName', null, true)=='BlogHolder') { 
$val .= '

	/* INFINITE AJAX SCROLL */


	jQuery.ias({ 
	  container : \'#BlogContent\', 
	  item: \'.blogSummary\', 
	  pagination: \'.pagination\', 
	  next: \'.pagination a.next\', 
	  loader: \'<img src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/images/loader.gif"/>\',
	});
	
';


}
$val .= '


/* INSTAGRAM */


var userFeed = new Instafeed({
    get: \'user\',
    userId: 1331200540,
    accessToken: \'1331200540.467ede5.02babe4257ee4e1388899585d09598e2\',
    limit: 16,
    resolution: \'standard_resolution\'
});
userFeed.run();
    
    
    
    
';

if ($scope->locally()->XML_val('ClassName', null, true)=='PortfolioPage') { 
$val .= '

	/* Pause Vimeo */
    
    $(\'.slides-navigation\').click(function(){
		$("iframe").each(function() {
            this.contentWindow.postMessage(\'{ "method": "pause" }\', "http://player.vimeo.com");
        });
	});
    
';


}
$val .= '
    
    
    
    
</script>




<script>


/* Google Analytics */


 (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');

 ga(\'create\', \'UA-44018134-1\', \'thegravitybureau.com\');
 ga(\'send\', \'pageview\');

</script>



</body>
</html>
';

