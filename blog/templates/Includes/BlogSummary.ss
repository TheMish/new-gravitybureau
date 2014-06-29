<div class="blogSummary sizeFull">
	
	<div class="date">
		<h1><span class="day">$Date.format(d)</span></h1>
		<h6><span class="month">$Date.format(F)</span></h6> 
	</div>
	
	<div class="unit over1of3 summary <% if BannerImage %>photo<% end_if %>">
		
		<% if Client %>
			<% with Client %><div class="topic" style="background-image:url($TileImage.URL);"></div><% end_with %>
		<% else %>
			<div class="topic <% loop TagsCollection %>$Tag<% end_loop %>">
				<% loop TagsCollection %>
					<a class="tagFilter" href="$Link" title="View all posts tagged '$Tag'" rel="tag"></a>
				<% end_loop %>
			</div>
		<% end_if %>
		
		
		<% if PostImage %>
			<div class="newswire-image" style="background-image:url($PostImage.URL);"></div>
		<% else %>
			<div class="newswire-image" style="background-image:url($BannerImage.URL);"></div>
		<% end_if %>
		
		<div class="postContent">
		
			<h2 class="postTitle"><a href="$Link" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
			
			$Content.FirstParagraph(html)
			
				<div class="blogVitals">
				
				<% if Staff %>
					<h6><% with Staff %><div class="authorImage">$Image.CroppedImage(30,30)</div>$Name</h6><% end_with %>
				<% else %>
					<h6><% if Author %><span class="authorImage $Author.XML"></span>$Author.XML </h6><% end_if %>
				<% end_if %>
				
					<h6><span class="dateImage"><img src="$ThemeDir/images/dateIcon.png" height="100%" /></span> $Date.Long</h6>
				</div>
						
		</div>
	</div>
</div>
