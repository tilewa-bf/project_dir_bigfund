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

$connection = mysqli_connect("localhost","geexsmit_OGC_JBA","WG{w!i&m9MbF","geexsmit_branch");
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

$conn = mysqli_connect("localhost","geexsmit_OGC_JBA","WG{w!i&m9MbF","$branchdatabase");
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

<!doctype html>
<html lang="en">

<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/bigfund.png">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

<style type="text/css">
    body, html {
    height: 100%;
    }

@media screen and (max-width:600px){
    body,html{
        height: 100px;
    }
} 

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image:url("assets/images/Geexsmith6.jpg");

  /* Control the height of the image */
  min-height: 850px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position:relative;
  bottom:-100px;
  right:-450px;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
  border-radius:15px;
}

@media screen and (max-width:600px){
    .container{
        position: relative;
        max-width: 100px;
        bottom:-80px;
        right:-100px;
        margin: 20px;
        max-width: 300px;
        padding: 16px;
        background-color: white;
        border-radius:15px;
    }
}

/* Full-width input fields */
  input[type=text], input[type=password],select {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

@media screen and (max-width:600px){
    input[type=text], input[type=password],select{
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        border: none;
        background: #f1f1f1;
    }
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
    </style>

    </head>

    <body>
    	<div class="bg-img">
		  <form action="/action_page.php" class="container">
		    <h2 style="text-align: center;">Geexsmith Perfect Wisdom</h2>

            <label for="email"><b>Branch Code</b></label>
            <select name="branchcode">
                <option selected value="Choose Branch Code">Choose Brance Code</option>
                <option value="GEEXSMITH">GEEXSMITH</option>
            </select>

		    <label for="email"><b>Email</b></label>
		    <input type="text" placeholder="Enter Email" name="email" required>

		    <label for="psw"><b>Password</b></label>
		    <input type="password" placeholder="Enter Password" name="password" required>

		    <button type="submit" class="btn">Login</button>
		  </form>
		</div>

        <!-- end account-pages -->

        <!-- JAVASCRIPT -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>
        
        <!-- App js -->
        <script src="assets/js/app.js"></script>

    </body>
</html>