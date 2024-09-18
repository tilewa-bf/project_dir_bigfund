<?php
include "../db.php";
include "../auth.php";


if(isset($_GET['confirmrepayment']) && isset($_GET['tenor'])){
	$id = $_GET['confirmrepayment'];
	$tenor = $_GET['tenor'];
	date_default_timezone_set('Africa/Lagos');
	$updatedt=date('Y-m-d h:i:sa');

	$query = "UPDATE rep_tbl SET status='confirmed', confirmed_by='$dbname',update_dt='$updatedt' WHERE status='pending' AND status2!='deleted' AND created_by='$id' AND tenor='$tenor'";
	$result = mysqli_query($conn,$query) or die(mysqli_error($conn));

	if($result){
		// //insert loan request into repayment table
		// $insquery =  mysqli_query($conn,"INSERT INTO repayment_tbl(`trans_id`, `member_id`, `loan_code`, `member_name`,`group_name`,`account_officer`,`applied_amount`,`approved_amount`,`reverseamount`, `repayment_amount`, `status`, `narration`, `confirmed_by`, `created_by`, `creation_date`, `date_time`, `updated_by`, `update_dt`, `status2`)SELECT `trans_id`, `member_id`, `loan_code`, `member_name`,`group_name`,`account_officer`, `applied_amount`,`approved_amount`,`reverseamount`, `repayment_amount`, `status`, `narration`, `confirmed_by`, `created_by`, `creation_date`, `date_time`, `updated_by`, `update_dt`, `status2` FROM temp_rep_tbl WHERE temp_rp_id= '".$id."'") or die(mysqli_error($conn));

		//  $sql = "UPDATE income_tbl SET status = 'Confirmed', confirmed_by = '$dbname' WHERE status='Processing' AND trans_id='".$id."'"; 
  //        $result= mysqli_query($conn,$sql);

		echo "<script>window.alert('Transaction Confirmed Successfully');
  		window.location.href='confirmrepayment2.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>