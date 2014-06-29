<div class="subnav">
	<div class="sizeFull unit">
		<a class="smoothScroll" href="#header"><div class="logo"></div></a>
		
		<div class="unit size1of2 nopadding">
			<% if $Menu(1) %>
				<h5 class="serif currPage"> $BreadCrumbs </h5>
			<% else %>
				<h5 class="serif currPage"> $Title </h5>			
			<% end_if %>
		</div>
		
		<div class="unit unitRightv nopadding">
			<div class="menu-btn"></div>
		</div>
	</div>
</div>