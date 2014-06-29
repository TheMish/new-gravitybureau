</div><!-- end inner -->

<div class="content-container unit sizeFull nopadding portfolio-container">

	<section id="content">
	<div id="container" class="masonry">
		<% loop $Children %>
			<% include PortfolioItem %>
		<% end_loop %>
	</div>
	</section>
	
	$Form
	$PageComments
		
</div>