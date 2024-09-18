<?php
// session_start();
if(!isset($_SESSION["email"])){
header("Location: login.php");
exit(); }

$name = "";

$email = $_SESSION['email'];

$sql = "SELECT * FROM staff_tbl WHERE email = '$email'";

$result = mysqli_query($conn, $sql) or die($sql);

$row = mysqli_fetch_assoc($result);

$lastname = $row['lastname'];
$stafffirstname = $row['firstname'];
$dbname= $row['lastname']." ".$row['firstname'];
$id = $row['id'];
$staffid = $row['staff_id'];
$staffpassport = $row['admin_passport'];
$usertype = $row['user_type'];
$phone = $row['phone'];
$address = $row['address'];
$state = $row['state'];
$dbgender = $row['gender'];
$dbdob = $row['dob'];
$dbphone = $row['phone'];
$dbmidno = $row['midno'];
$dbbvn = $row['bvn'];
$dbgn = $row['guarantor_name'];
$dbgpn = $row['guarantor_phone'];
$dbgrel = $row['relationship'];
$dbgaddress = $row['guarantor_address'];

//mysqli_close($conn);
//echo $name;
?>