<?php
include "../db.php";
include "../auth.php";

// session_start();
// if(isset($_SESSION['memberid'])){
// 	$memberid = $_SESSION['memberid'];
// }
// if(isset($_SESSION['savtype'])){
// 	$savtype = $_SESSION['savtype'];
// }


if(isset($_GET['deletedeposit'])){
	$id = $_GET['deletedeposit'];

	$query = "UPDATE deposit_savings_tbl SET status2='delete' WHERE trans_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	$query2 = "UPDATE income_tbl SET status2='delete' WHERE status='Processing' AND status2 = 'undelete' AND trans_id='".$id."'";
	$result2 = mysqli_query($conn,$query2);

	if($result){
		echo "<script>window.alert('Transaction Deleted Successfully');
  window.location.href='membersavings.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>