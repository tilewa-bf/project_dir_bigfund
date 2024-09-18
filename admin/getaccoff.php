<?php 
include "../db.php";

if(isset($_GET['q'])){
    $groupname = $_GET['q'];
}

$sql = "SELECT * FROM group_tbl WHERE group_name='$groupname'";
$query = mysqli_query($conn,$sql);
$rows = mysqli_fetch_assoc($query); 
$dbaccoff = trim($rows['account_officer']);

echo "<div>". "<input hidden name='accoff' value='$dbaccoff'>" . "</input>". "</div>";
