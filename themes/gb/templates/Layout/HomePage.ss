</div> <!-- close inner -->
<div class="content-container">
	<article>
		
		<div id="slides" class="auto">
			<ul class="slides-container">
			
			
			
			
				<li class="slide<% if Tagline %> copy<% end_if %> custom">
					<img src="$ThemeDir/images/home-astro2.jpg" />
					<div class="container">
						<div class="content">
							<div class="custom-content">
								<hr>
								<br>
								<h1 class="switch" id="text-swap1">CREATIVE</h1><h1 class="move">AGENCY</h1>
								<h1>OF TOMORROW</h1>
								<br>
								<hr>
							</div>
						</div>
					</div>
				</li>
				
				
				
				<!--	ALTERNATIVE INTRO
				<li class="slide<% if Tagline %> copy<% end_if %> custom2">
					<img src="$ThemeDir/images/home-astro2.jpg" />
					<div class="container">
						<div class="content">
							<div class="custom-content2">
								<h2>CREATIVE AGENCY<br>OF TOMORROW</h2>
								<hr>
								<h3>We<span class="line">_</span></h3><div class="text-swap-wrap"><h3 id="text-swap2">create memorable brand experiences</h3></div><h3><span class="line">_</span></h3>
							</div>
						</div>
					</div>
				</li>
				-->
			
			
			
			
			<% loop Slides %>
			
				<li class="slide<% if Tagline %> copy<% end_if %>">
					<% if Video %>
						<video autoplay="autoplay">
							<source type="video/mp4" src="$Video.URL">
						</video>
					<% else %>
						$Slide
					<% end_if %>
					<div class="container">
					<div class="content">
					<% if Tagline %>
						<h1>$Tagline</h1>
						<h4>$Subtitle</h4>
						<a href="$ButtonLink" class="button large white">$ButtonText</a>
					<% else_if ButtonText %>
						<a href="$ButtonLink" class="button large white loneBtn">$ButtonText</a>
					<% end_if %>
					</div>
					</div>
					<% if ColorOverlay %><div class="overlay" style="background-color:#$ColorOverlay;"></div><% end_if %>
				</li>
				
			<% end_loop %>
							
				
				
			</ul>
		
			<nav class="slides-navigation">
				<a href="#" class="next"><img src="$ThemeDir/images/icon-next-wht.png" width="50" /></a>
				<a href="#" class="prev"><img src="$ThemeDir/images/icon-prev-wht.png" width="50" /></a>
			</nav>
		</div>

		
	</article>
		$Form
		$PageComments
</div>




