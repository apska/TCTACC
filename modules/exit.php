<?php
	session_start();
	
	if(isset($_SESSION["Login"])){
		unset($_SESSION["Login"]);
	}
	
	session_destroy();
?>