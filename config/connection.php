<?php

$dbc = mysqli_connect('localhost','root','','ElegantLinux');
if(!$dbc){
	die("Database Connection Error: ".mysqli_connect_error());
}

?>
