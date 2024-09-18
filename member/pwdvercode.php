<?php
session_start();

include "../db.php";

if(!isset($_SESSION['veremail'])){
    header("Location:ps.php");   
}else{
    $email = $_SESSION['veremail'];
}

    if(isset($_POST['confirm'])){

        $no1 = $_POST['no1'];
        $no2 = $_POST['no2'];
        $no3 = $_POST['no3'];
        $no4 = $_POST['no4'];
        $vcode = $no1.$no2.$no3.$no4;
        //$vcode=7639;

        $sql = "SELECT * FROM forgot_password WHERE vcode ='".$vcode."' AND status='active'";
        $result= mysqli_query($conn,$sql) or mysqli_error();
        $numrows = mysqli_num_rows($result);
        if($numrows > 0 ){
            $sql ="UPDATE forgot_password SET status='inactive'";
            mysqli_query($conn,$sql);
            header("Location:forgot-password.php");
            /*
            $row = mysqli_fetch_array($result);
            $dbvcode = $row['vcode'];
            $dbveremail = $row['email'];*/
        }else{
            $msg = "Invalid Verification Code";
        }

        mysqli_close($conn);
            }
    

?>


<!doctype html>
<html lang="en">



<head>

    <meta charset="utf-8" />
    <title>Thrift Pay | Password Set Up</title>
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-center mb-5 text-muted">
                        <a href="index.html" class="d-block auth-logo">
                            <img src="assets/images/logo-dark.png" alt="" height="20" class="auth-logo-dark mx-auto">
                            <img src="assets/images/logo-light.png" alt="" height="20" class="auth-logo-light mx-auto">
                        </a>
                        <p class="mt-3"></p>
                    </div>
                </div>
            </div>
            <!-- end row -->
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6 col-xl-5">
                    <div class="card">

                        <div class="card-body">

                            <div class="p-2">
                                <div class="text-center">
                                    <?php if(isset($msg)){?> <div style="width:100%;height:50px;background:pink;line-height:50px;color:white;text-align:center"><?php echo $msg; ?></div> <?php } ?>

                                    <div class="avatar-md mx-auto">
                                        <div class="avatar-title rounded-circle bg-light">
                                            <i class="bx bxs-envelope h1 mb-0 text-primary"></i>
                                        </div>
                                    </div>
                                    <div class="p-2 mt-4">

                                        <h4>Verify your email</h4>
                                        <p class="mb-5">Please enter the 4 digit code sent to <span
                                                class="font-weight-semibold"><?php echo $email;?></span></p>

                                        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div class="row">
                                                <div class="col-3">
                                                    <div class="mb-3">
                                                        <label for="digit1-input" class="visually-hidden">Dight 1</label>
                                                        <input type="text" name="no1"
                                                            class="form-control form-control-lg text-center"
                                                            onkeyup="moveToNext(this, 2)" maxLength="1"
                                                            id="digit1-input">
                                                    </div>
                                                </div>

                                                <div class="col-3">
                                                    <div class="mb-3">
                                                        <label for="digit2-input" class="visually-hidden">Dight 2</label>
                                                        <input type="text" name="no2"
                                                            class="form-control form-control-lg text-center"
                                                            onkeyup="moveToNext(this, 3)" maxLength="1"
                                                            id="digit2-input">
                                                    </div>
                                                </div>

                                                <div class="col-3">
                                                    <div class="mb-3">
                                                        <label for="digit3-input" class="visually-hidden">Dight 3</label>
                                                        <input type="text" name="no3"
                                                            class="form-control form-control-lg text-center"
                                                            onkeyup="moveToNext(this, 4)" maxLength="1"
                                                            id="digit3-input">
                                                    </div>
                                                </div>

                                                <div class="col-3">
                                                    <div class="mb-3">
                                                        <label for="digit4-input" class="visually-hidden">Dight 4</label>
                                                        <input type="text" name="no4" 
                                                            class="form-control form-control-lg text-center"
                                                            onkeyup="moveToNext(this, 4)" maxLength="1"
                                                            id="digit4-input">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-3 d-grid">
                                            <button type="submit" name="confirm" class="btn btn-primary waves-effect waves-light">Submit</button>
                                        </div>
                                        </form>

                                        
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="mt-5 text-center">
                        <p>Did't receive a code ? <a href="auth-recoverpw.php" class="fw-medium text-primary"> Resend </a> </p>
                        <p>©
                            <script>document.write(new Date().getFullYear())</script> ThriftPay. Crafted with <i
                                class="mdi mdi-heart text-danger"></i> by Jobastech.</p>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- JAVASCRIPT -->
    <script src="assets/libs/jquery/jquery.min.js"></script>
    <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/metismenu/metisMenu.min.js"></script>
    <script src="assets/libs/simplebar/simplebar.min.js"></script>
    <script src="assets/libs/node-waves/waves.min.js"></script>

    <!-- two-step-verification js -->
    <script src="assets/js/pages/two-step-verification.init.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>
</body>


<!-- Mirrored from themesbrand.com/skote/layouts/auth-two-step-verification.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Mar 2021 14:30:18 GMT -->
</html>