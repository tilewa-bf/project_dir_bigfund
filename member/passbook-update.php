<?php

include "../db.php";

$sql = "SELECT * FROM passbook";
$result = mysqli_query($conn,$sql);
while($rows = mysqli_fetch_assoc($result)){
	$nod = $rows['no_of_days'];
	$upnod = $nod - 1;
	if($nod==0){
		$sql = "UPDATE passbook SET status='inactive' WHERE no_of_days=0";
		mysqli_query($conn,$sql);
	}elseif($nod>0){
		$sql = "UPDATE passbook SET no_of_days='$upnod' WHERE no_of_days>0";
		mysqli_query($conn,$sql);
	}
}
mysqli_close($conn);

?>