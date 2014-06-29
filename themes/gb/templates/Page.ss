<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('reset') %>
	<% require themedCSS('typography') %>
	<% require themedCSS('form') %>
	<% require themedCSS('layout') %>
	<% require themedCSS('responsive') %>
	
	<link rel="stylesheet" href="$ThemeDir/css/jquery.ias.css" type="text/css" />
	
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.png" />	
	
</head>
<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" style="display:none;" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>




<% include Header %>





<% if BannerImage %>


	<div class="banner bg-parallax" style="background-image:url($BannerImage.URL);">
		
		

		<% if IntroPane %>
			<div class="section about">
				<div class="inner">
					<% if BannerCaption %><h3 class="page-title serif">$BannerCaption<span class="yellow">_</span></h3><% else %><h3 class="page-title serif">$Title<span class="yellow">_</span></h3><% end_if %>
					$IntroPane
				</div>
			</div>
		<% end_if %>
		
		<% if ClassName = BlogEntry %>
		<div class="caption <% if BannerCaption %>my-caption<% end_if %>">
			
			<% if Date %>
			<div class="date">
				<h1><span class="day">$Date.format(d)</span></h1>
				<h5><span class="month">$Date.format(M)</span></h5> 
			</div>
			<% end_if %>
			
			<h2 class="center nomargin"><% if BannerCaption %>$BannerCaption<% else %>$Title<% end_if %></h2>
		</div>
		<% end_if %>
		
		
		
		<div class="gradient-fade" style="
			background-image: -webkit-linear-gradient(0.1deg, #<% if AccentColor %>$AccentColor<% else %>000<% end_if %>, rgba(38, 38, 38, 0) 90%);
			background-image: -o-linear-gradient(0.1deg, #<% if AccentColor %>$AccentColor<% else %>000<% end_if %>, rgba(38, 38, 38, 0) 90%);
			background-image: linear-gradient(0.1deg, #<% if AccentColor %>$AccentColor<% else %>000<% end_if %>, rgba(38, 38, 38, 0) 90%);
		"></div>
		<div class="overlay sizeFull" style="background-color:<% if AccentColor %>#$AccentColor<% else %>#000<% end_if %>"></div>
	</div>
	
	
<% else_if ClassName = BlogEntry %>


	<div class="banner bg-parallax" style="background-image:url($ThemeDir/images/banner-default.jpg);">
		<div class="caption <% if BannerCaption %>my-caption<% end_if %>" style="background-color:<% if AccentColor %>#$AccentColor<% else %>#000<% end_if %>">
			
			<% if Date %>
			<div class="date">
				<h1><span class="day">$Date.format(d)</span></h1>
				<h5><span class="month">$Date.format(M)</span></h5> 
			</div>
			<% end_if %>
			
			<h2 class="center nomargin"><% if BannerCaption %>$BannerCaption<% else %>$Title<% end_if %></h2>
		</div>
		
		<div class="gradient-fade" style="
			background-image: -webkit-linear-gradient(0.1deg, #<% if AccentColor %>$AccentColor<% else %>000<% end_if %>, rgba(38, 38, 38, 0) 90%);
			background-image: -o-linear-gradient(0.1deg, #<% if AccentColor %>$AccentColor<% else %>000<% end_if %>, rgba(38, 38, 38, 0) 90%);
			background-image: linear-gradient(0.1deg, #<% if AccentColor %>$AccentColor<% else %>000<% end_if %>, rgba(38, 38, 38, 0) 90%);
		"></div>
	</div>
	
	
<% end_if %>






<div class="main <% if BannerImage %>banner-page<% end_if %> <% if ClassName = BlogEntry %>banner-page<% end_if %> <% if URLSegment = 'home' %>home<% end_if %>" role="main">
	<div class="inner typography line">
		$Layout
	</div>
</div>




<% if ClassName = PortfolioPage %>
<% else %>

	<div id="footerContent">
		<div class="sizeFull footerTop">
			<div class="size1of4 over1of4 unit nopadding "><ul class="meta">
				<li><h6>
					<span class="serif">AUCKLAND</span> +64 9 306 4140 | <a href="#">EMAIL US</a>
				</h6></li>
				<li><h6>
					<span class="serif">LOS ANGELES</span> 001 206 240 4949 | <a href="#">EMAIL US</a>
				</h6></li>
			</ul></div>
			<div class="size1of2 unit nopadding largeLinkPanel">
				<a href="#contact" id="footerContact" class="smoothScroll"><h6>GET IN TOUCH</h6><img src="$ThemeDir/images/before-intro-arrow-blk.png" width="60" /></a>
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
	
	<% include Footer %>
<% end_if %>





<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/site.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jquery-ias.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/smoothscroll.js"></script>

<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.superslides.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/waypoints.min.js"></script>

<script type="text/javascript" src="{$ThemeDir}/javascript/instafeed.min.js"></script>

<script type="text/javascript" src="{$ThemeDir}/javascript/splitflap.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/main.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/Core.js"></script>



<script>



/* SUPERSLIDES */



	$(function() {
	  $('#slides').superslides({
	    hashchange: false,
	    play: <% if URLSegment = home %>10500<% else %>0<% end_if %>
	  });
	});
	
	
	
	$(document).on('animated.slides', function(slide) {
		// slide number
	    slideIndex = $('#slides').superslides('current');
	    <% if URLSegment = home %>
	    
		    $('.slides-container li:nth-child(' + (slideIndex + 1) + ')').addClass('current');
		    
		    if(slideIndex == 0) {
		    	$('.slides-container li:nth-child(<% loop Slides %><% if Last %>$TotalItems<% end_if %><% end_loop %>)').removeClass('current');
		    } else {
		    	$('.slides-container li:nth-child(' + (slideIndex) + ')').removeClass('current');
		    }
		    
	    <% else %>
	    
		    $('.slides-container li:nth-child(' + (slideIndex + 1) + ')').addClass('current');
		    
		    if(slideIndex == 0) {
		    	$('.slides-container li:nth-child(4)').removeClass('current');
		    } else {
		    	$('.slides-container li:nth-child(' + (slideIndex) + ')').removeClass('current');
		    }
	    
	    <% end_if %>
	    
	});
	
	
	
	$(document).on('animated.slides || init.slides', function() {   
	
	     currentSlideIndex = $('#slides').superslides('current');
	     currentSlide = $('.slides-container > li')[currentSlideIndex];
	
	    $("video").each(function () { this.pause() });
	
	    currentVid = $(currentSlide).find("video")[0];                  
	    if ($(currentVid).length) {     
	        $(currentVid)[0].oncanplaythrough = $(currentVid)[0].play() 
	    }
	
	});
	
	
	
	<% if ClassName = PortfolioPage %>
	
		var lastScrollTop = 0;
		
		$(window).scroll(function(event){
		   var st = $(document).scrollTop();
		   if (st > lastScrollTop){
		       $('.slides-navigation .next').click();
		   } else {
		      $('.slides-navigation .prev').click();
		   }
		   lastScrollTop = st;
		});
		
	<% else_if URLSegment = home %>
	
		var lastScrollTop = 0;
		
		$(window).scroll(function(event){
		   var st = $(document).scrollTop();
		   if (st > lastScrollTop){
		       $('.slides-navigation .next').click();
		   } else {
		      $('.slides-navigation .prev').click();
		   }
		   lastScrollTop = st;
		});
	<% else %>
	<% end_if %>





<% if ClassName = AgentsPage %>

	/* SPLITFLAP */

	
	$(document).ready(function() {
		$('#map').waypoint(function(direction){
			$('.splitflap').splitFlap({
				'image' : 'themes/gb/images/chars.png',
				'speed' : 10,
				'speedVariation' : 10,
				'charWidth' : 100,
				'charHeight' : 100
			});
		}, { offset : '90%', triggerOnce: true });
	});
	
<% end_if %>




<% if ClassName = BlogHolder %>

	/* INFINITE AJAX SCROLL */


	jQuery.ias({ 
	  container : '#BlogContent', 
	  item: '.blogSummary', 
	  pagination: '.pagination', 
	  next: '.pagination a.next', 
	  loader: '<img src="$ThemeDir/images/loader.gif"/>',
	});
	
<% end_if %>


/* INSTAGRAM */


var userFeed = new Instafeed({
    get: 'user',
    userId: 1331200540,
    accessToken: '1331200540.467ede5.02babe4257ee4e1388899585d09598e2',
    limit: 16,
    resolution: 'standard_resolution'
});
userFeed.run();
    
    
    
    
<% if ClassName = PortfolioPage %>

	/* Pause Vimeo */
    
    $('.slides-navigation').click(function(){
		$("iframe").each(function() {
            this.contentWindow.postMessage('{ "method": "pause" }', "http://player.vimeo.com");
        });
	});
    
<% end_if %>
    
    
    
    
</script>




<script>


/* Google Analytics */


 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

 ga('create', 'UA-44018134-1', 'thegravitybureau.com');
 ga('send', 'pageview');

</script>



</body>
</html>
