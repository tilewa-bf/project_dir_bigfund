<?php
session_start();
if(!isset($_SESSION['branchdatabase'])){
header("Location: login.php");
exit(); }

$branchdatabase = $_SESSION['branchdatabase'];
$conn = mysqli_connect("localhost","root","",$branchdatabase);
if(!$conn){
	die("Wrong Connection").mysqli_connect_error();
}
?>