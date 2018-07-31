<?php 

    switch ($page) {
        case 'dashboard':
            
        break;
		
		
		/////**************** Queries for pages *************************//////
		case 'pages':
				if(isset($_POST['submitted']) == 1) {
					$title = mysqli_real_escape_string($dbc, $_POST['title']);
					$label = mysqli_real_escape_string($dbc, $_POST['label']);
					$header = mysqli_real_escape_string($dbc, $_POST['header']);
					$body = mysqli_real_escape_string($dbc, $_POST['body']);
					
					if(isset($_POST['id']) != '') {
						$action = 'updated';
						$q = "UPDATE posts SET admin = $_POST[admin],slug = '$_POST[slug]',title = '$title',label = '$label',header = '$header',body = '$body' WHERE id = $_GET[id]";
					    
					} else {
						$action = 'added';
						$q = "INSERT INTO posts (type,admin,slug,title,label,header,body) VALUES (1,$_POST[admin],'$_POST[slug]','$title','$label','$header','$body')";	
					    
				    }
					
					$r = mysqli_query($dbc, $q);
					
					if($r){
						
						$message = '<p class="alert alert-success">Page was '.$action.'!</p>';
						
					} else {
						
						$message = '<p class="alert alert-danger">Page could not be '.$action.' because: '.mysqli_error($dbc);
						$message .= '<p class="alert alert-warning">Query: '.$q.'</p>';
						
					}
								 	
				} 
				
				if(isset($_GET['id'])) { $opened = data_post($dbc,$_GET['id']); }
   
        break;
		
		
		
		/////**************** Queries for admins *************************//////	
		case 'admins':
                 if(isset($_POST['submitted']) == 1) {
				
						$first = mysqli_real_escape_string($dbc, $_POST['first']);
						$last = mysqli_real_escape_string($dbc, $_POST['last']);
						
						if($_POST['password'] != '') {
							
							if($_POST['password'] == $_POST['passwordv']) {
								
								$password = " password = SHA1('$_POST[password]'),";
								$verify = true;
								
							} else {
								
								$verify = false;
								
							}					
							
						} else {
								
							$verify = false;	
							
						}
						
						if(isset($_POST['id']) != '') {
							
							$action = 'updated';
							$q = "UPDATE admins SET first = '$first', last = '$last', email = '$_POST[email]', $password status = $_POST[status] WHERE id = $_GET[id]";
							$r = mysqli_query($dbc, $q);
							
						} else {
							
							$action = 'added';
							
							$q = "INSERT INTO admins (first, last, email, password, status) VALUES ('$first', '$last', '$_POST[email]', SHA1('$_POST[password]'), '$_POST[status]')";
							
							if($verify == true) {
								$r = mysqli_query($dbc, $q);
							}
						}
						
						
						if($r){
							
							$message = '<p class="alert alert-success">Admin was '.$action.'!</p>';
							
						} else {
							
							$message = '<p class="alert alert-danger">Admin could not be '.$action.' because: '.mysqli_error($dbc);
							if($verify == false) {
								$message .= '<p class="alert alert-danger">Password fields empty and/or do not match.</p>';
							}
							$message .= '<p class="alert alert-warning">Query: '.$q.'</p>';
							
						}
							
			      }
			
			if(isset($_GET['id'])) { $opened = data_admin($dbc, $_GET['id']); }
			
		break;
		
		
		
		
		/////**************** Queries for Navigation *************************//////
		case 'navigation':
		
			if(isset($_POST['submitted']) == 1) {
				
				$label = mysqli_real_escape_string($dbc, $_POST['label']);
				$url = mysqli_real_escape_string($dbc, $_POST['url']);
				
				if(isset($_POST['id']) != '') {
					
					$action = 'updated';
					$q = "UPDATE navigation SET id = '$_POST[id]', label = '$label', url = '$url', position = $_POST[position], status = $_POST[status] WHERE id = '$_POST[openedid]'";
					$r = mysqli_query($dbc, $q);
					
				} 
				
				
				if($r){
					
					$message = '<p class="alert alert-success">Navigation Item was '.$action.'!</p>';
					
				} else {
					
					$message = '<p class="alert alert-danger">Navigation Item could not be '.$action.' because: '.mysqli_error($dbc);
					$message .= '<p class="alert alert-warning">Query: '.$q.'</p>';
					
				}
							
			}
	
		
		break;
		
		
		
		
		/////**************** Queries for Settings *************************//////	
	    case 'settings':

   			if(isset($_POST['submitted']) == 1) {
				
				$label = mysqli_real_escape_string($dbc, $_POST['label']);
				$value = mysqli_real_escape_string($dbc, $_POST['value']);
				
				if(isset($_POST['id']) != ' ') {
					
					$action = 'updated';
					$q = "UPDATE settings SET id = '$_POST[id]', label = '$label', value = '$value' WHERE id = '$_POST[openedid]'";
					$r = mysqli_query($dbc, $q);
					
				} 
				
				
				
				if($r){
					
					$message = '<p class="alert alert-success">Setting was '.$action.'!</p>';
					
				} else {
					
					$message = '<p class="alert alert-danger">Setting could not be '.$action.' because: '.mysqli_error($dbc);
					$message .= '<p class="alert alert-warning">Query: '.$q.'</p>';
					
				}
							
			}
            
        break;
        
        default:
            
        break;
    }
   
?>