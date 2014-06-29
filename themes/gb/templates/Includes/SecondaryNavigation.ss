<%--Include SidebarMenu recursively --%>
<% if LinkOrSection = section %>
	<% if $Children %>
		<% loop $Children %>
			<li class="$LinkingMode">
				<a href="$Link" class="$LinkingMode" >
					<h5><span class="text">$MenuTitle.XML</span></h5>
				</a>
			</li>
		<% end_loop %>
	<% end_if %>
<% end_if %>
