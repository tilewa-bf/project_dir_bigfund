<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletedeposit'])){
	$id = $_GET['deletedeposit'];

	$query = "UPDATE data_entry_tbl SET status2='delete' WHERE trans_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	$query2 = "UPDATE income_tbl SET status2='delete' WHERE status='Processing' AND status2 = 'undelete' AND trans_id='".$id."'";
	$result2 = mysqli_query($conn,$query2);

	if($result){
		echo "<script>window.alert('Transaction Deleted Successfully');
  window.location.href='dailysaving-mcharges.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>