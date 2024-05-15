<?php

$hostname = '';
$username = '';
$password = '';
$databaseName = '';

$mysqli = new mysqli($hostname, $username, $password, $databaseName);

if ($mysqli->connect_errno) {
    die("Connection error: " . $mysqli->connect_error);
}

return $mysqli;
?>
