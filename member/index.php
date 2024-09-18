<?php
include "../db.php";

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

$email = test_input($_POST['email']);
$mid = test_input($_POST['email']);
$password = test_input($_POST['password']);



$sql = "SELECT * FROM member WHERE (email='".$email."' OR member_id='".$mid."') && password='".$password."'";
$result = mysqli_query($conn, $sql) or die($sql);



if(mysqli_num_rows($result)==1){

    while($row = mysqli_fetch_assoc($result))
    {

        $id= $row["member_id"];
        $email= $row['email'];
        $_SESSION['member_id'] = $id;
        $_SESSION['memail'] = $email;
       
       
    header("Location:savplan.php");
  }
}
  
else{
    $msg =  "Invalid Email or Password";
}

    mysqli_close($conn);
}
}
?>

<!doctype html>
<html lang="en">

    
<head>
        
        <meta charset="utf-8" />
        <title>Thrif Pay | Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- owl.carousel css -->
        <link rel="stylesheet" href="assets/libs/owl.carousel/assets/owl.carousel.min.css">

        <link rel="stylesheet" href="assets/libs/owl.carousel/assets/owl.theme.default.min.css">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body class="auth-body-bg">
        
        <div>
            <div class="container-fluid p-0">
                <div class="row g-0">
                    
                    <div class="col-xl-9">
                        <div class="auth-full-bg pt-lg-5 p-4">
                            <div class="w-100">
                                <div class="bg-overlay"></div>
                                <div class="d-flex h-100 flex-column">
    
                                    <div class="p-4 mt-auto">
                                        <div class="row justify-content-center">
                                            <div class="col-lg-7">
                                                <div class="text-center">
                                                    
                                                    <h4 class="mb-3"></>Thrift Pay <h4>
                                                    
                                                    <div dir="ltr">
                                                        <div class="owl-carousel owl-theme auth-review-carousel" id="auth-review-carousel">
                                                            <div class="item">
                                                                <div class="py-3">
                                                                    <p class="font-size-16 mb-4">" You are welcome to Thrift Pay Login Page. Kindly use the form at the right hand side to login."</p>
    
                                                                    <div>
                                                                        <h4 class="font-size-16 text-primary">&copy 2021</h4>
                                                                        <p class="font-size-14 mb-0">- Thrift Pay User</p>
                                                                    </div>
                                                                </div>
                                                                
                                                            </div>
    
                                                            <div class="item">
                                                                <div class="py-3">
                                                                    <p class="font-size-16 mb-4">" You are welcome to Thrift Pay Login Page. Kindly use the form at the right hand side to login."</p>
    
                                                                    <div>
                                                                        <h4 class="font-size-16 text-primary">&#169; 2021</h4>
                                                                        <p class="font-size-14 mb-0">- Thrift Pay User</p>
                                                                    </div>
                                                                </div>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end col -->

                    <div class="col-xl-3">
                        <div class="auth-full-page-content p-md-5 p-4">
                            <div class="w-100">

                                <div class="d-flex flex-column h-100">
                                    <div class="mb-4 mb-md-5">
                                        <a href="index.php" class="d-block auth-logo">
                                            <img src="assets/images/thrift.jpg" alt="" height="60" class="auth-logo-dark">
                                            <img src="assets/images/thrift.jpg" alt="" height="60" class="auth-logo-light">
                                        </a>
                                    </div>
                                    <div class="my-auto">
                                        
                                        <div>
                                            <h5 class="text-primary">Welcome Back !</h5>
                                            <p class="text-muted">Sign in to continue to Thriftpay.</p>
                                        </div>
            
                                         <?php if(isset($msg)){?> <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                <i class="mdi mdi-block-helper me-2"></i>
                                                <?php echo $msg; ?>
                                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button><?php } ?>

                                            </div>


                                        <div class="mt-4">
                                            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                
                                                <div class="mb-3">
                                                    <label for="useremail" class="form-label">Email</label>
                                                    <input type="text" name="email" class="form-control" id="useremail" placeholder="Enter email or Member ID" required>  
                                                    <div class="invalid-feedback">
                                                        Please Enter Email
                                                    </div>        
                                                </div>
                        
                                                <div class="mb-3">
                                                    <div class="float-end">
                                                        <a href="auth-recoverpw.php" class="text-muted" required>Forgot password?</a>
                                                    </div>
                                                    <label class="form-label">Password</label>
                                                    <div class="input-group auth-pass-inputgroup">
                                                        <input type="password" name="password" class="form-control" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon" required>
                                                        <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                                    </div>
                                                </div>
                        
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="remember-check">
                                                    <label class="form-check-label" for="remember-check">
                                                        Remember me
                                                    </label>
                                                </div>
                                                
                                                <div class="mt-3 d-grid">
                                                    <button type="submit" name="login" class="btn btn-primary waves-effect waves-light" type="submit">Log In</button>
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

                                            </form>
                                            <div class="mt-5 text-center">
                                                <p>Don't have a password ? <a href="ps.php" class="fw-medium text-primary"> Click here</a> </p>
                                            </div>
                                            <div class="mt-5 text-center">
                                                <p>Don't have an account ? <a href="mregister.php" class="fw-medium text-primary"> Signup now </a> </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mt-4 mt-md-5 text-center">
                                        <p class="mb-0">© <script>document.write(new Date().getFullYear())</script> Thriftpay. Crafted with <i class="mdi mdi-heart text-danger"></i> by Jobastech</p>
                                    </div>
                                </div>
                                
                                
                            </div>
                        </div>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container-fluid -->
        </div>

        <!-- JAVASCRIPT -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>

        <!-- owl.carousel js -->
        <script src="assets/libs/owl.carousel/owl.carousel.min.js"></script>

        <!-- auth-2-carousel init -->
        <script src="assets/js/pages/auth-2-carousel.init.js"></script>
        
        <!-- App js -->
        <script src="assets/js/app.js"></script>

    </body>

<!-- Mirrored from themesbrand.com/skote/layouts/auth-login-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Mar 2021 14:30:17 GMT -->
</html>
