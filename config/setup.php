<?php
error_reporting(0);

# Database Connection Here
include('config/connection.php');

# Constants:
DEFINE('D_TEMPLATE','template');


# Functions:
include('functions/data.php');
include('functions/template.php');
include('functions/sandbox.php');


# Site Setup:
$debug = data_setting_value($dbc,'debug-status');

$path = get_path();

$site_title = 'ElegantLinux';

if(!isset($path['call_parts'][0]) || $path['call_parts'][0] == '' ) {
	
	$path['call_parts'][0] = 'home'; //Set $path['call_parts'][0] to equal the value given in the url
}

# Page setup
$page = data_post($dbc,$path['call_parts'][0]);
$view = data_post_type($dbc, $page['type']);

?>