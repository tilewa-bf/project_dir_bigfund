<?php

include "../db.php";


$sql = "SELECT * FROM passbook";
$result = mysqli_query($conn,$sql);
while($rows = mysqli_fetch_assoc($result)){
	$nod = $rows['no_of_days'];
	$upnod = $nod - 1;
	if($nod==0){
		$sql2 = "UPDATE passbook SET status='inactive' WHERE no_of_days=0";
		mysqli_query($conn,$sql2);
	}elseif($nod>0){
		$sql3 = "UPDATE passbook SET no_of_days='$upnod' WHERE no_of_days>0";
		mysqli_query($conn,$sql3);
	}
}
mysqli_close($conn);

?>