<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletecustomer'])){
	$id = $_GET['deletecustomer'];

	$query = "UPDATE dailysaving SET status='deleted' WHERE cust_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Customer Deleted Successfully');
  window.location.href='ds-members.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>