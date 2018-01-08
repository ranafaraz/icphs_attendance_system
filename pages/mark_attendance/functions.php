<?php

function redirect_to($new_location) {
		header("location:".$new_location);
		exit();
	}

function mysql_prep($string) {
	global $connection;
	$escaped_string = mysqli_real_escape_string($connection, $string);
	return $escaped_string;
}

function confirm_query($result) {
	if(!$result) {
		die("Query Failed!");
	}
}













?>