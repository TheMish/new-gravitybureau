</div> <!-- end inner -->





<!--	STAFF
============================-->	



<div class="section staff">
	<% loop Staff %>
	<% if Visible %>
		<div class="stafftile-wrapper unit size1of5 ">
		
			<div class="stafftile" style="background-color:#000">
				<div class="staffimage"><img src="$Image.URL" /></div>
				<div class="staffhover"><img src="$ImageAlt.URL" height="100%" /></div>
				<h1>$Name</h1>
			</div>
			<div class="staffdetails">
				<ul>
					<li><h6><span class="serif">FULL TIME</span> $JobTitle</h6></li>
					<li><h6><span class="serif">PART TIME</span> $PartTime</h6></li>
				</ul>
			</div>
			
		</div>
	<% end_if %>
	<% end_loop %>
</div>







<!--	ABOUT
============================-->	
  
  
  
  
<div class="section join nopadding">
	<div class="size1of2 unit join">
		<div class="halfInner floatR">
			$Join
		</div>
	</div>
	<div class="size1of2 unit hire">
		<div class="halfInner">
			$Hire
		</div>
	</div>
	
	
	
</div>



<!--	ONE SHEET
============================-->	



<div class="section onesheet nopadding">

	<div class="yellowBar">
		<div class="size1of2 unit">
			<h3 class="serif" style="text-align:right; margin-right:40px; ">Download our One Sheet</h3>
		</div>
		<div class="size1of2 unit nopadding largeLinkPanel">
			<a href="$ThemeDir/images/One-Sheet.pdf" target="_blank"><img src="themes/gb/images/icon-onepage.png" height="50"></a>
		</div>
	</div>

</div>



<!--	MAP
============================-->	





<div class="section map" id="map">
	
	<div class="map-count unit size1of5 nopadding floatR">
		<div class="size5of6 unit widget nopadding">
			<h5 class="count-title">Total Yearly Flights</h5>
			<div class="splitflap">033</div>
		</div>
		<div class="size5of6 unit widget nopadding">
			<h5 class="count-title">New Zealand Clients</h5>
			<div class="splitflap">048</div>
		</div>
		<div class="size5of6 unit widget nopadding">
			<h5 class="count-title">Global Clients</h5>
			<div class="splitflap">011</div>
		</div>
	</div>
	
	<div class="map unit size4of5">
	</div>
	
	<div class="unit sizeFull nopadding key">
		<div class="size1of5 unit"><img class="floatL" src="$ThemeDir/images/icon-map1.png" width="50" /><h6 class="floatL">Office Locations</h6></div>
		<div class="size1of5 unit"><img class="floatL" src="$ThemeDir/images/icon-map2.png" width="50" /><h6 class="floatL">Client Locations</h6></div>
		<div class="size1of5 unit"><img class="floatL" src="$ThemeDir/images/icon-map3.png" width="50" /><h6 class="floatL">Vacation Destinations</h6></div>
		<div class="size1of5 unit"><img class="floatL" src="$ThemeDir/images/icon-map4.png" width="50" /><h6 class="floatL">Yearly Flight Paths</h6></div>
		<div class="size1of5 unit"><img class="floatL" src="$ThemeDir/images/icon-map5.png" width="50" /><h6 class="floatL">Country of Origin</h6></div>
	</div>
	
</div>




<!--	STATS
============================-->	



<div class="section onesheet nopadding">

	<div class="yellowBar">
		<div class="size1of2 unit">
			<h3 class="serif" style="text-align:right; margin-right:40px; ">This month we are...</h3>
		</div>
		<div class="size1of2 unit nopadding largeLinkPanel">
			<a id="stats-next" href="javascript:void();"><h6>VIEW MORE</h6><img src="themes/gb/images/before-intro-arrow-blk.png" width="60"></a>
		</div>
	</div>

</div>



<div class="section agencystats nopadding" id="agencystats">	
	<div id="slides">
		<ul class="slides-container">
		
		
		
			<li class="slide" style="background-image:url($ThemeDir/images/stat-slide-1.jpg); background-size:cover;" id="drinking">
				<div class="container">
					<div class="content">
				
						<h3 class="center serif">Drinking</h3>
						<hr class="white">
						
						<div class="inner">
						
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage1"></div>
									<img class="preserve" src="$ThemeDir/images/icon-coffee.png" />
									<canvas id="gauge1" width="180" height="180"></canvas>
								</div>
								<h5>Coffee</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage2"></div>
									<img class="preserve" src="$ThemeDir/images/icon-tea.png" />
									<canvas id="gauge2" width="180" height="180"></canvas>
								</div>
								<h5>Tea</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage3"></div>
									<img class="preserve" src="$ThemeDir/images/icon-beer.png" />
									<canvas id="gauge3" width="180" height="180"></canvas>
								</div>
								<h5>Beer</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage4"></div>
									<img class="preserve" src="$ThemeDir/images/icon-other-drink.png" />
									<canvas id="gauge4" width="180" height="180"></canvas>
								</div>
								<h5>Other</h5>
							</div>
							
						</div>
					</div>
				</div>
			</li>
			
			
			
			
			<li class="slide" style="background-image:url($ThemeDir/images/stat-slide-2.jpg);" id="eating">
				<div class="container">
					<div class="content">
				
						<h3 class="center serif">Eating</h3>
						<hr class="white">
						
						<div class="inner">
						
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage5"></div>
									<img class="preserve" src="$ThemeDir/images/icon-pie.png" />
									<canvas id="gauge5" width="180" height="180"></canvas>
								</div>
								<h5>Muzza's Pies</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage6"></div>
									<img class="preserve" src="$ThemeDir/images/icon-mexican.png" />
									<canvas id="gauge6" width="180" height="180"></canvas>
								</div>
								<h5>Mexican</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage7"></div>
									<img class="preserve" src="$ThemeDir/images/icon-indian.png" />
									<canvas id="gauge7" width="180" height="180"></canvas>
								</div>
								<h5>Indian</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage8"></div>
									<img class="preserve" src="$ThemeDir/images/icon-burger.png" />
									<canvas id="gauge8" width="180" height="180"></canvas>
								</div>
								<h5>Food Truck Burgers</h5>
							</div>
						
						</div>
					</div>
				</div>
			</li>
			
			
			
			
			<li class="slide" style="background-image:url($ThemeDir/images/stat-slide-3.jpg);" id="listening">
				<div class="container">
					<div class="content">
				
						<h3 class="center serif">Blasting</h3>
						<hr class="white">
							
						<div class="inner">
						
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage9"></div>
									<img class="preserve" src="$ThemeDir/images/icon-theboss.png" />
									<canvas id="gauge9" width="180" height="180"></canvas>
								</div>
								<h5>The Boss</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage10"></div>
									<img class="preserve" src="$ThemeDir/images/icon-pinkfloyd.png" />
									<canvas id="gauge10" width="180" height="180"></canvas>
								</div>
								<h5>Pink Floyd</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage11"></div>
									<img class="preserve" src="$ThemeDir/images/icon-thehorrors.png" />
									<canvas id="gauge11" width="180" height="180"></canvas>
								</div>
								<h5>The Horrors</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage12"></div>
									<img class="preserve" src="$ThemeDir/images/icon-daftpunk.png" />
									<canvas id="gauge12" width="180" height="180"></canvas>
								</div>
								<h5>Daft Punk</h5>
							</div>

						
						</div>
					</div>
				</div>
			</li>
			
			
			
			
			<li class="slide" style="background-image:url($ThemeDir/images/stat-slide-4.jpg);" id="watching">
				<div class="container">
					<div class="content">
			
						<h3 class="center serif">Watching</h3>
						<hr class="white">
						
						<div class="inner">
						
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage13"></div>
									<img class="preserve" src="$ThemeDir/images/icon-got.png" />
									<canvas id="gauge13" width="180" height="180"></canvas>
								</div>
								<h5>Game of Thrones</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage14"></div>
									<img class="preserve" src="$ThemeDir/images/icon-truedetective.png" />
									<canvas id="gauge14" width="180" height="180"></canvas>
								</div>
								<h5>True Detective</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage15"></div>
									<img class="preserve" src="$ThemeDir/images/icon-locke.png" />
									<canvas id="gauge15" width="180" height="180"></canvas>
								</div>
								<h5>Locke</h5>
							</div>
							
							<div class="size1of4 unit">
								<div class="stat">
									<div class="percentage" id="percentage16"></div>
									<img class="preserve" src="$ThemeDir/images/icon-heat.png" />
									<canvas id="gauge16" width="180" height="180"></canvas>
								</div>
								<h5>Heat</h5>
							</div>

						
						</div>
					</div>
				</div>
			</li>
			
		</ul>
	
		<nav class="slides-navigation">
			<a href="#" class="next"><img src="$ThemeDir/images/icon-next-wht.png" width="50" /></a>
			<a href="#" class="prev"><img src="$ThemeDir/images/icon-prev-wht.png" width="50" /></a>
		</nav>
	</div>
</div>













<!--	INSTAGRAM
============================-->	





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


<div class="section instagram" id="instafeed">
</div>




<!--	VISIT
============================-->	


<div class="section nopadding visit">
	<div class="center size1of3 unit over1of3">
		<h2>Visit the Bureau</h2>
		$Visit
		<hr />
		<a href="#contact" class="contactLink smoothScroll button large">GET IN TOUCH</a>
	</div>
</div>




<div class="content-container inner">
	<article>
		<div class="content">
		
			<!-- $Content -->
			
		</div>
	</article>
		$Form
		$PageComments
</div>
