</div> <!-- end inner -->





<!--	GB CORE
===================================-->



	
	

<div class="section gbcore">
<div class="section introduction">
	<div class="inner title-wrap">
		<h3 class="serif">Hybrid Content™ System</h3>
		<hr class="left" />
	</div>
	<div class="inner">
		<div class="size1of2 unit nopadding">
			$Introduction
		</div>
		<div class="size1of2 unit">
			
			
			
			<div class="hybrid-content-diagram">
			
				<div class="hc-center"></div>
				
				<div class="hc-element left" id="strategy">
					<div class="hc-content"><h4></h4></div>
					<div class="pulse"></div>
				</div>
				<div class="hc-element" id="design">
					<div class="hc-content"><h4></h4></div>
					<div class="pulse"></div>
				</div>
				<div class="hc-element" id="creative">
					<div class="hc-content"><h4></h4></div>
					<div class="pulse"></div>
				</div>
				<div class="hc-element" id="digital">
					<div class="hc-content"><h4></h4></div>
					<div class="pulse"></div>
				</div>
				<div class="hc-element left" id="media">
					<div class="hc-content"><h4></h4></div>
					<div class="pulse"></div>
				</div>
				<div class="hc-element left" id="brand" >
					<div class="hc-content"><h4></h4></div>
					<div class="pulse"></div>
				</div>
				
				<div class="hc-bg-ring first"></div>
				<div class="hc-bg-ring second"></div>
				<div class="hc-bg-ring third"></div>
				
			</div>

			
		</div>
	</div>
</div>

	
	
	
	<div class="section nav">
			<ul>
				<li class="size1of3 unit serv1">
					<a id="servBtn-1" href="javascript:void(0)">
						<h4>Brand Strategy</h4><div class="servBtn-icon" style="background-image:url($ThemeDir/images/hc-icon-strategy.png);"><img src="$ThemeDir/images/hc-icon-strategy-b.png" /></div>
					</a>
				</li>
				<li class="size1of3 unit serv2">
					<a id="servBtn-2" href="javascript:void(0)">
						<h4>Creative Direction</h4><div class="servBtn-icon" style="background-image:url($ThemeDir/images/hc-icon-design.png);"><img src="$ThemeDir/images/hc-icon-design-b.png" /></div>
					</a>
				</li>
				<li class="size1of3 unit serv3">
					<a id="servBtn-3" href="javascript:void(0)">
						<h4>Design Direction</h4><div class="servBtn-icon" style="background-image:url($ThemeDir/images/hc-icon-creative.png);"><img src="$ThemeDir/images/hc-icon-creative-b.png" /></div>
					</a>
				</li>
				<li class="size1of3 unit serv4">
					<a id="servBtn-4" href="javascript:void(0)">
						<h4>Creative Content</h4><div class="servBtn-icon" style="background-image:url($ThemeDir/images/hc-icon-digital.png);"><img src="$ThemeDir/images/hc-icon-digital-b.png" /></div>
					</a>
				</li>
				<li class="size1of3 unit serv5">
					<a id="servBtn-5" href="javascript:void(0)">
						<h4>Media</h4><div class="servBtn-icon" style="background-image:url($ThemeDir/images/hc-icon-media.png);"><img src="$ThemeDir/images/hc-icon-media-b.png" /></div>
					</a>
				</li>
				<li class="size1of3 unit serv6">
					<a id="servBtn-6" href="javascript:void(0)">
						<h4>Brand Activation</h4><div class="servBtn-icon" style="background-image:url($ThemeDir/images/hc-icon-brand.png);"><img src="$ThemeDir/images/hc-icon-brand-b.png" /></div>
					</a>
				</li>
			</ul>
	</div>
	
	
	
	<div class="section gbcore-content">
		<div class="services-nav">
			<ul>
				<li><a id="service-cycle-link" href="#"><img src="$ThemeDir/images/icon-next-blk.png" /></a></li>
				<li><a id="service-cycle-link-prev" href="#"><img src="$ThemeDir/images/icon-prev-blk.png" /></a></li>
				<li><a id="service-close" href="javascript:void(0)"><img src="$ThemeDir/images/icon-close-blk.png" /></a></li>
			</ul>
		</div>
		<div class="inner" id="service-holder">
			<% loop Services %>
			
				<div class="sizeFull unit service serv-$Pos" id="service-$Pos">
					<div class="title unit section">
						<div class="service-icon" style="background-image:url($ThemeDir/images/hc-icon-{$Pos}.png);"></div>
						<h2>$Title</h2>
					</div>
					<div class="size1of3 unit">
						$Services
					</div>
					<div class="size3of5 floatR unit">
						<p>$Content</p>
					</div>
				</div>
			
			<% end_loop %>
			
		</div>
	</div>
	

</div>





<!--	TESTIMONIALS
===================================-->



<% with Page(agents-of-action) %>
<div class="sizeFull section testimonials">
	<div class="size1of2 unit">
		<div class="halfInner floatR testimonials-container" id="testimonials-holder">
		<% if Testimonials %>
		<% loop Testimonials %>
			<div class="testimonial <% if Pos == 1 %>current<% end_if %>">
				$Testimonial
				<h6>$Author</h6>
			</div>
		<% end_loop %>
		<% end_if %>
						
		</div>
	</div>
	<div class="size1of3 unit floatR largeLinkPanel">
		<a id="testimonial-cycle-link" href="#">
		<img src="$ThemeDir/images/before-intro-arrow-blk.png" />
		<h6>Next happy client</h6>
		</a>
	</div>
</div>
<% end_with %>




<div class="section nopadding">

	<div class="yellowBar">
		<div class="size1of2 unit">
			<h3 class="serif" style="text-align:right; margin-right:40px; ">Inside the bureau</h3>
		</div>
		<div class="size1of2 unit nopadding largeLinkPanel">
			<a href="javascript:void();"><img src="themes/gb/images/icon-insta-b.png" height="40"></a>
		</div>
	</div>

</div>
<div class="sizeFull section instagram" id="instafeed">
</div>


<!--	VISIT
============================-->	


<div class="section nopadding visit">
	<div class="center size1of3 unit over1of3">
		<h2>Visit the Bureau</h2>
		<% with Page(agents-of-action) %>$Visit<% end_with %>
		<hr />
		<a href="#contact" class="contactLink smoothScroll button large">GET IN TOUCH</a>
	</div>
</div>



<div class="inner">
	$Form
	$PageComments
</div>

</div>
