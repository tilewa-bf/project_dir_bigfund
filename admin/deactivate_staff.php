<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deactivatestaff'])&isset($_GET['status'])){
	$id = $_GET['deactivatestaff'];
	$status = $_GET['status'];

	if($status=='Active'){
		$status2='Inactive';
	}elseif($status=='Inactive'){
		$status2='Active';
	}

	date_default_timezone_set('Africa/Lagos');
	$dt=date('Y-m-d');

	$query = "UPDATE staff_tbl SET updated_by='$dbname',update_dt='$dt',status2='$status2' WHERE id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Staff Status Change Successfully');
  window.location.href='deactivatestaff.php';</script>";
	}
}else{
	echo "Check your Query";
}


?>