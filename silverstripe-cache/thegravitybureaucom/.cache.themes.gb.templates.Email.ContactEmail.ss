<?php
$val .= '<html>    
    <body>
  
        <p style="font-size:1.4em;color:#666;" >The following message was submitted to your site by <a href="mailto:';

$val .= $scope->locally()->XML_val('Email', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= ':</a></p>
          
        <p style="font-size:1.4em;color:#222;" class="comments">';

$val .= $scope->locally()->XML_val('Comments', null, true);
$val .= '</P> 
      
    </body>
</html>';

