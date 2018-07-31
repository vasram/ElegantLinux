<?php

$dbc = mysqli_connect('localhost','astikanand','Nandan178#suresh','ElegantLinux');
if(!$dbc){
	die("Database Connection Error: ".mysqli_connect_error());
}

?>