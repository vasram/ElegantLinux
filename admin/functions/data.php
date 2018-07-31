<?php

function data_setting_value($dbc,$id) {
	
	$q = "SELECT * FROM settings WHERE id = 'debug-status'";
    $r = mysqli_query($dbc,$q);

    $data = mysqli_fetch_assoc($r);

    return $data['value'];	
	
}

//Function to get admin data

function data_admin ($dbc,$id) {
	
	if(is_numeric($id)) {
		$cond = "WHERE id = '$id'";
	}else {
		$cond = "WHERE email = '$id'";
	}
	
	$q = "SELECT * FROM admins $cond";
	$r = mysqli_query($dbc, $q);
	
	$data = mysqli_fetch_assoc($r);
	
	$data['fullname'] = $data['first'].' '.$data['last'];
	$data['fullname_reverse'] = $data['last'].' '.$data['first'];
	
	return $data;
	
}


// Function to check if there is no html in body and to assign it
function data_post($dbc, $id) {
	
	$q = "SELECT * FROM posts WHERE id = $id";
	$result = mysqli_query($dbc, $q);
	
	$data = mysqli_fetch_assoc($result);
	
	$data['body_nohtml'] = strip_tags($data['body']);
	
	if(($data['body']) == $data['body_nohtml']) {
		
		$data['body_formatted'] = '<p>'.$data['body'].'</p>';
		
	} else {
		
		$data['body_formatted'] = $data['body'];
	}
	
	return $data;
}

?>