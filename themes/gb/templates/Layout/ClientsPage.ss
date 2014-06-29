<div class="content-container inner">
	<article>
		<div class="content">
			
			<h1>$Title</h1>
			$Content
			
			
			
		</div>
	</article>
</div>

<div class="section">
	<div class="inner">
	
	
	
		<% loop getClients %> 
			<div class="size1of2 unit">
				<h4 class="serif floatL nomargin">$Client</h4>
				<h6 class="floatR nomargin">$Owner</h6>
				<hr class="full">
			</div>
		<% end_loop %>
		
		
	</div>
</div>

<div class="inner">
	$Form
	$PageComments
</div>

