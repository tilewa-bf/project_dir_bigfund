<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletedeposit'])){
	$id = $_GET['deletedeposit'];

	$query = "UPDATE repayment_tbl SET status2='deleted' WHERE id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Deposit Deleted Successfully');
  window.location.href='confirmdep.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>