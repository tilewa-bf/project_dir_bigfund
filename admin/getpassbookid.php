<?php
include "../db.php";

if(isset($_GET['q'])){
	$member_id = $_GET['q'];
}

$sql = "SELECT surname,firstname,othername,contribution,passbook_id FROM member INNER JOIN passbook ON member.member_id ='".$_GET['q']."' AND passbook.member_id='".$_GET['q']."'";

$query = mysqli_query($conn,$sql) or die($sql);

$row = mysqli_fetch_assoc($query);

$surname = $row['surname'];
$firstname = $row['firstname'];
$othername = $row['othername'];
$fullname = $surname. " ". $firstname. " ". $othername;
$passbookid = $row['passbook_id'];
$conamt = $row['contribution'];

echo "<div>". "<label>". $fullname. " ". " "." "." ". " ". $passbookid."</label>". "</div>";
?>