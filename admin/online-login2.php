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
        <title>Geexsmith | Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/geexsmith.ico">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

        <style type="text/css">
            .bg-overlay{background-image:url(../images/Geexsmith6.jpg)!important;background-size:cover;background-repeat:no-repeat;background-position:center}
        </style>

    </head>

    <body>
        <div class="account-pages my-5 pt-sm-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5 col-xl-4">
                        <div class="card overflow-hidden">
                            <div class="bg-primary bg-soft">
                                <div class="row">
                                    <div class="col-7">
                                        <div class="text-primary p-4">
                                            <h5 class="text-primary">Welcome Back !</h5>
                                            <p>Sign in to continue to Geexsmith.</p>
                                        </div>
                                    </div>
                                    <?php if(isset($msg)){?> <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        
                                    <i class="mdi mdi-block-helper me-2"></i>
                                    <?php echo $msg; ?>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button><?php } ?>
                                   
                                    <div class="col-5 align-self-end">
                                        <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body pt-0"> 
                                <div class="auth-logo">
                                    <a href="index.html" class="auth-logo-light">
                                        <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="assets/images/logo-light.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                                
                                    <div class="p-2">
                                    <form autocomplete="off" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                                <div class="mb-3">
                                                    <label for="useremail" class="form-label">Branch Code</label>
                                                    <select tabindex="1" name="branchcode" class="form-control" required>
                                                        <option value="">Choose Branch Code</option>
                                                        <option value="GEEXSMITH">GEEXSMITH</option>
                                                    </select>
                                                        
                                                </div>

                                                <div class="mb-3">
                                                    <label for="useremail" class="form-label">User ID</label>
                                                    <input tabindex="2" type="text" name="email" class="form-control" id="useremail" placeholder="Enter User ID" required>          
                                                </div>
                        
                                                <div class="mb-3">
                                                    <div class="float-end">
                                                        <!--<a href="pwr.php" class="text-muted">Forgot password?</a>-->
                                                    </div>
                                                    <label class="form-label">Password</label>
                                                    <div class="input-group auth-pass-inputgroup">
                                                        <input tabindex="2" type="password" name="password" class="form-control" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon" required>
                                                        <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                                    </div>
                                                </div>
                        
                                                <div class="form-check">
                                                    <!-- <input class="form-check-input" type="checkbox" id="remember-check"> -->
                                                    <!-- <label class="form-check-label" for="remember-check">
                                                        Remember me
                                                    </label> -->
                                                </div>
                                                
                                                <div class="mt-3 d-grid">
                                                    <button type="submit" name="login" class="btn btn-primary waves-effect waves-light" type="submit">Log In</button>
                                                </div>
                                            </form>
                                </div>
                            </div>
                        </div>
                        

                    </div>
                </div>
            </div>
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
