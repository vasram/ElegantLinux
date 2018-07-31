<?php 
# Start Session:
 session_start();
 
# Database Connection:
include('../config/connection.php');

if($_POST) {
	$q = "SELECT * FROM  admins WHERE email = '$_POST[email]' AND password = SHA1('$_POST[password]') ";
    $r = mysqli_query($dbc, $q);
	
	if(mysqli_num_rows($r) == 1) {
		$_SESSION['adminname'] = $_POST['email'];
		header('Location: index.php');
	}
}

?>

<!DOCTYPE html>
<html>
	<head>
		 <!-- Title of the page is displayed -->
		 <title>Admin Login</title>
		 
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
  	  	   
  	  	   <!-- Navigation bar include -->
  	  	   <?php //include(D_TEMPLATE.'/navigation.php') ?>
  	  	   <div class="container">
	  	  	   <div class="row">	  	  	   	
	  	  	   		<div class="col-md-4 col-md-offset-4">	  	  	   			
	  	  	   			<div class="panel panel-info">	
	  	  	   				<div class="panel-heading">
	  	  	   					<h4 style="font-weight: bolder">Login</h4>
	  	  	   				</div><!-- End panel-heading -->
	  	  	   				
	  	  	   				<div class="panel-body">  				
					  	  	    <form action="login.php" method="post" role="form">
									  <div class="form-group">
									    <label for="email">Email address</label>
									    <input type="email" class="form-control" id="email" name="email" placeholder="Email">
									  </div>
								  
									  <div class="form-group">
									    <label for="password">Password</label>
									    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
									  </div>
								  
									  <!--<div class="checkbox">
									    <label>
									      <input type="checkbox">Male
									    </label>
									    <label>
									      <input type="checkbox">Female
									    </label>
									  </div>-->
								  
								  <button type="submit" class="btn btn-default">Submit</button>
					           </form><!-- End form -->
				           </div><!-- End panel-body -->  	 				         
			           </div><!-- End panel-info -->			           
			        </div><!-- End col -->			        
	         </div><!--End row -->	         
         </div><!-- End Container -->        
	  </div><!-- End wrap -->
	  
	  <!-- Footer include --> 
	  <?php //include(D_TEMPLATE.'/footer.php') ?>
	  
	  <!-- Debug window -->
	  <?php //if($debug == 1) { include('widgets/debug.php'); }?>
  	
  </body>
  
</html>