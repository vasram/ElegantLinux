<?php

# Start Session:

session_start();

unset($_SESSION['adminname']); // Delete the adminname key

//session_destroy(); // This would delete all of the session keys

header('Location: login.php'); // Redirect to login.php

?>
