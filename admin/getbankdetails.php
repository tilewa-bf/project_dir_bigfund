<?php
include "../db.php";

if(isset($_GET['b'])){
	$member_id = $_GET['b'];
}

$sql = "SELECT * FROM bank member_id='".$_GET['b']."'";

$query = mysqli_query($conn,$sql) or die($sql);

$row = mysqli_fetch_assoc($query);

$dbaccountname = $row['account_name'];
$dbbankname = $row['bank_name'];
$dbaccountnumber = $row['account_number'];

echo "<div>". "<label>". $dbaccountname. " ". " ". $dbaccountname." ".$dbaccountnumber."</label>". "</div>";
?>