</div> <!-- close inner -->
<div class="content-container">
	<article>
		
		
		
		<div id="slides" class="auto">
			<ul class="slides-container">
			
				
				<% if Video %>
					<div class="slide video-slide">
						$Video
					</div>
				<% end_if %>

				<% loop $PortfolioImage %>
					<li class="slide">
						<img src="$URL" />
						<% if Caption %>$Caption<% end_if %>
					</li>
				<% end_loop %>
			
			
			</ul>
		
			<nav class="slides-navigation">
				<a href="#" class="next"><img src="$ThemeDir/images/icon-next-wht.png" width="50" /></a>
				<a href="#" class="prev"><img src="$ThemeDir/images/icon-prev-wht.png" width="50" /></a>
			</nav>
			
			
		</div>
		
		
		
		<div class="project-btns">
			<div class="project-back"><a href="./work"><img src="$ThemeDir/images/icon-grid-ylw.png" alt="more-info"></a></div>
			<div class="project-info-btn openclose"><img src="$ThemeDir/images/icon-open-ylw.png" alt="more-info"></div>
		</div>
		
		<div class="project-info-wrapper">
			<div class="project-info">
				<div class="unit size1of4 project-info-inner">
					<h2 class="nomargin">$Title</h2>
					<br>
					<br>
					
					<h5 class="serif nomargin textbackground">THE TEAM</h5>
					<ul class="meta">
						<% with Staff %><li><h6><span class="serif">$JobTitle:</span> $Name</h6></li><% end_with %>
						<% if Office %><li><h6><span class="serif">Office:</span> $Office</h6></li><% end_if %>
					</ul>
					
					<h5 class="serif nomargin textbackground">THE CLIENT</h5>
					<ul class="meta">
						<% with Client %>
							<% if Client %><li><h6><span class="serif">Client:</span> $Client</h6></li><% end_if %>
							<% if Location %><li><h6><span class="serif">Location:</span> $Location</h6></li><% end_if %>
							<% if Industry %><li><h6><span class="serif">Industry:</span> $Industry</h6></li><% end_if %>
						<% end_with %>
					</ul>
					
					<h5 class="serif nomargin textbackground">THE PROJECT</h5>
					<ul class="meta">
						<% if Scope %><li><h6><span class="serif">Scope:</span> $Scope</span></h6></li><% end_if %>
						
						<% if $HybridContent %>
						<li class="hybridcontent"><h6>
							<h6 class="serif">HYBRID CONTENT</h6>
							<% loop $HybridContentCollection %>
								<img src="$ThemeDir/images/{$HybridContent}.png" />
							<% end_loop %>
						</h6></li>
						<% end_if %>
					</ul>
					
				</div>
				<div class="unit size1of4 project-info-inner"><h5 class="nomargin">BRIEF</h5>$BriefContent</div>
				<div class="unit size1of4 project-info-inner"><h5 class="nomargin">DISCOVERY</h5>$DiscoveryContent</div>
				<div class="unit size1of4 project-info-inner"><h5 class="nomargin">SOLUTION</h5>$SolutionContent</div>
			</div>
		</div>
		
		
		
		
		
			
	</article>
	$Form
	$PageComments
</div>





<!--	OLD SLIDER

		<div id="carousel">
			<div class="cycle-slideshow"
				data-cycle-fx=carousel
				data-cycle-timeout=10000
				data-cycle-carousel-visible=3
    			data-cycle-swipe=true
				data-cycle-next="#next"
				data-cycle-prev="#prev"
				data-cycle-pager="#pager"
				data-cycle-pause-on-hover="true"
    			data-cycle-slides="> div.slide-wrapper"
    			data-cycle-caption="#custom-caption"
	    		data-cycle-caption-template="<h1>0{{slideNum}}</h1><h4>of</h4><h2>{{slideCount}}</h2>"
				>
			
				<div id="pager" class="cycle-pager"></div>
				<div id="custom-caption" class="floatR"></div>
				
				<% if Video %>
				<div class="slide-wrapper">
					$Video	
				</div>
				<% end_if %>

				<% loop $PortfolioImage %>
					<div class="slide-wrapper" style="background-image:url($URL);"></div>
				<% end_loop %>
				
			</div>
					
			<a href=# id="prev"></a>
			<a href=# id="next"></a>
			
-->




