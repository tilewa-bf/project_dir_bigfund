<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['approvemember'])){
	$id = $_GET['approvemember'];

	$query = "UPDATE member SET updated_by='$dbname', status2='Active' WHERE id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Member Approve Successfully');
  window.location.href='approve-member.php'</script>";
	}
}else{
	echo "Check your Query";
}


?>