<?php
$val .= '<footer class="footer" id="footer" role="contentinfo">
	
	<div id="footerClocks">
    	<div>
    		<ul class="time-bar">
			
    			<a class="smoothScroll" href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#contact">
	    		<li class="auckland">
	    			<div class="time-wrap " ontouchstart="this.classList.toggle(\'hover\')">
		    			<div class="time-content">
				    		<div class="front face">
				    			<h5 class="serif">AUCKLAND</h5>
				    		</div>
				    		<div class="back face">
				    			<h3><span id="auckland-hour" class="hours"></span><span id="auckland-min" class="minutes"></span></h3>
				    		</div>
		    			</div>
	    			</div>
	    		</li>
				</a>
	    		
    			<a class="smoothScroll" href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#contact">
	    		<li class="los-angeles">
	    			<div class="time-wrap " ontouchstart="this.classList.toggle(\'hover\')">
		    			<div class="time-content">
				    		<div class="front face">
				    			<h5 class="serif">LOS ANGELES</h5>
				    		</div>
				    		<div class="back face">
				    			<h3><span id="la-hour" class="hours"></span><span id="la-min" class="minutes"></span></h3>
				    		</div>
		    			</div>
	    			</div>
	    		</li>
				</a>
				
    			<a class="smoothScroll" href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#contact">
	    		<li class="text right">
	    			<div class="time-wrap " ontouchstart="this.classList.toggle(\'hover\')">
		    			<div class="time-content">
				    		<div class="front face">
				    			<h3 class="serif">24/7</h3>
				    		</div>
				    		<div class="back face">
				    			<h5 class="serif">ALWAYS IN<br> ACTION</span></h5>
				    		</div>
		    			</div>
	    			</div>
	    		</li>
				</a>
				
    		</ul>    	
    	</div>   
	</div>
	
</footer>';

