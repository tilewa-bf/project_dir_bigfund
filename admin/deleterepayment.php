<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deleterepayment'])){
	$id = $_GET['deleterepayment'];
	date_default_timezone_set('Africa/Lagos');
	$updatedt=date('Y-m-d h:i:sa');
	
	$query = "UPDATE rep_tbl SET status2='deleted',confirmed_by='$dbname',update_dt='$updatedt' WHERE trans_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Repayment Deposit Deleted Successfully');
  window.location.href='confirmrepayment2.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>