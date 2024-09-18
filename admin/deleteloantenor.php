<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deleteloantenor'])){
	$id = $_GET['deleteloantenor'];

	$query = "UPDATE loan_tenor_tbl SET status2='deleted' WHERE tenor_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Loan Tenor Deleted Successfully');
  window.location.href='approve_tenor.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>