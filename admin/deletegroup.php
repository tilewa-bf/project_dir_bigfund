<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletegroup'])){
	$id = $_GET['deletegroup'];

	$query = "UPDATE group_tbl SET status2='deleted' WHERE grp_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Group Deleted Successfully');
  window.location.href='viewgroup.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>