<?php
 
include "../db.php";
include "../auth.php";




if(isset($_POST['submit'])){

$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
$password = substr( str_shuffle( $chars ), 0, 8);

$staffid = $_POST['staff_id'];

$sql = "SELECT * FROM staff_tbl WHERE staff_id='$staffid'";
$query = mysqli_query($conn,$sql);
$rows = mysqli_num_rows($query);

if($rows!=1){
	echo "Ooops! Invalid Staff ID entered";
}else{
	$sql2 = "UPDATE staff_tbl SET password='".$password."' WHERE staff_id='$staffid'";
	$query2=mysqli_query($conn,$sql2);
	if($query2){
	echo 'Password Updated Successfully.<br>';
	echo "Your Password is :".$password;
	}
}



}
 
?>
<html>
<head>
<title>Simple Signup Form</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
 
<div id="container">
 
<h2>Generator Random Password </h2>
<form method="post" action="autogenerate_password.php">
 <input type="text" name="staff_id" class="form-control" placeholder="Enter Your Staff ID">
 <br>
 <!-- <input type="text" name="email" class="form-control" placeholder="Enter Email">
 <br> -->
 <button type="submit" name="submit">Submit</button>
</form>
</div>
 
</body>
</html>