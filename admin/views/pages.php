<h1>Page Manager</h1>
   
<div class="row">
   	  <div class="col-md-3">
   	  	  	   	  	 	
  	   	       <div class="list-group">
  	  	   	  	   <a class="list-group-item" href="?page=pages">
						<i class="fa fa-plus-square"></i> New Page
				   </a>
			   
  	   	  	 	   <?php
  	  	   	  	 	    $q = "SELECT * FROM posts WHERE type=1 ORDER BY title ASC";
						$r = mysqli_query($dbc, $q);
						
						while($list = mysqli_fetch_assoc($r)) {
							$blurb = substr(strip_tags($list['body']),0,160);
						?>
						
				            <div id="page_<?php echo $list['id']; ?>" class="list-group-item <?php selected($list['id'], $opened['id'], 'active'); ?>">
								<h4 class="list-group-item-heading"><?php echo $list['title']; ?>
								<span class="pull-right">
									<a href="#" id="del_<?php echo $list['id']; ?>" class="btn btn-danger btn-delete"><i class="fa fa-trash-o"></i></a>
									<a href="index.php?page=pages&id=<?php echo $list['id']; ?>" class="btn btn-default"><i class="fa fa-chevron-right"></i></a>
								</span>
								
								</h4>
								<p class="list-group-item-text"><?php echo $blurb; ?></p>
							</div>
					
			      <?php } ?>
			      
             </div><!-- END list-group -->   
                        
      </div><!-- End col-md-3 -->
   	  
   	   
   	  <div class="col-md-4">
   	  	 
   	  	 <form action="index.php?page=pages&id=<?php echo $opened['id']; ?>" method="post" role="form">
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="title">Title:</label>
   	  	 		<input class="form-control" type="text" name="title" id="title" value="<?php echo $opened['title']; ?>" placeholder="Page Title" />
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="admin">Admin:</label>
   	  	 		<select class="form-control" name="admin" id="admin" >
   	  	 			<option value="0">No Admin</option>
   	  	 			<?php
   	  	 			   $q = "SELECT id FROM admins ORDER BY first ASC";
					   $r = mysqli_query($dbc,$q);
					   
					   while ($admin_list = mysqli_fetch_assoc($r)) {
						   $admin_data = data_admin($dbc,$admin_list['id']);
						   ?>
						   <option value="<?php echo $admin_data['id']; ?>" 
						   	 <?php 
						   	 	if(isset($_GET['id'])) {								   	    	
                                    selected($admin_data['id'],$opened['admin'],'selected');
					            } else {
									selected($admin_data['id'],$admin['id'],'selected');
					            }  
								
							?>> <?php echo $admin_data['fullname']; ?></option>     
					  <?php } ?>
					     
   	  	 		</select>
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="slug">Slug:</label>
   	  	 		<input class="form-control" type="text" name="slug" id="slug" value="<?php echo $opened['slug']; ?>" placeholder="Page Slug" />
   	  	 	</div>
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="label">Label:</label>
   	  	 		<input class="form-control" type="text" name="label" id="label" value="<?php echo $opened['label']; ?>" placeholder="Page Label" />
   	  	 	</div>	
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="header">Header:</label>
   	  	 		<input class="form-control" type="text" name="header" id="header" value="<?php echo $opened['header']; ?>" placeholder="Page Header" />
   	  	 	</div>	
   	  	 	
   	  	 	<div class="form-group">
   	  	 		<label for="body">Body:</label>
   	  	 		<textarea class="form-control" id="mytextarea" name="body" id="body" rows="8"  placeholder="Page Body">
   	  	 			<?php echo $opened['body']; ?>
   	  	 		</textarea>
   	  	 	</div>
   	  	 	
   	  	 	<button type="submit" class="btn btn-default">Save</button>		
   	  	    <input type="hidden" name="submitted" value="1" />
   	  	    <?php if(isset($opened['id'])) { ?>
   	  	    	<input type="hidden" name="id" value="<?php echo $opened['id']; ?>" />
   	  	    <?php } ?>
   	  	</form> 
   	  	 
   	  	 <?php if(isset($message)) { echo $message; } ?>
   	  	
   	  </div><!-- End col-md-4 -->
   	  
</div><!-- End row -->