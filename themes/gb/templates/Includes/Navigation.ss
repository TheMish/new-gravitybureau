
<span class="nav-open-button">
	<a href="#" class="menu-container">
	  <div id="bar1" class="menu-bar"></div>
	  <div id="bar2" class="menu-bar"></div>
	  <div id="bar3" class="menu-bar"></div>
	</a>
</span>

<nav class="primary size3of4 floatR">
	
	<ul class="main-nav">
		<% loop $Menu(1) %>
			<li class="$LinkingMode"><a href="$Link" class="fadeLink"><h6>$MenuTitle.XML</h6></a></li>
		<% end_loop %>
			<li class="contact"><a class="smoothScroll" href="#contact"><h6>CONTACT</h6></a></li>
	</ul>
	
</nav>
