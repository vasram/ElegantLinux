<?php include('config/setup.php'); ?>
<!DOCTYPE html>
<html>
	<head>
		 <!-- Title of the page is displayed -->
		 <title><?php echo $page['title'].' | '.$site_title; ?></title>
		 
		 <!-- 3 Must Tags -->
		 <meta charset="utf-8">
		 <meta http-equiv="X-UA-Compatible" content="IE=edge">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		 
		 
		 <?php include('config/css.php'); ?>
		 
		 
		 <?php include('config/js.php'); ?>
	     
	</head>
  
  
	<body>
	  	 <div id="wrap">
	  	  	   
	  	  	   <!-- Navigation bar include -->
	  	  	   <?php include(D_TEMPLATE.'/navigation.php') ?>
	  	  	   