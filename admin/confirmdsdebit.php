<?php

include "../db.php";
include "../auth.php";

//session_start();

if(isset($_GET['pb'])){
	$pb = $_GET['pb'];

    $sql = "UPDATE data_entry_tbl SET status = 'Confirmed', confirm_by='$dbname' WHERE status='Processing' AND status2!='delete' AND entry_type='Debit' AND post_by_id='$pb'"; 
    $result= mysqli_query($conn,$sql) or die(mysqli_error($conn));

    // //Query to update GL balance
    // $glaccno = $_SESSION['glaccno'];
    // $sqlglbal = "SELECT * FROM gl_bal_tbl WHERE account_number= '$glaccno'";
    // $resultglbal = mysqli_query($conn,$sqlglbal) or die($sqlglbal);
    // $glbaldata = mysqli_fetch_assoc($resultglbal);
    // $prevbal = $glbaldata['prev_bal'];
    // $newbal = $glbaldata['new_bal'];

    if($result){
    	//insert loan request into repayment table
        // $insquery =  mysqli_query($conn,"INSERT INTO dailysavingsmaster_tbl(`trans_id`, `cust_acc`, `cust_name`, `account_officer`, `amount`,`narration`, `ref_no`,`trans_type`, `entry_type`, `pay_type`, `status`, `status2`, `post_by`, `confirm_by`, `trans_date`, `date_time`)SELECT `trans_id`, `cust_acc`, `cust_name`, `account_officer`, `amount`,`narration`, `ref_no`,`trans_type`,`entry_type`, `pay_type`, `status`, `status2`, `post_by`, `confirm_by`, `trans_date`, `date_time` FROM data_entry_tbl WHERE status3= 'unmove' AND status2!='delete' AND post_by_id='$pb'") or die(mysqli_error($conn));

        // $sql2 = "UPDATE data_entry_tbl SET status3 = 'moved' WHERE status3='unmove' AND post_by_id='$pb'"; 
        // $result2= mysqli_query($conn,$sql2) or die(mysqli_error($conn));

        $sql3 = "UPDATE income_tbl SET status = 'Confirmed', confirmed_by='$dbname
        ' WHERE status='Processing'"; 
        $result3= mysqli_query($conn,$sql3) or die(mysqli_error($conn));

        echo "<script>window.alert('Transaction Successfully Confirmed');
  		window.location.href='accoff-postedentries.php'</script>";
	

        // $sql = "UPDATE gl_bal_tbl SET prev_bal = '$prevbal' AND new_bal = '$newbal' WHERE status='Processing'"; 
        // $result= mysqli_query($conn,$sql);
        // $msg = "All Entry(s) Confirmed";
        // $alerttype = "success";
    }
}else{
	echo "check your query";
}


?>