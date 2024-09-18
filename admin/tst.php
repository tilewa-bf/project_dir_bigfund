<?php

?>
<!Doctype html>
<html lang="en">
<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Forgot Password</title>
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
                                        <?php if(isset($msg)){?> <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                <i class="mdi mdi-block-helper me-2"></i>
                                                <?php echo $msg; ?>
                                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button><?php } ?>

                                            </div>
                                        <div class="text-primary p-4">
                                            <h5 style="font-weight:bold;" class="text-primary">Password Reset</h5>
                                            <p style="font-size: 14px;">Get your password reset below.</p>
                                        </div>
                                    </div>
                                    <div class="col-5 align-self-end">
                                        <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body pt-0"> 
                                <div>
                                    <a href="index.html">
                                        <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="assets/images/logo.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                                <div class="p-2">
                                    <form class="needs-validation" METHOD="POST" action="forgot-password.php">
                                        <div class="mb-3">
                                                    <label for="useremail" class="form-label">Branch Code</label>
                                                    <select name="branchcode" class="form-control" required>
                                                        <option value="">Choose Branch Code</option>
                                                        <option value="OKEARO">OKEARO</option> 
                                                        <option value="ABULEEGBA">ABULEEGBA</option>
                                                    </select>        
                                        </div>
                                        <div class="mb-3">
                                            <!--<label for="useremail" class="form-label">Email</label>-->
                                            <input type="hidden" name="email" value='<?php echo $email;?>' class="form-control" id="email"> 
                                             <input type="hidden" name="action" value="update" /> 
                                            <!-- <div class="invalid-feedback">
                                                Please Enter Email
                                            </div>  -->     
                                        </div>
                
                                        <div class="mb-3">
                                            <label for="userpassword" class="form-label">Password</label>
                                            <input name="pwd" type="password" class="form-control" id="userpassword" placeholder="Enter password" required>
                                            <div class="invalid-feedback">
                                                Please Enter Password
                                            </div>       
                                        </div>
                
                                        <div class="mb-3">
                                            <label for="userpassword" class="form-label">Confirm Password</label>
                                            <input name="cpwd" type="password" class="form-control" id="userpassword" placeholder="Enter password" required>
                                            <div class="invalid-feedback">
                                                Confirm New Password
                                            </div>       
                                        </div>
                                        <div class="mt-4 d-grid">
                                            <button name='submit' class="btn btn-primary waves-effect waves-light" type="submit">Reset Password</button>
                                        </div>
                                    </form>
                                </div>
            
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            
                            <div>
                                <p>Already have an account ? <a href="login.php" class="fw-medium text-primary"> Login</a> </p>
                                <p>© <script>document.write(new Date().getFullYear())</script> Nikol Empowerment. Crafted with <i class="mdi mdi-heart text-danger"></i> by Jobastech</p>
                            </div>
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

        <!-- validation init -->
        <script src="assets/js/pages/validation.init.js"></script>
        
        <!-- App js -->
        <script src="assets/js/app.js"></script>

    </body>
</html>