<?php
    
include "../db.php";
include "../auth2.php";
include "../function.php";


$amount = "";

if($_SERVER['REQUEST_METHOD']=="POST"){
    if(isset($_POST['send'])){
        $wid = "TPW".rand(0,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');
        $expecteddeposit = $contribution * 45;

        $sql = "SELECT SUM(total) as totaldeposit FROM passbook_deposit WHERE passbook_id='".$passbookid."'";
        $result = mysqli_query($conn,$sql) or die($sql);

        $rows = mysqli_fetch_assoc($result);
            $totaldeposit = $rows['totaldeposit'];
            $totalwithdrawable = $totaldeposit + ($contribution*3);
        

        if($totaldeposit < $expecteddeposit){
                $errors = "You have not completed your Contribution!";
        }elseif($totalnod!=0){
            $errors = "You still have some days left!";
        }

        if(empty($_POST['amount'])){
            $errors = "Amount cannot be empty";
        }else{

            $amount = test_input($_POST['amount']);
           
        }

        if($amount > $totalwithdrawable){
            $errors = "You cannot withdrawal more than the total amount receivable! Please Check your dashboard";
        }

        if(isset($errors)){
            $alerttype = "warning";
            $msg = $errors;
        }else{

            $date = date('Y-m-d');
            date_default_timezone_set('Africa/Lagos');
            $dt = date('Y-m-d h:i:sa');

            $sql = "INSERT INTO withdraw(id,w_id,member_id,passbook_id,withdraw_amt,trans_date,date_time,withdraw_by,status,status2,confirm_by)VALUES(NULL,'$wid','$memberid','$passbookid','$amount','$date','$dt','$membername','processing',NULL,NULL)";

            $query= mysqli_query($conn,$sql) or die($sql);
            if($query){
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

                $message .='<p>Your Member ID is '.$mid.',</p>'; 
                $message .='<p>Your Password is '.$_POST[password].',</p>'; 

                $message .='<p>Please do not share your login details with anyone.</p>';

                $message .='<p>Kind regards,</p>';
                $message .= '</div></div> ';
                $message .= '</body></html>';
                 
                // Sending email
                mail($_POST[email], $subject, $message, $headers);*/
                $alerttype = "success";
                $msg = "Your request has been received.";
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
        <title>Passbook Withdraw | ThriftPay</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="ThriftPay" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- select2 css -->
        <link href="assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

        <!-- dropzone css -->
        <link href="assets/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <?php include "navigation.php"; ?>

            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">PASSBOOK WITHDRAW</h4>
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Ecommerce</a></li>
                                            <li class="breadcrumb-item active">Add Product</li>
                                        </ol>
                                    </div>
                                    -->
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <?php if(isset($msg)){?><div style="width: 35%;" class="alert alert-<?php echo $alerttype;?>" role="alert">
                                                <?php echo $msg;?>
                                                </div>
                                                <?php
                                                 }?>
        
                                        <h4 class="card-title">Passbook Withdrawal</h4>
                                        <p class="card-title-desc">Enter the amount to withdraw. Please Note that you can only withdrawal after 30days and you must not miss three(3) consecutives days. Thanks!</p>
        
                                        <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="mb-3">
                                                        <label for="amount">Amount</label>
                                                        <input id="amount" name="amount" type="number" class="form-control">
                                                    </div>
                                                    <!--
                                                    <div class="mb-3">
                                                        <label for="manufacturername">Manufacturer Name</label>
                                                        <input id="manufacturername" name="manufacturername" type="text" class="form-control">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="manufacturerbrand">Manufacturer Brand</label>
                                                        <input id="manufacturerbrand" name="manufacturerbrand" type="text" class="form-control">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="price">Price</label>
                                                        <input id="price" name="price" type="text" class="form-control">
                                                    </div>-->
                                                </div>
                                                <!--
                                                <div class="col-sm-6">
                                                    <div class="mb-3">
                                                        <label class="control-label">Category</label>
                                                        <select class="form-control select2">
                                                            <option>Select</option>
                                                            <option value="FA">Fashion</option>
                                                            <option value="EL">Electronic</option>
                                                        </select>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="control-label">Features</label>
        
                                                        <select class="select2 form-control select2-multiple" multiple="multiple" data-placeholder="Choose ...">
                                                            <option value="WI">Wireless</option>
                                                            <option value="BE">Battery life</option>
                                                            <option value="BA">Bass</option>
                                                        </select>
        
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="productdesc">Product Description</label>
                                                        <textarea class="form-control" id="productdesc" rows="5"></textarea>
                                                    </div>
                                                    
                                                </div>-->
                                            </div>
        
                                            <div class="d-flex flex-wrap gap-2">
                                                <button type="submit" name="send" class="btn btn-primary waves-effect waves-light">Withdraw</button>
                                                
                                            </div>
                                        </form>
        
                                    </div>
                                </div>

                                
                            </div>
                        </div>
                        <!-- end row -->

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © Skote.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Themesbrand
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

        <!-- select 2 plugin -->
        <script src="assets/libs/select2/js/select2.min.js"></script>

        <!-- dropzone plugin -->
        <script src="assets/libs/dropzone/min/dropzone.min.js"></script>

        <!-- init js -->
        <script src="assets/js/pages/ecommerce-select2.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>

        <script>
            $("#reset").click(function(){
            $("#amount").val('');
                });
        </script>
    </body>

</html>
