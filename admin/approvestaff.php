<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['approvestaff'])){
	$id = $_GET['approvestaff'];

	$query = "UPDATE staff_tbl SET updated_by='$dbname', status2='Active' WHERE id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Staff Approve Successfully');
  window.location.href='view-staff.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>