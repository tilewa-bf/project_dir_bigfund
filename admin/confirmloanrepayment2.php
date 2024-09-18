<?php
include "../db.php";
include "../auth.php";


if(isset($_GET['confirmrepayment'])){
	$id = $_GET['confirmrepayment'];
	date_default_timezone_set('Africa/Lagos');
	$updatedt=date('Y-m-d h:i:sa');

	// $qr = mysqli_query($conn,"SELECT * FROM staff_tbl WHERE lastname LIKE '%id%'");
	// $rows = mysqli_fetch_assoc($qr);
	// $lastname = $rows['lastname'];
	// $firstname = $rows['firstname'];
	
	// $fullname = $lastname." ". $firstname;

	// $query = "UPDATE rep_tbl SET status='confirmed', confirmed_by='$dbname',update_dt='$updatedt' WHERE loan_code NOT LIKE '%100219%' AND member_name NOT LIKE '%Loan Account%' AND status='pending' AND status2!='deleted' AND created_by='".$id."'";


	$query = "UPDATE rep_tbl SET status='confirmed', confirmed_by='$dbname',update_dt='$updatedt' WHERE status='pending' AND status2!='deleted' AND trans_id='".$id."'";
	$result = mysqli_query($conn,$query) or die(mysqli_error($conn));

	    //PHP to send SMS
		$sql ="SELECT * FROM rep_tbl WHERE tenor='WEEKLY' AND status!='pending' AND loan_code NOT LIKE '%100129%' AND trans_id='".$id."'";
		$query = mysqli_query($conn,$sql);
		$rows = mysqli_fetch_assoc($query);
		$loanno = $rows['loan_code'];
		$loangroup=$rows['group_name'];
		$transid=$rows['trans_id'];
		$accname = $rows['member_name'];
		$memberphone = $rows['member_phone'];
		$postedby=$rows['created_by'];
		$accoff=$rows['account_officer'];
		$value=$rows['credit'];
		$total=$total+$value;

		//Get the total loan balance
		$loanmembersql = "SELECT sum(debit) as debit, sum(savings_amount) as savamt,SUM(repayment_amount) as tp FROM rep_tbl WHERE loan_code = '$loanno' AND status!='pending'";
		$loanmemberquery = mysqli_query($conn,$loanmembersql) or die($loanmembersql);
		$loanmemberdata = mysqli_fetch_assoc($loanmemberquery);
		
		$dbloanpi2 = $loanmemberdata['debit'];
		$dbtotalPaid = $loanmemberdata['tp'];
		$dbloanbal = $dbloanpi2 - $dbtotalPaid;
	
		//SMS MESSAGE
		$curl = curl_init();
	
	curl_setopt_array($curl, [
	  CURLOPT_URL => "https://api.smslive247.com/api/v4/sms",
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 30,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "POST",
	  CURLOPT_POSTFIELDS => "{\"senderID\":\"BIGFUND\",\"messageText\":\"Your loan balance is N4,000. Kindly balance up. Signed Bigfund.\",\"deliveryTime\":\"2024-08-24T20:35:00.056Z\",\"mobileNumber\":\"07048032566\",\"route\":\"string\"}",
	  CURLOPT_HTTPHEADER => [
		"Authorization: Bearer MA-936297c9-291e-4b24-8701-0c6aafdb4a8f",
		"accept: application/json",
		"content-type: application/*+json"
	  ],
	]);
	
	$response = curl_exec($curl);
	$err = curl_error($curl);
	
	curl_close($curl);
	
	if ($err) {
	  echo "cURL Error #:" . $err;
	} else {
	  echo $response;
	}

	if($result){
		// //insert loan request into repayment table
		// $insquery =  mysqli_query($conn,"INSERT INTO repayment_tbl(`trans_id`, `member_id`, `loan_code`, `member_name`,`group_name`,`account_officer`,`applied_amount`,`approved_amount`,`reverseamount`, `repayment_amount`, `status`, `narration`, `confirmed_by`, `created_by`, `creation_date`, `date_time`, `updated_by`, `update_dt`, `status2`)SELECT `trans_id`, `member_id`, `loan_code`, `member_name`,`group_name`,`account_officer`, `applied_amount`,`approved_amount`,`reverseamount`, `repayment_amount`, `status`, `narration`, `confirmed_by`, `created_by`, `creation_date`, `date_time`, `updated_by`, `update_dt`, `status2` FROM temp_rep_tbl WHERE temp_rp_id= '".$id."'") or die(mysqli_error($conn));

		 // $sql = "UPDATE income_tbl SET status = 'Confirmed', confirmed_by = '$dbname' WHERE status='Processing' AND trans_id='".$id."'"; 
   //       $result= mysqli_query($conn,$sql);

		echo "<script>window.alert('Transaction Confirmed Successfully');
  		window.location.href='confirmrepayment2.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>