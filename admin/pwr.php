<?php

if($_SERVER["REQUEST_METHOD"]=="POST"){
if(isset($_POST['submit'])){
if(isset($_POST["email"]) && (!empty($_POST["email"]))){
   include "../db.php";
$email = $_POST["email"];
$email = filter_var($email, FILTER_SANITIZE_EMAIL);
$email = filter_var($email, FILTER_VALIDATE_EMAIL);
   if(!$email){
      $error = "Invalid email enter";
   }else{
      $sql = "SELECT * FROM staff_tbl WHERE email='".$email."'";
      $query = mysqli_query($conn,$sql);
      if(mysqli_num_rows($query)==1){
         $rows = mysqli_fetch_assoc($query);
         $dbemail = $rows['email'];
      }else{
         $error = "User not part of the system";
      }
   }
   if(isset($error)){
      $msg = $error;
   }else{
      $key=bin2hex(random_bytes(16));
      $expFormat=mktime(date("H"),date("i"),date("s"),date("m"),date("d")+1,date("Y"));
      $expDate=date("Y-m-d H:i:s",$expFormat);
      $sqlins = "INSERT INTO `pwd_reset`(`pwd_id`, `email`, `key`, `expDate`) VALUES ('NULL','$email','$key','$expDate')"
      $queryins = mysqli_query($conn,$sqlins);
   }
   if($queryins){
      $msg="Token enter successsfully";
   }else{
      $msg="Not successful tokenization";
   }

   }
}
}
?>
<!DOCTYPE html>
<html>
<head>
   <title></title>
   <style type="text/css">
      .error p {
   color:#FF0000;
   font-size:20px;
   font-weight:bold;
   margin:50px;
   }
   </style>
</head>
<body>
<form method="post" action="pwr.php" name="reset"><br /><br />
<label><strong>Enter Your Email Address:</strong></label><br /><br />
<input type="email" name="email" placeholder="username@email.com" />
<br /><br />
<input type="submit" value="Reset Password"/>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<?php } ?>
</body>
</html>
