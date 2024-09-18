<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
} 

$errors="";
if(!empty($_POST['trackid'])){
    $trackid = test_input($_POST['trackid']);
}else{
    $errors = "Please Enter your Tracking ID";
}

$sql = "SELECT * FROM shipment_tbl WHERE status2!='deleted' and tracking_id='$trackid'";
$query = mysqli_query($conn,$sql);

if(mysqli_num_rows($query)==1){
    $rows = mysqli_fetch_assoc($query);
    $sid = $rows['tracking_id'];
    header("Location:user-shipment-details.php?sid=$sid");
}else{
    header("Location:wrong-trackingid.html");
}

    
?>