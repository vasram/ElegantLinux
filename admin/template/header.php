<?php 
  # Start the session:
  session_start();
  
  if(!isset($_SESSION['adminname'])) {
  	header('Location: login.php');
  }

?>

<?php include('config/setup.php'); ?>


<!DOCTYPE html>
<html>
	<head>
		 <!-- Title of the page is displayed -->
		 <title><?php echo $page .' | '.$site_title; ?></title>
		 
		 <!-- 3 Must Tags -->
		 <meta charset="utf-8">
		 <meta http-equiv="X-UA-Compatible" content="IE=edge">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		 
		 <!-- All CSS files are included here -->
		 <?php include('config/css.php'); ?>
		 
		 <!-- All Javascript files are included here -->
		 <?php include('config/js.php'); ?>
		 
		  
	</head>
  
  
  <body>
  	  <div id="wrap">
  	  	   
  	  	   <!-- Main Navigation -->
  	  	   <?php include(D_TEMPLATE.'/navigation.php') ?>
  	  	   
          