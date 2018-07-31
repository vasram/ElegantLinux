<?php
# Setup File
error_reporting(0);

# Database Connection:
include('../config/connection.php');

# Constants:
DEFINE('D_TEMPLATE','template');


# Functions:
include('functions/data.php');
include('functions/template.php');
include('functions/sandbox.php');





$site_title = 'ElegantLinux';

if(isset($_GET['page'])){
	$page = $_GET['page']; //Set $pageid to equal the value given in the url
}else {
	$page = 'dashboard';  //Set $pageid equal to 1 or the Home Page
}

# Page setup
include('config/queries.php');





# Admin Setup:
$admin = data_admin($dbc,$_SESSION['adminname']);

# Site Setup:
$debug = data_setting_value($dbc,'debug-status');

?>