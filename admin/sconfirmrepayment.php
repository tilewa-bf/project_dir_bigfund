<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['confirmrepayment'])){
	$id = $_GET['confirmrepayment'];

$upd = date_create(null,timezone_open('Africa/Lagos'));
$upd = date_format($upd,'Y-m-d');

$sql = "UPDATE repayment_tbl SET status = 'confirmed',confirmed_by='$dbname', update_dt='$upd' WHERE rp_id = '".$id."'"; 
$result= mysqli_query($conn,$sql);

if($result){
		echo "<script>window.alert('Repayment Deposit Confirmed Successfully');
  window.location.href='confirmrepayment.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>