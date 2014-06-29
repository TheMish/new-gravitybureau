<header id="header" role="banner" class="<% if BannerImage %>banner-page<% else_if ClassName = BlogEntry %>banner-page<% end_if %>">
	
	<div class="sizeFull unit">
		
		
		<div class="header-logo size1of4 unit">
			<a href="$BaseHref" class="brand fadeLink" rel="home">
				
				<img src="$ThemeDir/images/logo-main.png" alt="$SiteConfig.Title" width="240" />
				
			</a>
		</div>
		
		
		<div class="header-reveal size1of4 unit">			
			<h4 class="serif currPage"><%-- $Title --%>Bringing brands back to earth™</h4>			
		</div>
		
		<% include Navigation %>
		
	</div>
			
</header>

<div id="contact" class="contact-hide">
	
	<div class="close"></div>

	<div class="social">
		<ul class="vertical-dark">
			<li class="fb"><a href="#"></a></li>
			<li class="twitter"><a href="#"></a></li>
			<li class="insta right"><a href="#"></a></li>
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
			$ContactForm
		</div>
		
	</div>
	
	
</div>
