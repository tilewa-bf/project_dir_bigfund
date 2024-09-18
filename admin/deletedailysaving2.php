<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletedeposit'])){
	$id = $_GET['deletedeposit'];

	$query = "UPDATE data_entry_tbl SET status2='delete' WHERE d_id = '$id' AND status2='undelete'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Entry Deleted Successfully');
  window.location.href='dailysaving-mcharges.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>