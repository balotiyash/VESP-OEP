<?php
// Database configuration
$dbHost = 'localhost'; // Change this to your database host if it's different
$dbUser = 'root'; // Change this to your database username
$dbPass = ''; // Change this to your database password
$dbName = 'vesp_oep'; // Change this to your database name

// Create connection
$con = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
?>