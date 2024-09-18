<?php

session_start();
if(!isset($_SESSION["memail"]) AND !isset($_SESSION['member_id'])){
header("Location:index.php");
exit(); }

$name = "";

$email = $_SESSION['memail'];
$mid = $_SESSION['member_id'];

$sql = "SELECT * FROM member WHERE member_id='$mid'";


//$sql = "SELECT * FROM member WHERE email = '$email' OR member_id='$mid'";

$result = mysqli_query($conn, $sql) or die($sql);
$row = mysqli_fetch_assoc($result);

$memberid = $row['member_id'];
$surname = $row['surname'];
$firstname =$row['firstname'];
$othername =$row['othername'];
$membername= $row['surname']." ".$row['firstname'];

$memberid = $row['member_id'];
$phone = $row['phone'];
$occupation = $row['occupation'];
$email = $row['email'];
$gender =$row['gender'];
$nin = $row['nin'];
$bvn = $row['bvn'];
$picture =  $row['picture'];
$account_officer= $row['account_officer'];
$resadd = $row['res_address'];
$busadd = $row['bus_address'];
$state =$row['state'];
$country = $row['country'];
$kinname = $row['kin_name'];
$kinphone = $row['kin_phone'];
$relationship =$row['relationship'];
$kinadd= $row['kin_address'];

$sql2 = "SELECT * FROM passbook WHERE member_id='$mid'";
$result2 = mysqli_query($conn,$sql2);
$row2 = mysqli_fetch_assoc($result2);
$passbookid = $row2['passbook_id'];
$contribution = $row2['contribution'];
$totalnod = $row2['no_of_days'];



//mysqli_close($conn);
//echo $name;
?>