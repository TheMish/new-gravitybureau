
</div> <!-- close inner -->


<div class="content-container">

	<div id="BlogContent" class="typography">
		
		
		
		<div class="blogMeta">
			
			<div class="size1of2 unit floatR nopadding largeLinkPanel">
				<a href="$BaseHref/work"><h6>View related work</h6><img src="$ThemeDir/images/before-intro-arrow-blk.png" width="60" /></a>
			</div>

			<ul class="halfInner floatR nopadding meta">
				<li><h6>
					<span class="serif">Posted by</span> <% with Staff %>$Name<% end_with %> on $Date.Long
				</h6></li>
				<li><h6>
					<span class="serif">Tagged:</span>
					<% loop TagsCollection %>
						<a class="tagFilter" href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
					<% end_loop %>
				</h6></li>
			</ul>
						
		</div>
		
		
		
		<div class="section nopadding">
			<div class="blogEntry inner">
			
				<div class="blogEntry-content size2of3 unit">
					
					$Content
					
				</div>
				
				<% with Client %>
				<div class="unit size1of3">
				
					<h3 class="serif">About $Client</h3>
					
					<ul class="meta">
						<li><h6><span class="serif">Client:</span> $Client</h6></li>
						<li><h6><span class="serif">Location:</span> $Location</h6></li>
						<li><h6><span class="serif">Industry:</span> $Industry</h6></li>
					</ul>
					<br>
											
					<p>$About</p>
					
				</div>
				<% end_with %>
					
			<div>
		</div>
		
		
		
		<div class="section nopadding">
			<div class="inner">
				
				
			</div>
		</div>
		
			
			
	</div>
		
</div>
</div>
</div>