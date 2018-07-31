<nav class="navbar navbar-inverse" role="navigation">
	
  	<div class="container-fluid">
	  	
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
		    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		    </button>
	        <a class="navbar-brand" href="#">ElegantLinux</a>
	    </div>
	    
	    <!-- Complete Navigation bar -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	       	
	           <ul class="nav navbar-nav">
	           	  
	           	  <li><a href="?page=dashboard">Dashboard</a></li>
	           	  <li><a href="?page=pages">Pages</a></li>
	           	  <li><a href="?page=admins">Admins</a></li>
	           	  <li><a href="?page=navigation">Navigation</a></li>
	           	  <li><a href="?page=settings">Settings</a></li>
	           	  
	           </ul><!--Navbar ends here-->
	           
	           <div class="pull-right">
	           	  <ul class="nav navbar-nav">
	           	  	<li class="dropdown">
		                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="margin-right: 20px;"><?php echo $admin['fullname']; ?> <span class="caret"></span></a>
			            <ul class="dropdown-menu">
			            	<li><a href="logout.php">Logout</a></li>		           
		                </ul>
		           </li>
		           
		           <li>
	           	  		<!-- To show debug button when value is 1 -->
						<?php if ($debug == 1) {?>
							<button id="btn-debug" class="btn btn-default navbar-btn"><i class="fa fa-bug"></i></button>
						<?php } ?>
	           	  	</li>
	           	  	
	           	 </ul><!-- End navbar-nav -->
	           	 
	           </div><!-- End pull-right -->
	           
        </div><!--Collapse divs ends here-->
        
  	  </div><!-- container-fluid -->
  	  
</nav><!--Nav ends here -->