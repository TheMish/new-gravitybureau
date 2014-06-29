<?php
if ($scope->locally()->obj('BlogEntries', null, true)->hasValue('MoreThanOnePage', null, true)) { 
$val .= '
<div class="pagination">
	<ul class="PageNumbers">
		';

if ($scope->locally()->obj('BlogEntries', null, true)->hasValue('NotFirstPage', null, true)) { 
$val .= '
			<li class="prev">
				<a class="paginate-left" href="';

$val .= $scope->locally()->obj('BlogEntries', null, true)->XML_val('PrevLink', null, true);
$val .= '" title="View the previous page">&lt;</a>
			</li>
		';


}else { 
$val .= '	
			<li class="prev disabled">
				<a class="paginate-left disabled">&lt;</a>
			</li>
		';


}
$val .= '
	
    	';

$scope->locally()->obj('BlogEntries', null, true)->obj('PaginationSummary', array('4'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			';

if ($scope->locally()->hasValue('CurrentBool', null, true)) { 
$val .= '
				<li class="active"><a class="disabled">';

$val .= $scope->locally()->XML_val('PageNum', null, true);
$val .= '</a></li>
			';


}else { 
$val .= '
				';

if ($scope->locally()->hasValue('Link', null, true)) { 
$val .= '
					<li>
						<a class="';

if ($scope->locally()->hasValue('BeforeCurrent', null, true)) { 
$val .= 'paginate-left';


}else { 
$val .= 'paginate-right';


}
$val .= '" href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">
						';

$val .= $scope->locally()->XML_val('PageNum', null, true);
$val .= '
						</a>
					</li>
				';


}else { 
$val .= '
					<li class="disabled"><a class="disabled">&hellip;</a></li>						
				';


}
$val .= '
			';


}
$val .= '
		';


}; $scope->popScope(); 
$val .= '
	
		';

if ($scope->locally()->obj('BlogEntries', null, true)->hasValue('NotLastPage', null, true)) { 
$val .= '
			<li class="next">
				<a class="next paginate-right" href="';

$val .= $scope->locally()->obj('BlogEntries', null, true)->XML_val('NextLink', null, true);
$val .= '" title="View the next page">&gt;</a>
			</li>
		';


}else { 
$val .= '
			<li class="next disabled">
				<a class="next paginate-right disabled">&gt;</a>
			</li>
		';


}
$val .= '
	</ul>
</div>
';


}
