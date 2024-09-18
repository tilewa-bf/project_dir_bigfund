<?php
include "../db.php";


function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){

        $sid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);

        $date = date('Y-m-d');

        if(empty($_POST['firstname'])){
            $errors = "Firstname is empty";
        }else{
            $firstname = test_input($_POST['firstname']);
        }
        if(empty($_POST['lastname'])){
            $errors = "Lastname is empty";
        }else{
            $lastname = test_input($_POST['lastname']);
        }
        if(empty($_POST['jurisdiction'])){
            $errors = "Jurisdiction is empty";
        }else{
            $jurisdiction = test_input($_POST['jurisdiction']);
        }
        if(empty($_POST['email'])){
            $errors = "Email is empty";
        }else{
            $email = test_input($_POST['email']);
        }
        if(empty($_POST['password'])){
            $errors = "Password is empty";
        }else{
            $password = $_POST['password'];
        }

        if($_POST['email'] != $_POST['cemail']){
            $errors = "Email Mismatch";
        }else{
            $email = test_input($_POST['email']);
        }

        if($_POST['password'] != $_POST['cpassword']){
            $errors = "password Mismatch";
        }else{
            $password = test_input($_POST['password']);
        }

        if(isset($errors)){
            $msg = $errors;
        }else{

        $email = mysqli_real_escape_string($conn,$email);
        $sql = "SELECT * FROM admin WHERE email='".$email."'";   
        $query = mysqli_query($conn,$sql);
        $numrows = mysqli_num_rows($query);

        if($numrows > 0){
            $msg = "You have registered before!";
        }else{
            $sql2 = "INSERT INTO salesreps(id,sales_id,firstname,lastname,jurisdiction,admin_passport,email,password,phone,address,state,country,bvn,guarantor_name,guarantor_address,guarantor_phone,guarantor_passport,reg_date)VALUES(NULL,'$sid','$firstname','$lastname','$jurisdiction',NULL,'$email','$password',NULL,NULL,NULL,'Nigeria',NULL,NULL,NULL,NULL,NULL,'$date')";

            $query2 = mysqli_query($conn,$sql2) or die($sql2);
            if($query2){
                /*
                $subject = 'WELCOME TO THRIFT PAY!';
                $from = 'THRIFT PAY';
                 // To send HTML mail, the Content-type header must be set
                $headers  = 'MIME-Version: 1.0' . "\r\n";
                $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
                 // Create email headers
                $headers .= 'From: '.$from."\r\n".'Reply-To: '.$from."\r\n" .'X-Mailer: PHP/' . phpversion();
                 
                 
                // Compose a simple HTML email message
                $message = '<html><body>';
                $message .= '<div style="width:600px;height:auto;margin:auto;border:#f1f1f1 1px solid;border-radius:5px;">';
                $message .= '<div style="padding:10px 20px">'; 
                $message .='<p>Dear '.$_POST[lastname].'. " ".'.$_POST[firstname].',</p>';
                    
                $message .='<p>Welcome to Thrift Pay</p>';

                $message .='<p>Your Username is '.$_POST[email].',</p>'; 
                $message .='<p>Your Password is '.$_POST[password].',</p>'; 

                $message .='<p>Please do not share your login details with anyone.</p>';

                $message .='<p>Kind regards,</p>';
                $message .= '</div></div> ';
                $message .= '</body></html>';
                 
                // Sending email
                mail($_POST[email], $subject, $message, $headers);*/

                $msg = "Registration Successful. Check Your Email for account details";
            }else{
                $msg = "Registration Not Successful";
            }
        }
        }
        mysqli_close($conn);
    }
}



?>

<!doctype html>
<html lang="en">


    

<head>
        
        <meta charset="utf-8" />
        <title>Thrift Pay | Member Account Creation </title>
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

    <body data-sidebar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <?php include "navigation.php";?>


            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        
                        <?php if(isset($msg)){?> <div style="width:100%;height:50px;background:LightGreen;line-height:50px;color:white;text-align:center"><?php echo $msg;?></div> <?php } ?>

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4 class="mb-sm-0 font-size-18">Admin Account Creation</h4>

                                    <!--<div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Member Account Creation</li>
                                        </ol>
                                    </div>-->

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Member Data</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            

                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-lastname-input" class="form-label">Lastname</label>
                                                        <input type="text" name="lastname" class="form-control" id="formrow-lastname-input" placeholder="Enter your Lastname" required>
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">First name</label>
                                                        <input type="text" name="firstname" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required>
                                                    </div>
                                                </div>
                                                <!--
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                        <input type="text" name="othername" class="form-control" id="formrow-othername-input" placeholder="Enter your Other name" required>
                                                    </div>
                                                </div>-->
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-email-input" class="form-label">Email</label>
                                                        <input type="email" name="email" class="form-control" id="formrow-email-input" placeholder="Enter Email" required>
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-confirm-email-input" class="form-label">Confirm Email</label>
                                                        <input type="email" name="cemail" class="form-control" id="formrow-confirm-email-input" placeholder="Enter Email" required>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-password-input" class="form-label">Password</label>
                                                        <input type="password" name="password" class="form-control" id="formrow-password-input" placeholder="Enter Password" required>
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-confirm-password-input" class="form-label">Confirm Password</label>
                                                        <input type="password" name="cpassword" class="form-control" id="formrow-confirm-password-input" placeholder="Enter Password" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-jurisdiction" class="form-label">Juridiction</label>
                                                        <select name="jurisdiction" id="formrow-jurisdiction" class="form-select">
                                                            <option selected>Choose Jurisdiction</option>
                                                            <option value="Oluwakemi">Olaniyi</option>
                                                            <option value="Ayomide">Ile-Epo</option>
                                                            <option value="Samuel">Abule Egba</option>
                                                        </select>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            <!--
                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input type="text" name="pno" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nin-input" class="form-label">National Identification Number(NIN) optional</label>
                                                        <input type="text" name="nin" class="form-control" id="formrow-nin-input" placeholder="Enter your NIN number">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN)</label>
                                                        <input type="text" name="bvn" class="form-control" id="formrow-bvn-input" placeholder="Enter your BVN number" required maxlength="11">
                                                    </div>
                                                </div>
                                                
                                            </div>-->
                                            <!--
                                            <div class="row">
                                                <div class="col-sm-6">
                                                        
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload picture</label>
                                                        <input class="form-control" name="propic" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Account Officer</label>
                                                        <select name="accoff" id="formrow-inputState" class="form-select">
                                                            <option selected>Choose Account Officer</option>
                                                            <option value="Oluwakemi">Oluwakemi</option>
                                                            <option value="Ayomide">Ayomide</option>
                                                            <option value="Samuel">Samuel</option>
                                                            <option value="Abiodun">Abiodun</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <input type="text" name="resadd" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Residential Address" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-businessaddress-input" class="form-label">Business Address</label>
                                                        <input type="text" name="busadd" class="form-control" id="formrow-businessaddress-input" placeholder="Enter your Business Address" required>
                                                    </div>
                                                </div>
                                            </div>-->
                                            <hr></hr>
                                            <!--Next of Kin Data-->
                                            <!--
                                            <h4 class="card-title mb-4">Next Of Kin Data</h4>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-name-input" class="form-label">Next of Kin Name</label>
                                                        <input type="text" name="nok-name" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-pno-input" class="form-label">Next of Kin Phone Number</label>
                                                        <input type="text" name="nok-pno" class="form-control" id="formrow-nok-pno-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-relationship-input" class="form-label">Relationship</label>
                                                        <input type="text" name="relationship" class="form-control" id="formrow-relationship-input" placeholder="Enter relationship" required>
                                                    </div>
                                                </div>
                                            </div>-->
                                            <!--
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Next of Kin Address</label>
                                                        <input type="text" name="nok-address" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
                                                    </div>
                                                </div>
                                            </div>-->


                                            <!--<div class="mb-3">
                                                
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="gridCheck">
                                                    <label class="form-check-label" for="gridCheck">
                                                      Check me out
                                                    </label>
                                                </div>
                                            </div>-->
                                            <div>
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                            </div>
                                        </form>

                                        <!--<div id="basic-example">
                                            <!-- Seller Details -->
                                           <!-- <h3>Seller Details</h3>
                                            <section>
                                                <form>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-firstname-input">First name</label>
                                                                <input type="text" class="form-control" id="basicpill-firstname-input">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-lastname-input">Last name</label>
                                                                <input type="text" class="form-control" id="basicpill-lastname-input">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-phoneno-input">Phone</label>
                                                                <input type="text" class="form-control" id="basicpill-phoneno-input">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-email-input">Email</label>
                                                                <input type="email" class="form-control" id="basicpill-email-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="mb-3">
                                                                <label for="basicpill-address-input">Address</label>
                                                                <textarea id="basicpill-address-input" class="form-control" rows="2"></textarea>
                                                                <button type="button" class="btn btn-primary waves-effect waves-light">Primary</button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </form>
                                            </section>

                                            <!-- Company Document --
                                            <h3>Company Document</h3>
                                            <section>
                                                <form>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-pancard-input">PAN Card</label>
                                                                <input type="text" class="form-control" id="basicpill-pancard-input">
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-vatno-input">VAT/TIN No.</label>
                                                                <input type="text" class="form-control" id="basicpill-vatno-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-cstno-input">CST No.</label>
                                                                <input type="text" class="form-control" id="basicpill-cstno-input">
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-servicetax-input">Service Tax No.</label>
                                                                <input type="text" class="form-control" id="basicpill-servicetax-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-companyuin-input">Company UIN</label>
                                                                <input type="text" class="form-control" id="basicpill-companyuin-input">
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-declaration-input">Declaration</label>
                                                                <input type="text" class="form-control" id="basicpill-Declaration-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </section>

                                            <!-- Bank Details --
                                            <h3>Bank Details</h3>
                                            <section>
                                                <div>
                                                    <form>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-namecard-input">Name on Card</label>
                                                                    <input type="text" class="form-control" id="basicpill-namecard-input">
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Credit Card Type</label>
                                                                    <select class="form-select">
                                                                          <option selected>Select Card Type</option>
                                                                          <option value="AE">American Express</option>
                                                                          <option value="VI">Visa</option>
                                                                          <option value="MC">MasterCard</option>
                                                                          <option value="DI">Discover</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-cardno-input">Credit Card Number</label>
                                                                    <input type="text" class="form-control" id="basicpill-cardno-input">
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-card-verification-input">Card Verification Number</label>
                                                                    <input type="text" class="form-control" id="basicpill-card-verification-input">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-expiration-input">Expiration Date</label>
                                                                    <input type="text" class="form-control" id="basicpill-expiration-input">
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </form>
                                                  </div>
                                            </section>

                                            <!-- Confirm Details --
                                            <h3>Confirm Detail</h3>
                                            <section>
                                                <div class="row justify-content-center">
                                                    <div class="col-lg-6">
                                                        <div class="text-center">
                                                            <div class="mb-4">
                                                                <i class="mdi mdi-check-circle-outline text-success display-4"></i>
                                                            </div>
                                                            <div>
                                                                <h5>Confirm Detail</h5>
                                                                <p class="text-muted">If several languages coalesce, the grammar of the resulting</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>-->

                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->

                        

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © Thrift Pay.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Jobastech Global
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div data-simplebar class="h-100">
                <div class="rightbar-title d-flex align-items-center px-3 py-4">
            
                    <h5 class="m-0 me-2">Settings</h5>

                    <a href="javascript:void(0);" class="right-bar-toggle ms-auto">
                        <i class="mdi mdi-close noti-icon"></i>
                    </a>
                </div>

                <!-- Settings -->
                <hr class="mt-0" />
                <h6 class="text-center mb-0">Choose Layouts</h6>

                <div class="p-4">
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-1.jpg" class="img-fluid img-thumbnail" alt="">
                    </div>

                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input theme-choice" type="checkbox" id="light-mode-switch" checked>
                        <label class="form-check-label" for="light-mode-switch">Light Mode</label>
                    </div>
    
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-2.jpg" class="img-fluid img-thumbnail" alt="">
                    </div>
                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input theme-choice" type="checkbox" id="dark-mode-switch" data-bsStyle="assets/css/bootstrap-dark.min.css" data-appStyle="assets/css/app-dark.min.css">
                        <label class="form-check-label" for="dark-mode-switch">Dark Mode</label>
                    </div>
    
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-3.jpg" class="img-fluid img-thumbnail" alt="">
                    </div>
                    <div class="form-check form-switch mb-5">
                        <input class="form-check-input theme-choice" type="checkbox" id="rtl-mode-switch" data-appStyle="assets/css/app-rtl.min.css">
                        <label class="form-check-label" for="rtl-mode-switch">RTL Mode</label>
                    </div>

            
                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- JAVASCRIPT -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>

        <!-- jquery step -->
        <script src="assets/libs/jquery-steps/build/jquery.steps.min.js"></script>

        <!-- form wizard init -->
        <script src="assets/js/pages/form-wizard.init.js"></script>

        <script src="assets/js/app.js"></script>

    </body>

<!-- Mirrored from themesbrand.com/skote/layouts/form-wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Mar 2021 14:29:43 GMT -->
</html>
