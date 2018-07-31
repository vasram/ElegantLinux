<?php if(isset($opened['id'])) { ?>
	<script>
		
		$(document).ready(function() {
			
			Dropzone.autoDiscover = false;
			
			var myDropzone = new Dropzone("#avatar-dropzone");
			
			myDropzone.on("success", function(file){
				
				$("#avatar").load("ajax/avatar.php?id=<?php echo $opened['id']; ?>");
				
			});
	
		});
	
	</script>
<?php } ?>

<h1>Admin Manager</h1>

<div class="row">
   	  <div class="col-md-3">
   	  	 
  	   	  	 	
  	   	       <div class="list-group">
  	  	   	  	   <a class="list-group-item" href="?page=admins">
						<i class="fa fa-plus-square"></i> New Admin
				   </a>
			   
  	   	  	 	   <?php
  	  	   	  	 	    $q = "SELECT * FROM admins ORDER BY first ASC";
						$r = mysqli_query($dbc, $q);
						
						while($list = mysqli_fetch_assoc($r)) {
							
							$list = data_admin($dbc,$list['id']);
							//$blurb = substr(strip_tags($page_list['body']),0,160);
						?>
						
						<a class="list-group-item <?php selected($list['id'],$opened['id'],'active'); ?>" href="index.php?page=admins&id=<?php echo $list['id']; ?>">
							<h4 class="list-group-item-heading"><?php echo $list['fullname']; ?></h4>
						    <!--<p class="list-group-item-text"><?php echo $blurb; ?></p> -->
						</a>
					
			     <?php } ?>
             </div><!-- END list-group -->              
       </div><!-- End col-md-3 -->
   	  
   	   <div class="col-md-5">
   	   	
   	   	<?php if(isset($message)) { echo $message; } ?>
   	  	 
   	  	 <form action="index.php?page=admins&id=<?php echo $opened['id']; ?>" method="post" role="form">
   	  	 	
            <div id="avatar">
				<?php if($opened['avatar'] != ''){ ?>
	
					<div class="avatar-container" style="background-image: url('../uploads/<?php echo $opened['avatar']; ?>')"></div>
	
				<?php } ?>
			</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="first">First Name:</label>
   	  	 		<input class="form-control" type="text" name="first" id="first" value="<?php echo $opened['first']; ?>" placeholder="First Name" />
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="last">Last Name:</label>
   	  	 		<input class="form-control" type="text" name="last" id="last" value="<?php echo $opened['last']; ?>" placeholder="Last Name" />
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="email">Email Address:</label>
   	  	 		<input class="form-control" type="text" name="email" id="email" value="<?php echo $opened['email']; ?>" placeholder="Email Address" />
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="status">Status:</label>
   	  	 		<select class="form-control" name="status" id="status" >
   	  	 			
   	  	 			<option value="0" <?php if(isset($_GET['id'])) {selected('0',$opened['status'],'selected'); } ?>>Inactive</option>
   	  	 			<option value="1" <?php if(isset($_GET['id'])) {selected('1',$opened['status'],'selected'); } ?>>Active</option>
   	  	 			
					     
   	  	 		</select>
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="password">Password:</label>
   	  	 		<input class="form-control" type="password" name="password" id="password" value="" placeholder="Password" />
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="passwordv">Verify Password:</label>
   	  	 		<input class="form-control" type="password" name="passwordv" id="passwordv" value="" placeholder="Type Password Again" />
   	  	 	</div>
   	  	 	
   	  	 	
   	  	 	
   	  	 	<button type="submit" class="btn btn-default">Save</button>		
   	  	    <input type="hidden" name="submitted" value="1" />
   	  	    <?php if(isset($opened['id'])) { ?>
   	  	    	<input type="hidden" name="id" value="<?php echo $opened['id']; ?>" />
   	  	    <?php } ?>
   	  	</form> 
   	  	
	        <?php if(isset($opened['id'])) { ?>
				
			<form action="uploads.php?id=<?php echo $opened['id']; ?>" class="dropzone" id="avatar-dropzone">
				
				<input type="file" name="file">
				
			</form>
			
			<?php } ?>
   	  	 
   	  	 
   	  	 
   	  	 
   	  	
   	  </div><!-- End col-md-4 -->
   	  
</div><!-- End row -->