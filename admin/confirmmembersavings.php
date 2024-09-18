<?php
include "../db.php";
include "../auth.php";


if(isset($_GET['confirmsavings'])){
	$id = $_GET['confirmsavings'];
	date_default_timezone_set('Africa/Lagos');
	$updatedt=date('Y-m-d h:i:sa');

	$query = "UPDATE deposit_savings_tbl SET status='confirmed', confirm_by='$dbname',confirm_dt='$updatedt' WHERE status='Processing' AND status2!='delete' AND post_by='".$id."'";
	$result = mysqli_query($conn,$query) or die(mysqli_error($conn));

	 $sql2 = "UPDATE income_tbl SET status = 'confirmed', confirmed_by = '$dbname' WHERE status='Processing' AND status2!='delete' AND post_by='".$id."'"; 
         $result2= mysqli_query($conn,$sql2);

	if($result){
		// //insert loan request into repayment table
		// $insquery =  mysqli_query($conn,"INSERT INTO repayment_tbl(`trans_id`, `member_id`, `loan_code`, `member_name`,`group_name`,`account_officer`,`applied_amount`,`approved_amount`,`reverseamount`, `repayment_amount`, `status`, `narration`, `confirmed_by`, `created_by`, `creation_date`, `date_time`, `updated_by`, `update_dt`, `status2`)SELECT `trans_id`, `member_id`, `loan_code`, `member_name`,`group_name`,`account_officer`, `applied_amount`,`approved_amount`,`reverseamount`, `repayment_amount`, `status`, `narration`, `confirmed_by`, `created_by`, `creation_date`, `date_time`, `updated_by`, `update_dt`, `status2` FROM temp_rep_tbl WHERE temp_rp_id= '".$id."'") or die(mysqli_error($conn));

		//  $sql = "UPDATE income_tbl SET status = 'Confirmed', confirmed_by = '$dbname' WHERE status='Processing' AND trans_id='".$id."'"; 
  //        $result= mysqli_query($conn,$sql);

		echo "<script>window.alert('Transaction Confirmed Successfully');
  		window.location.href='confirmsavings.php'</script>";
		}
	}else{
	echo "Check your Query";
	}

?>