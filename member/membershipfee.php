<?php

include "../db.php";
include "../auth2.php";
include "../function.php";

function sanitize($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$sql = "SELECT surname,firstname,othername,contribution,passbook_id FROM member INNER JOIN passbook ON member.member_id ='".$memberid."' AND passbook.member_id='".$memberid."'";


$query = mysqli_query($conn,$sql) or die($sql);
$row = mysqli_fetch_assoc($query);
$surname = $row['surname'];
$firstname = $row['firstname'];
$othername = $row['othername'];
$fullname = $surname. " ". $firstname. " ". $othername;
$passbookid = $row['passbook_id'];
$conamt = $row['contribution'];





 mysqli_close($conn);
?>
<!doctype html>
<html lang="en">

    

<head>
        
        <meta charset="utf-8" />
        <title>Passbook Deposit | ThriftPay</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="ThriftPay" name="author" />
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
                                    <h4 class="mb-sm-0 font-size-18">Membership Fee</h4>
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                                            <li class="breadcrumb-item active">Payment Page</li>
                                        </ol>
                                    </div>-->
                                    
                                </div>

                            </div>
                            <form id="paymentForm">

                            <div class="row">

                                <div class="col-md-3">
                                    <div class="mb-3">
                                      <div class="form-group">
                                        <label for="amount">Amount</label>
                                        <input class="form-control" type="tel" name="amount" value="1500" id="amount" readonly>
                                      </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-3">
                                    <div class="mb-3">
                                      <div class="form-group">
                                        <label for="email"></label>
                                        <input class="form-control" type="hidden" value="<?php echo $email;?>" id="email-address" readonly required />
                                      </div>
                                    </div>
                                </div>
                                <!--
                                <div class="col-md-3">
                                    <div class="mb-3">
                                      <div class="form-group">
                                        <label for="passbook">Passbook ID</label>
                                        <input class="form-control" type="text" name="passbookid" value="<?php echo $passbookid;?>" readonly id="passbookid" />
                                      </div>
                                    </div>
                                </div>-->
                                
                                
                                
                                
                                  <div class="form-submit">
                                    <button type="submit" onclick="payWithPaystack()" class="btn btn-primary waves-effect waves-light"> Make Payment </button>
                                  </div>
                            </div>
                            </form>
                            <script src="https://js.paystack.co/v1/inline.js"></script> 
                        </div>
                        <!-- end page title -->
                        
                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © ThriftPay.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Jobastech
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

        <script src="assets/js/app.js"></script>
        <script>
        const paymentForm = document.getElementById('paymentForm');
paymentForm.addEventListener("submit", payWithPaystack, false);
function payWithPaystack(e) {
  e.preventDefault();
  let handler = PaystackPop.setup({
    key: 'pk_live_0029967a5928d907e91144d7ba08290b1e5fc3f8', // Replace with your public key
    email: document.getElementById("email-address").value,
    amount: document.getElementById("amount").value * 100,
    ref: 'TP'+Math.floor((Math.random() * 1000000000) + 1), // generates a pseudo-unique reference. Please replace with a reference you generated. Or remove the line entirely so our API will generate one for you
    // label: "Optional string that replaces customer email"

    onClose: function(){
        window.location = "http://localhost/thriftpay/member/membershipfee.php?payment=cancel";
      alert('Payment Closed.');
    },
    callback: function(response){
      let message = 'Payment complete! Reference: ' + response.reference;
      alert(message);
      window.location = "http://localhost/thriftpay/member/memfee-verify.php?reference=" + response.reference;
    }
  });
  handler.openIframe();
}
</script>

<script>
     function showtotal(){

    var x = document.getElementById('amount').value;
    var y = document.getElementById('nod').value;
    var z = x * y;
    document.getElementById('total').value= z;
    }
</script>
 </body>


</html>
