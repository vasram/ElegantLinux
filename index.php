<?php 

include('template/header.php');


include('views/'.$view['name'].'.php'); 

if ($page['label'] == "Home") {
	include('template/parallax.php'); 
}
include('template/footer.php'); 



?>	  