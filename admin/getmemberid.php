<?php
include "../db.php";

if(isset($_GET['q'])){
	$member_id = $_GET['q'];
}

$sql = "SELECT * FROM member WHERE member_id ='".$_GET['q']."'";

$query = mysqli_query($conn,$sql);

$row = mysqli_fetch_array($query);

$surname = $row['surname'];
$firstname = $row['firstname'];
$othername = $row['othername'];
$fullname = $surname. " ". $firstname. " ". $othername;

echo "<section>"."<form>"."<div class='row'>"."<div class=class='col-lg-6'>"."<input disabled type='text' name='membername' class='form-control' value='$fullname'>"."</input>"."</div>"."<div class='col-lg-6'>"."<input style='margin-top:10px;' disabled type='text' name='surname' class='form-control' value='$surname'>"."</input>". "</div>"."</div>"."</form>"."</section>";

										

?>