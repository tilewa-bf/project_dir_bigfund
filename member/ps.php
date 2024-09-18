<?php

session_start();

include "../db.php";

include '../function.php';

if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){
        $vc = rand(0,9).rand(0,9).rand(0,9).rand(0,9);

            $email = test_input($_POST['email']);
            $status = 'active';

            date_default_timezone_set('Africa/Lagos');
            $dt = date('Y-m-d h:i:sa');
            

            $sql = "SELECT * FROM member WHERE email='".$email."' AND password IS NULL";
            $result = mysqli_query($conn,$sql) or die($sql);
            $numrows = mysqli_num_rows($result);

            if($numrows > 0){

                $veremail = $_POST['email'];
                $_SESSION['veremail'] = $veremail;

                $sql2 = "INSERT INTO verify(id,email,vcode,status,date_time)VALUES(null,'$veremail','$vc','$status','$dt')";
                $result =mysqli_query($conn,$sql2);

                if($result){

                /*
                $subject = 'PASSWORD VERIFICATION CODE';
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
                    
                $message .='<p>Welcome to Thrift Pay</p>';

                $message .='<p>Your Email is: '.$_POST[email].',</p>'; 
                $message .='<p>Your Verification Code is '.$vc.',</p>'; 

                $message .='<p>Please do not share the code with anyone.</p>';

                $message .= '</div></div> ';
                $message .= '</body></html>';
                 
                // Sending email
                mail($_POST[email], $subject, $message, $headers);
                */
                header("Location:vercode.php");
                }

            }else{
                $msg = "Ooops! You are not a register member or Password Set up already";
            }

    }
}







?>


<!doctype html>
<html lang="en">

    

<head>
        
        <meta charset="utf-8" />
        <title>Password Setup | Thrift Pay</title>
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
                                            <h5 class="text-primary"> Password Setup</h5>
                                            <p>Password Setup Thriftpay.</p>
                                        </div>
                                    </div>
                                    <div class="col-5 align-self-end">
                                        <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body pt-0"> 
                                <div>
                                    <a href="index.php">
                                        <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="assets/images/logo.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                                
                                <div class="p-2">
                                    <div class="alert alert-success text-center mb-4" role="alert">
                                        Enter your Email and a code will be sent to you!
                                        <?php 

                                        if(isset($msg)) echo $msg;

                                        ?>
                                    </div>
                                    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            
                                        <div class="mb-3">
                                            <label for="memberemail" class="form-label">Email</label>
                                            <input type="email" name="email" class="form-control" id="memberemail" placeholder="Enter email" required="">
                                        </div>
                    
                                        <div class="text-end">
                                            <button type="submit" name="submit" class="btn btn-primary w-md waves-effect waves-light">Submit</button>
                                        </div>
    
                                    </form>
                                </div>
            
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            <p>Remember It ? <a href="index.php" class="fw-medium text-primary"> Sign In here</a> </p>
                            <p>© <script>document.write(new Date().getFullYear())</script> Thriftpay. Crafted with <i class="mdi mdi-heart text-danger"></i> by Jobastech</p>
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
        
        <!-- App js -->
        <script src="assets/js/app.js"></script>
    </body>


</html>
