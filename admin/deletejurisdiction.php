<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletejurisdiction'])){
	$id = $_GET['deletejurisdiction'];

	$query = "UPDATE jurisdiction SET status2='deleted' WHERE jur_id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Jurisdiction Deleted Successfully');
  window.location.href='viewjurisdiction.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>