<?php
$val .= '<ul class="ss-uploadfield-files files">
	';

if ($scope->locally()->hasValue('CustomisedItems', null, true)) { 
$val .= '
		';

$scope->locally()->obj('CustomisedItems', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<li class="ss-uploadfield-item template-download" data-fileid="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '">
				<div class="ss-uploadfield-item-preview preview"><span>
					<img alt="';

$val .= $scope->locally()->XML_val('hasRelation', null, true);
$val .= '" src="';

$val .= $scope->locally()->XML_val('UploadFieldThumbnailURL', null, true);
$val .= '" />
				</span></div>
				<div class="ss-uploadfield-item-info">
					<input type=\'hidden\' value=\'';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '\' name=\'';

$val .= $scope->locally()->obj('Top', null, true)->XML_val('Name', null, true);
$val .= '[Files][]\' />
					<label class="ss-uploadfield-item-name">
						<span class="name">';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('XML', null, true);
$val .= '</span>
						<span class="size">';

$val .= $scope->locally()->XML_val('Size', null, true);
$val .= '</span>
						<div class="clear"><!-- --></div>
					</label>
					<div class="ss-uploadfield-item-actions">
						';

if ($scope->locally()->obj('Top', null, true)->hasValue('isActive', null, true)) { 
$val .= '
							';

$val .= $scope->locally()->XML_val('UploadFieldFileButtons', null, true);
$val .= '
						';


}
$val .= '
					</div>
				</div>
				<div class="ss-uploadfield-item-editform includeParent">
					<iframe frameborder="0" data-src="';

$val .= $scope->locally()->XML_val('UploadFieldEditLink', null, true);
$val .= '" src="about:blank"></iframe>
				</div>
			</li>
		';


}; $scope->popScope(); 
$val .= '
	';


}
$val .= '
</ul>
';

if ($scope->locally()->hasValue('canUpload', null, true)||$scope->locally()->hasValue('canAttachExisting', null, true)) { 
$val .= '
	<div class="ss-uploadfield-item ss-uploadfield-addfile';

if ($scope->locally()->hasValue('CustomisedItems', null, true)) { 
$val .= ' borderTop';


}
$val .= '">
		';

if ($scope->locally()->hasValue('canUpload', null, true)) { 
$val .= '
		<div class="ss-uploadfield-item-preview ss-uploadfield-dropzone ui-corner-all">
				';

if ($scope->locally()->hasValue('multiple', null, true)) { 
$val .= '
					';

$val .= _t('UploadField.DROPFILES','drop files');
$val .= '
				';


}else { 
$val .= '
					';

$val .= _t('UploadField.DROPFILE','drop a file');
$val .= '
				';


}
$val .= '
		</div>
		';


}
$val .= '
		<div class="ss-uploadfield-item-info">
			<label class="ss-uploadfield-item-name">
				';

if ($scope->locally()->hasValue('multiple', null, true)) { 
$val .= '
					<b>';

$val .= _t('UploadField.ATTACHFILES','Attach files');
$val .= '</b>
				';


}else { 
$val .= '
					<b>';

$val .= _t('UploadField.ATTACHFILE','Attach a file');
$val .= '</b>
				';


}
$val .= '
				';

if ($scope->locally()->hasValue('canPreviewFolder', null, true)) { 
$val .= '
					<small>(';

$val .= _t('UploadField.UPLOADSINTO','saves into /{path}',array('path'=>$scope->locally()->XML_val('FolderName', null, true)));
$val .= ')</small>
				';


}
$val .= '
			</label>
			';

if ($scope->locally()->hasValue('canUpload', null, true)) { 
$val .= '
				<label class="ss-uploadfield-fromcomputer ss-ui-button ui-corner-all" title="';

$val .= _t('UploadField.FROMCOMPUTERINFO','Upload from your computer');
$val .= '" data-icon="drive-upload">
					';

$val .= _t('UploadField.FROMCOMPUTER','From your computer');
$val .= '
					<input id="';

$val .= $scope->locally()->XML_val('id', null, true);
$val .= '" name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '[Uploads][]" class="';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= ' ss-uploadfield-fromcomputer-fileinput" data-config="';

$val .= $scope->locally()->XML_val('configString', null, true);
$val .= '" type="file"';

if ($scope->locally()->hasValue('multiple', null, true)) { 
$val .= ' multiple="multiple"';


}
$val .= ' />
				</label>
			';


}else { 
$val .= '
				<input id="';

$val .= $scope->locally()->XML_val('id', null, true);
$val .= '" name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '[Uploads][]" class="';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= ' ss-uploadfield-fromcomputer-fileinput" data-config="';

$val .= $scope->locally()->XML_val('configString', null, true);
$val .= '" type="hidden" />
			';


}
$val .= '

			';

if ($scope->locally()->hasValue('canAttachExisting', null, true)) { 
$val .= '
				<button class="ss-uploadfield-fromfiles ss-ui-button ui-corner-all" title="';

$val .= _t('UploadField.FROMCOMPUTERINFO','Select from files');
$val .= '" data-icon="network-cloud">';

$val .= _t('UploadField.FROMFILES','From files');
$val .= '</button>
			';


}
$val .= '
			';

if ($scope->locally()->hasValue('canUpload', null, true)) { 
$val .= '
				';

if (!$scope->locally()->hasValue('autoUpload', null, true)) { 
$val .= '
					<button class="ss-uploadfield-startall ss-ui-button ui-corner-all" data-icon="navigation">';

$val .= _t('UploadField.STARTALL','Start all');
$val .= '</button>
				';


}
$val .= '
			';


}
$val .= '
			<div class="clear"><!-- --></div>
		</div>
		<div class="clear"><!-- --></div>
	</div>
';


}
$val .= '
';

