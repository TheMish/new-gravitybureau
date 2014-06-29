</div> <!-- close inner -->

<% include BlogSideBar %>

<% if SelectedTag %>
		<div class="filterTitle"><div class="sizeFull">
			<h5 class="serif unit size1of2"><% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h5>
			<a class="size1of4 unitRightv closeSml" href="$Level(1).Title"><img src="$ThemeDir/images/close-small.png" width="20" /></a>
		</div></div>
		
	<% else_if SelectedDate %>
		<div class="filterTitle"><div class="sizeFull">
			<h5 class="serif"><% _t('BlogHolder_ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h5>
		</div></div>
		
	<% else_if SelectedAuthor %>
		<div class="filterTitle"><div class="sizeFull">
			<h5 class="serif"><% _t('BlogHolder_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h5>
		</div></div>
	<% end_if %>
	
<div id="BlogContent" class="unit blogcontent typography nopadding">
		
	<% include BreadCrumbs %>	
	
	<% if BlogEntries %>
		<% loop BlogEntries %>
			<% include BlogSummary %>
		<% end_loop %>
	<% else %>
		<h2><% _t('BlogHolder_ss.NOENTRIES', 'There are no blog entries') %></h2>
	<% end_if %>
	
	<% include BlogPagination %>
	
</div>
