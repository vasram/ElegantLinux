<nav class="navbar navbar-default" role="navigation">

	<!-- To show debug button when value is 1 -->
	<?php if ($debug == 1) {?>
		<button id="btn-debug"><i class="fa fa-bug"></i></button>
	<?php } ?>



       <!--**************** Header1 ********************-->

		<div class="row" style="height: 75px;border-bottom: 1px solid #a6a6a6" >
			<div class="col-md-3">
				<ul>
					<a href="/home" style="text-decoration: none" ><h1 style="font-family:Comic Sans MS;font-weight:bolder"><span style="color:black">Elegant</span><span style="color:#009999">Linux</span></h1></a>			
				</ul>
			</div>

			<div class="col-md-5">
				    <div class="input-group">
				      <input type="text" class="form-control" placeholder="Search for...">
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="button">Go!</button>
				      </span>
				    </div><!-- /input-group -->
			</div>


			<div class="col-md-3">
			       <div id="header1">
						<ul>
						  <li><a style="margin-right: 20px" href="#home"><img src="Icons/instagram.png" id="social" onmouseover="this.src=('Icons/instagram1.png')" onmouseleave="this.src=('Icons/instagram.png')" /></a> </li>
						  <li><a href="#home"><img src="Icons/linkedin.png"  id="social" onmouseover="this.src=('Icons/linkedin1.png')" onmouseleave="this.src=('Icons/linkedin.png')" /> </a></li>
						  <li><a href="#home"><img src="Icons/googleplus.png"  id="social" onmouseover="this.src=('Icons/googleplus1.png')" onmouseleave="this.src=('Icons/googleplus.png')" />  </a></li>
						  <li><a href="#home"><img src="Icons/pinterest.png"  id="social" onmouseover="this.src=('Icons/pinterest1.png')" onmouseleave="this.src=('Icons/pinterest.png')" /> </a></li>
						  <li><a href="#home"><img src="Icons/youtube.png"  id="social" onmouseover="this.src=('Icons/youtube1.png')" onmouseleave="this.src=('Icons/youtube.png')" />  </a></li>
						  <li><a href="#home"><img src="Icons/twitter.png"  id="social" onmouseover="this.src=('Icons/twitter1.png')" onmouseleave="this.src=('Icons/twitter.png')" /> </a> </li>
						  <li><a href="#home"><img src="Icons/facebook.png"  id="social" onmouseover="this.src=('Icons/facebook1.png')" onmouseleave="this.src=('Icons/facebook.png')" />  </a></li>
						</ul>
					</div>

			</div>


		<div class="col-md-1">
			<a type="button" class="btn btn-primary btn-sm navbar-btn" style="margin-top: 20px" href="/admin">Admin Login</a>
		</div>

		</div>

      <?php
        if ($page['label'] == "Home") {
	       include('template/imageslider.php');
        }
	  ?>

	  <?php
        if ($page['label'] != "Home") { ?>


		<div style="height:350px; width: 100%;position:relative;background-image:url('background/download.jpg');background-size: cover;background-position: center ">
			 <div style="position:absolute;color:white;height:100px;width:50%;margin-left:25%; margin-top:80px">
			 	  <h1 style="color: white;font-family:Marlett;font-size: 35px">Linux For Smarter Humans</h1>

			 </div>
       </div>

     <?php }?>


  	  <div class="container-fluid">


		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
			    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
		        <a id="demo1" class="navbar-brand" href="index.php" style="font-family:fantasy ;color:#009999;font-size:20px;margin-right: 50px;visibility: hidden">ElegantLinux</a>
		    </div>

		    <!-- Complete Navigation bar -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

		           <ul class="nav navbar-nav">

		           	  <!--Function is called to automatically add page from database to navigation bar -->
		           	  <?php nav_main($dbc,$path); ?>


		           </ul><!--Navbar ends here -->

            </div><!--Collapse divs ends here-->

  	  </div><!-- container-fluid -->

</nav><!--Nav ends here -->
