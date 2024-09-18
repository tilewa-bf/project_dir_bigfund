<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['input'])){
	$inputvalue = $_GET['input'];
}

if(isset($_GET['deleteloanrequest'])){
	$id = $_GET['deleteloanrequest'];

	$query = "UPDATE loan_request SET status='decline', status2='decline', comments='$inputvalue' WHERE loan_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Loan Request Decline Successfully');
  window.location.href='pendingloan-request.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>