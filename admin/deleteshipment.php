<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deleteshipment'])){
	$id = $_GET['deleteshipment'];

	$query = "UPDATE shipment_tbl SET status2='deleted' WHERE shipment_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Shipment Deleted Successfully');
  window.location.href='shipments.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>