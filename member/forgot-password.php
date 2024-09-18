<?php
session_start();

include "../db.php";
include "../function.php";

if(!isset($_SESSION['veremail'])){
    header("Location:ps.php");   
}else{
    $email = $_SESSION['veremail'];
}

if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){


        $password = test_input($_POST['password']);
        $cpassword = test_input($_POST['cpassword']);

        if($password!=$cpassword){
            $errors = "Password Mismatch";
        }else{
            $password = test_input($_POST['password']);
        }

        if(isset($errors)){
            $msg = $errors;
        }else{

        $email = mysqli_real_escape_string($conn, $email);

        $sql = "UPDATE member SET password='".$password."' WHERE email='".$email."'";
        $result =mysqli_query($conn,$sql) or mysqli_error();

        //$sql = "SELECT * FROM member WHERE email='".$email."' AND password =null";
        //$result = mysqli_query($conn, $sql) or mysql_error();
        //$numrows = mysqli_num_rows($result);

        /*if($numrows > 0){
            $rows = mysqli_fetch_assoc($result);
            $uemail = $rows['email'];

            $sql = "UPDATE member SET password='".$password."' WHERE email='".$email."'";
            $result =mysqli_query($conn,$sql) or mysqli_error();*/

            if($result){
                $msg= "Password Reset Successful";
            }

        //}
    }//end else

    mysqli_close($conn);
    }
}

?>
<!doctype html>
<html lang="en">

    
<head>
        
        <meta charset="utf-8" />
        <title>Thrift Pay | Password Set up</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body>
        <div class="account-pages my-5 pt-sm-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card overflow-hidden">
                            <div class="bg-primary bg-soft">
                                <div class="row">
                                    <div class="col-7">
                                        <div class="text-primary p-4">
                                            <h5 class="text-primary">Set Up Your New Password Below.</h5>
                                            <!--<p>Sign in to continue to Skote.</p>-->
                                        </div>
                                    </div>
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

                                    <a href="index.html" class="auth-logo-dark">
                                        <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="assets/images/logo.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                                <div class="p-2">
                                    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                                        <?php if(isset($msg)){?> <div style="width:100%;height:50px;background:Lightgreen;line-height:50px;color:white;text-align:center"><?php echo $msg; ?></div> <?php } ?>
        
                                        <div class="mb-3">
                                            <label class="form-label">Password</label>
                                            <div class="input-group auth-pass-inputgroup">
                                                <input type="password" name="password" class="form-control" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon">
                                                <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                            </div>
                                        </div>
                
                                        <div class="mb-3">
                                            <label class="form-label">Confrim Password</label>
                                            <div class="input-group auth-pass-inputgroup">
                                                <input type="password" name="cpassword" class="form-control" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon">
                                                <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                            </div>
                                        </div>
                                        <!--
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="remember-check">
                                            <label class="form-check-label" for="remember-check">
                                                Remember me
                                            </label>
                                        </div>-->
                                        
                                        <div class="mt-3 d-grid">
                                            <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light" >Submit</button>
                                        </div>
                                        <!--
                                        <div class="mt-4 text-center">
                                            <h5 class="font-size-14 mb-3">Sign in with</h5>
            
                                            <ul class="list-inline">
                                                <li class="list-inline-item">
                                                    <a href="javascript::void()" class="social-list-item bg-primary text-white border-primary">
                                                        <i class="mdi mdi-facebook"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="javascript::void()" class="social-list-item bg-info text-white border-info">
                                                        <i class="mdi mdi-twitter"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="javascript::void()" class="social-list-item bg-danger text-white border-danger">
                                                        <i class="mdi mdi-google"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>-->
                                        
                                        <div class="mt-4 text-center">
                                            <a href="index.php" class="text-muted"></i>Login</a>
                                        </div>
                                    </form>
                                </div>
            
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            
                            <div>
                                <!--<p>Don't have an account ? <a href="auth-register.html" class="fw-medium text-primary"> Signup now </a> </p>-->
                                <p>© <script>document.write(new Date().getFullYear())</script> Thriftpay. Crafted with <i class="mdi mdi-heart text-danger"></i> by Jobastech.</p>
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

<!-- Mirrored from themesbrand.com/skote/layouts/auth-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Mar 2021 14:30:16 GMT -->
</html>
