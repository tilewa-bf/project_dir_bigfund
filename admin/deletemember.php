<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['deletemember'])){
	$id = $_GET['deletemember'];

	$query = "UPDATE member SET status='deleted' WHERE id = '".$id."'";
	$result = mysqli_query($conn,$query);

	if($result){
		echo "<script>window.alert('Member Decline Successfully');
  window.location.href='approve-member.php'</script>";
	}
}else{
	echo "Check your Query";
}

?>