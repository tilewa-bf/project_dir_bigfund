<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['confirmwkrem'])){
	$id = $_GET['confirmwkrem'];
	
	date_default_timezone_set('Africa/Lagos');
	$date = date("Y-m-d");
	$updatedt=date('Y-m-d h:i:sa');

	$query = "UPDATE weekly_remittance SET status='confirmed',confirm_by='$dbname',confirm_date='$date',confirm_dt='$updatedt' WHERE rem_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		
		echo "<script>window.alert('Remittance Confirmed Successfully');
  		window.location.href='confirmremittance.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>