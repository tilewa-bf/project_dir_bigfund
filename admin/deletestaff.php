<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletestaff'])){
	$id = $_GET['deletestaff'];

	$query = "UPDATE staff_tbl SET updated_by='$dbname', status='deleted' WHERE id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Staff Deleted Successfully');
  window.location.href='view-staff.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>