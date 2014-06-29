<?php
$val .= '<tr>
	<th class="extra sortablerowsheading" colspan="';

$val .= $scope->locally()->XML_val('Colspan', null, true);
$val .= '">
		<div class="gridfield-sortablerows">
			 <input type="checkbox" id="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '_AllowDragDropCheck" value="1" class="no-change-track"';

$val .= $scope->locally()->XML_val('Checked', null, true);
$val .= '/> <label for="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '_AllowDragDropCheck">';

$val .= _t('GridFieldSortableRows.ALLOW_DRAG_DROP',"Allow drag and drop re-ordering");
$val .= '</label>
			 ';

$val .= $scope->locally()->XML_val('SortableToggle', null, true);
$val .= '
			 ';

$val .= $scope->locally()->XML_val('SortOrderSave', null, true);
$val .= '
             ';

$val .= $scope->locally()->XML_val('SortToPage', null, true);
$val .= '
		</div>
	</th>
</tr>';

