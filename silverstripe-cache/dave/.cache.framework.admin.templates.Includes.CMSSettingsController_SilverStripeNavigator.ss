<?php
$val .= '<div class="cms-navigator">
	<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" class="ss-ui-button cms-preview-toggle-link" data-icon="preview">
		&laquo; ';

$val .= _t('SilverStripeNavigator.Edit','Edit');
$val .= '
	</a>
</div>';

