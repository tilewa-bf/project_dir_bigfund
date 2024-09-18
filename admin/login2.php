<?php


// include "../db.php";

if(empty($_SESSION)) // if the session not yet started 
session_start();

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}


if($_SERVER["REQUEST_METHOD"] =="POST"){
    if(isset($_POST['login'])){

$branchcode = test_input($_POST['branchcode']);

$connection = mysqli_connect("localhost","bigfund1_branch_db","dQzPBXaF9KrvhLqhs2Rr","bigfund1_branch_db");
if(!$connection){
    die("Wrong Connection to Branch Database").mysqli_connect_error();
}else{
    $branchsql = "SELECT * FROM setting_tbl WHERE branch_code='$branchcode'";
    $branchresult = mysqli_query($connection,$branchsql) or die($branchsql);
    if(mysqli_num_rows($branchresult)==1){
            $branchdata = mysqli_fetch_assoc($branchresult);
            $branchdatabase =$branchdata['db_name']; 
            $databasebranchname = $branchdata['branch_name'];
            $databasebranchcode = $branchdata['branch_code'];

            $_SESSION['branchdatabase'] = $branchdatabase;
            $_SESSION['databasebranchname'] = $databasebranchname;
            $_SESSION['databasebranchcode'] = $databasebranchcode;
        }
}

$conn = mysqli_connect("localhost","bigfund1_hqtrs_db","fd7g9VZ9UvsPJmKPmg5w","$branchdatabase");
if(!$conn){
    die("Wrong Connection").mysqli_connect_error();
}

$aid = test_input($_POST['email']);
$email = test_input($_POST['email']);
$password = test_input($_POST['password']);


// $sql = "SELECT * FROM staff_tbl WHERE (email='".$email."' OR staff_id='".$aid."') && password='".$password."'";
$sql = "SELECT * FROM staff_tbl WHERE staff_id='$aid' AND password='$password' AND status2='Active'";

$result = mysqli_query($conn, $sql) or die($sql);

if(mysqli_num_rows($result)==1){
    while($row = mysqli_fetch_assoc($result))
    {

        $id= $row["staff_id"];
        $email= $row['email'];
        $dbpassword = $row['password'];    
    }
      if(strcmp($dbpassword,$password)!=0){
        $msg = 'Ooops! Password Mismatch';
      }else{
        $_SESSION['email'] = $email;
        header("Location:dashboard.php");
      }
}
  
else{
    $msg =  "Invalid Email or Password or Inactive Account";
}

    mysqli_close($conn);
}
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Gesmit Login</title>
	<link rel="stylesheet" type="text/css" href="style46.css">
</head>
<body style="background-image: linear-gradient(rgba(0, 0, 0, 0.7),rgba(0, 0, 0, 0.7)), url(img/bg-login.png); margin: auto;">
     <div class="center">
     	<h1>Login</h1>
     	<form method="post">
     		<div class="txt_field">
     			<select>
     				<option value="BIGFUND">BIGFUND</option>
     			</select>
     		</div>
     		<div class="txt_field">
     			<input type="text" required>
     			<span></span>
     			<label>Username</label>
     		</div>
     		<div class="txt_field">
     			<input type="password" required>
     			<span></span>
     			<label>Password</label>
     		</div>
     		<!-- <div class="pass">Forgot Password?</div> -->
     		<input type="submit" value="Login">
     		<!-- <div class="signup_link">
     			Not a member? <a href="#">Signup</a>
     		</div> -->
     	</form>
     </div>

</body>
</html>