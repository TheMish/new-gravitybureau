<div class="work $Location<%if Pos = 13 %> large<% end_if %><%if First %> large<% end_if %> item">
	
	<a href="$Link">
	<div class="work-content">
		<div class="work-logo"><% if $Logo %>$Logo<% end_if %></div>
		<div class="work-copy">
			<%if First %><h3>$Title</h3><hr class="white"><h5>$ShortDescription</h5><% end_if %>
		</div>
				
		<%if First %>
			<% if $TileImageLarge %>$TileImageLarge<% else %>$TileImage<% end_if %>
		<% else %>
			<%if Pos = 13 %>
				<% if $TileImageLarge %>$TileImageLarge<% else %>$TileImage<% end_if %>
			<% else %>
				$TileImage
			<% end_if %>
		<% end_if %>
		
	</div>
	
	<div class="work-details">
		<ul>
			<li><h6><span class="serif">CLIENT</span> $Title</h6></li>
			<li><h6><span class="serif">SCOPE</span> $Scope</h6></li>
		</ul>
	</div>
	</a>
	
</div>