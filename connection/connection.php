<?php
    // $host = 'localhost'
    // $user = 'root'
    // $password = ''
    // $dbname = 'test'
	$conn = new mysqli('localhost', 'root', '', 'test');
	
	if(!$conn){
		die("Error: Failed to connect to database");
	}
?>	