<?php
include "../db.php";
include "../auth.php";

$totalpayable="";
if(isset($_GET['confirmloanrequest'])){
	$id = $_GET['confirmloanrequest'];

	function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
	}

	if(empty($_POST['amt'])){
    $errors = "Approved amount is empty";
	}else{
	    $approvedamount = $_POST['amt'];
	    $approvedamount = str_replace(',', '', $approvedamount);
	    if(is_numeric($approvedamount)){
	        $approvedamount = $approvedamount;
	    }else{
	        $errors = "Approved amount Not Numeric";
	    }
	}
	$savtype = test_input($_POST['savtype']);
	// $loantenor = test_input($_POST['tenor2']);
	$sqlloanint = "SELECT * FROM loan_tenor_tbl WHERE tenor_name='$savtype'";
	$queryloanint = mysqli_query($conn,$sqlloanint);
	$lidata = mysqli_fetch_assoc($queryloanint);
	$loanint = $lidata['loan_tenor_int'];
	$loantenor = $lidata['loan_tenor'];
	
	// if($loantenor=="1 Week"){
	// 	$loantenor = "1 Week";
	// 	$noofdays = 7;
	// }elseif($loantenor=="2 Weeks"){
	// 	$loantenor ="2 Weeks";
	// 	$noofdays = 14;
	// }elseif($loantenor=="3 Weeks"){
	// 	$loantenor ="3 Weeks";
	// 	$noofdays = 14;
	// }elseif($loantenor=="1 Month"){
	// 	$loantenor = "4 Weeks";
	// 	$noofdays = 30;
	// }elseif($loantenor=="2 Months"){
	// 	$loantenor = "8 Weeks";
	// }elseif($loantenor=="3 Months"){
	// 	$loantenor ="12 Weeks";
	// }
	// if($savtype=="DAILY" && $loantenor="1 Week"){
	// 	$dailyrep = ceil($totalpayable / 7);
	// }elseif($savtype=="DAILY" && $loantenor="2 Weeks"){
	// 	$dailyrep = ceil($totalpayable / 14);
	// }elseif($savtype=="DAILY" && $loantenor="3 Weeks"){
	// 	$dailyrep = ceil($totalpayable / 21);
	// }elseif($savtype=="DAILY" && $loantenor="1 Month"){
	// 	$dailyrep = ceil($totalpayable / 30);
	// }

	$loanint = $approvedamount * $loanint;
	$totalpayable = $approvedamount + $loanint;
	$dailyrep = $totalpayable/30;
	$weeklyrep = $totalpayable/16;

	$approveddate = date("Y-m-d");
	$startdate = strtotime($approveddate);
	$enddate = strtotime($loantenor, $startdate);
	$enddate = date("Y-m-d", $enddate);
	$maturitydate = $enddate;

	$comments = $_POST['comments'];
	// if($savtype=="MONTHLY"){
	// 	$int = $approvedamount * 0.2408;
	// 	$totalpayable = $approvedamount + $int;
	// }
	// if($savtype=="WEEKLY"){
	// 	$int = $approvedamount * 0.196;
	// 	$totalpayable = $approvedamount + $int;
	// }
	// if($savtype=="DAILY"){
	// 	$int = $approvedamount * 0.2;
	// 	$totalpayable = $approvedamount + $int;
	// }
	
	
	
	// $approveddate = $_POST['approveddate'];
	// $maturitydate = $_POST['maturitydate'];

	// if($savtype=='MONTHLY'){
	// 	$approveddate = date("Y-m-d");
	// 	$startdate=strtotime($approveddate);
	// 	$enddate=strtotime("+23 weeks", $startdate);
	// 	$enddate = date("Y-m-d", $enddate);
	// 	$maturitydate = $enddate;
	// }
	// if($savtype=='WEEKLY'){
	// 	$approveddate = date("Y-m-d");
	// 	$startdate=strtotime($approveddate);
	// 	$enddate=strtotime("+23 weeks", $startdate);
	// 	$enddate = date("Y-m-d", $enddate);
	// 	$maturitydate = $enddate;
	// }
	// if($savtype=='DAILY'){
	// 	$approveddate = date("Y-m-d");
	// 	$startdate=strtotime($approveddate);
	// 	$enddate=strtotime("+4 weeks", $startdate);
	// 	$enddate = date("Y-m-d", $enddate);
	// 	$maturitydate = $enddate;
	// }



	$query = "UPDATE loan_request SET daily_rep='$dailyrep',weekly_rep='$weeklyrep', status='Confirmed',status1='Active',approved_amount='$approvedamount',total_payable='$totalpayable',narration='Loan Disbursed', updated_by='$dbname', comments='$comments',approved_date='$approveddate',maturity_date='$maturitydate' WHERE loan_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		//insert loan request into repayment table
		$insquery =  mysqli_query($conn,"INSERT INTO rep_tbl(member_id,loan_code,member_name,member_phone,group_name,account_officer,tenor,sector,applied_amount,approved_amount,total_payable,debit,daily_rep,weekly_rep,narration,status,created_by,creation_date, approved_date, maturity_date,updated_by)SELECT member_id,loan_code,member_name,member_phone,group_name,account_officer,tenor,sector,applied_amount,approved_amount,total_payable,total_payable,daily_rep,weekly_rep,narration,status,created_by,creation_date,approved_date, maturity_date,updated_by FROM loan_request WHERE loan_id= '".$id."'") or die(mysqli_error($conn));

			$insbaltbl =  mysqli_query($conn,"INSERT INTO balance_tbl(member_id,loan_code,member_name,group_name,total_payable,status,creation_date)SELECT member_id,loan_code,member_name,group_name,total_payable,status,creation_date FROM loan_request WHERE loan_id= '".$id."'") or die(mysqli_error($conn));
		echo "<script>window.alert('Loan Request Confirmed and Added to Repayment Table Successfully');
  		window.location.href='pendingloan-request.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>