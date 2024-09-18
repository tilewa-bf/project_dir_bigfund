<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$membername=$passbookname=$memberid=$fullname=$surname=$firstname=$othername=$passbookid=$conamt=$totalsaved="";

//Code to view member based on their ID number
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['vp'])){

$passbookid = test_input($_POST['passbookid']);
$sql = "SELECT member_name,passbook_name FROM passbook WHERE passbook_id='".$passbookid."'";

//$memberid = test_input($_POST['memberid']);
//$sql = "SELECT surname,firstname,othername,contribution,passbook_id,no_of_days FROM member INNER JOIN passbook ON member.member_id ='".$memberid."' AND passbook.member_id='".$memberid."'";


$query = mysqli_query($conn,$sql) or die($sql);
$row = mysqli_fetch_assoc($query);
$membername = $row['member_name'];
$passbookname = $row['passbook_name'];

//Query to get total amount in a passbook savings  for withdrawing.
$sql2 = "SELECT SUM(total) as totalsaved FROM passbook_deposit WHERE passbook_id='".$passbookid."'";
$query2 = mysqli_query($conn,$sql2) or die($sql2);
$row = mysqli_fetch_assoc($query2);
$totalsaved = $row['totalsaved'];
//////////////////////////////////////////////////////////////////


}
}
?>


<!--Insert into deposit account-->
<?php

include "../db.php";

function sanitize($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}



if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){

        $amount ="";

        $passbookid = test_input($_POST['passbookid']);

        //Query to get the member details like fullnsme, passbook id.
        $sql = "SELECT * FROM passbook WHERE passbook_id='".$passbookid."'";
        $query = mysqli_query($conn,$sql) or die($sql);
        $row = mysqli_fetch_assoc($query);
        $membername = $row['member_name'];
        $passbookname = $row['passbook_name'];
        $passbookid = $row['passbook_id'];
        $conamt = $row['contribution'];
        $totalnod = $row['no_of_days'];
        //////////////////////////////////////////////////////////////////

        

        //Query to select the remaining the member can withdrawal.
        $sql = "SELECT SUM(withdraw_amt) AS totalwithdrawal FROM withdraw where passbook_id='".$passbookid."'";
        $result = mysqli_query($conn,$sql) or die($sql);
        $rows = mysqli_fetch_assoc($result);
        $totalwithdrawal = $rows['totalwithdrawal'];



    $wid = "TPW".rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');
        $expecteddeposit = $conamt * 30;

        $sql = "SELECT SUM(total) as totaldeposit FROM passbook_deposit WHERE passbook_id='".$passbookid."'";
        $result = mysqli_query($conn,$sql) or die($sql);

        $rows = mysqli_fetch_assoc($result);
            $totaldeposit = $rows['totaldeposit'];
            $totalwithdrawable = $totaldeposit + ($conamt*3);
        
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

        $balance = $totalwithdrawable - $totalwithdrawal;

        if($amount>$balance){
            $errors = "Insufficient Balance!";
        }

        if(isset($errors)){
            $alerttype = "warning";
            $msg = $errors;
        }else{

            $date = date('Y-m-d');
            date_default_timezone_set('Africa/Lagos');
            $dt = date('Y-m-d h:i:sa');

            $sql = "INSERT INTO withdraw(id,w_id,passbook_id,withdraw_amt,trans_date,date_time,withdraw_by,status,status2,confirm_by)VALUES(NULL,'$wid','$passbookid','$amount','$date','$dt','$fullname','processing',NULL,NULL)";

            $query= mysqli_query($conn,$sql) or die($sql);
            if($query){
            
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
        <title>Bigfund | Member Account Creation </title>
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <!--
        <script type="text/javascript">
            $(window).load(function() {
                $(".loader").fadeOut("slow");
            });
        </script>-->

        <!--Get Transaction Data from database-->
        <!--
            <script>
            function loadTrans() {
              var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if(this.readyState == 4 && this.status==200){
                  document.getElementById("trans").innerHTML =
                  this.responseText;
                }
              };
              xhttp.open("GET","getdeposit.php", true);
              xhttp.send();
            }
            </script>-->
            <!--
        <style type="text/css">
            .loader {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: url('images/roundloader.gif') 50% 50% no-repeat rgb(249,249,249);
            opacity: .8;
            }
        </style>-->

    </head>

    <body data-sidebar="dark">
        <!--<div class="loader"></div>-->
    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <?php include "navigation.php";?>
            


            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        
                        <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?>" role="alert">
                                                <?php echo $msg;?>
                                                </div>
                                                <?php

                                                }?>

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4 class="mb-sm-0 font-size-18">Passbook Withdrawal</h4>

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
                                        <h4 class="card-title mb-4"> Passbook Withdrawal - Single Entry</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            

                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <!--<label for="formrow-memberid-input" class="form-label">MEMBER ID</label>-->
                                                        <input type="text" name="passbookid" value="<?php echo $passbookid;?>" class="form-control" id="formrow-memberid-input" placeholder="Enter your Passbook ID" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <!--<label for="formrow-memberid-input" class="form-label">Click button below to view member</label>-->
                                                        <button type="submit" name="vp" class="btn btn-primary waves-effect waves-light">View Passbook</button>
                                                    </div>
                                                </div>
                                            </div>
                                    
                                            <div class="row">
                                                 <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-name-input" class="form-label">Name</label>
                                                        <input type="text" required="" name="member_name" value="<?php echo $membername;?>" class="form-control" id="formrow-membername-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-passbookname-input" class="form-label">Passbook Name</label>
                                                        <input type="text" required="" name="passbookname" value="<?php echo $passbookname;?>" class="form-control" id="formrow-passbookname-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-amount-input" class="form-label">Amount</label>
                                                        <input type="text" value="<?php echo $totalsaved;?>" name="amount" value="" class="form-control" id="formrow-contributionamount-input" readonly>
                                                    </div>
                                                </div>
                                                <!--
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-noofdays-input" class="form-label">No. of Days</label>
                                                        <select name="nod" id="formrow-noofdays" class="form-select" required="">
                                                            
                                                            <?php
                                                                for($i=1; $i<=45 ; $i++){?>
                                                                <option value="<?php echo $i;?>"><?php echo $i;?></option>
                                                               <?php
                                                                }?>    
                                                        </select>
                                                    </div>
                                                </div>
                                                -->
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Post Withdrawal</button>
                                                    </div>
                                                </div>
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

       
        <!--
        <script>
            function getmemberID(str) {
              var xhttp;
              if (str == "") {
                document.getElementById("trans").innerHTML = "";
                return;
              }
              xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                }
              };
              xhttp.open("GET", "getdeposit.php?q="+str, true);
              xhttp.send();
            }
        </script>-->


    </body>


</html>
