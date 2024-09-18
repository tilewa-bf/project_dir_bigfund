<?php

include "../db.php";
include "../auth2.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){




//$memberid = test_input($_POST['memberid']);

$pid = "TP". rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);

if($_POST['conamt'] < 100){
    $errors = "Please Enter the correct amount";
}elseif ($_POST['conamt'] > 10000) {
    $errors = "Please Enter the correct amount";
}
else{
    $contribution = $_POST['conamt'];
}
$nod = $_POST['nod'];
$prdtype = test_input($_POST['prdtype']);

//creation date of passbook
$creation_date = date_create(null,timezone_open('Africa/Lagos'));
$creation_date = date_format($creation_date,'Y-m-d'); 

//stop date, the date the passbook will expired or the member can start withdrawing
$date=date_create(null,timezone_open('Africa/Lagos'));
$stop_date = date_add($date,date_interval_create_from_date_string("30 days"));
$stop_date= date_format($date,"Y-m-d");

//Querying the database to check if there is an active passbook.

/*$activesql = "SELECT * FROM passbook where member_id='".$memberid."' AND no_of_days > 0";
$activequery = mysqli_query($conn,$activesql) or die($activesql);
$numrows = mysqli_num_rows($activequery);
if($numrows > 0){
    $errors = "Sorry!, You still have an active passbook";
}*/
if(isset($errors)){
    $msg = $errors;
}else{

$sql = "INSERT INTO passbook(id,member_id,passbook_id,contribution,no_of_days,product_type,creation_date,stop_date,status)VALUES(null,'$memberid','$pid','$contribution','$nod','$prdtype','$creation_date','$stop_date','active')";

$query = mysqli_query($conn,$sql) or die($sql);
if($query){
    $msg = "Passbook Created Successfully. Your Passbook ID is:". " ". $pid;
}else{
    $msg = mysqli_error($conn);
}
mysqli_close($conn);

}

}
}

?>

<!doctype html>
<html lang="en">


    
<head>
        
        <meta charset="utf-8" />
        <title>Passbook Creation | ThriftPay</title>
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
                        
                        <?php if(isset($msg)){?> <div style="width:100%;height:50px;background:LightGreen;line-height:50px;color:white;text-align:center"><?php echo $msg; ?></div> <?php } ?>

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4 class="mb-sm-0 font-size-18">Passbook Creation</h4>

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
                                        <h4 class="card-title mb-4">Create Savings Passbook</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            
                                            <!--
                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-memberid-input" class="form-label">MEMBER ID</label>
                                                        <input type="text" name="memberid" class="form-control" id="formrow-memberid-input" placeholder="Enter Member ID" required>
                                                    </div>
                                                    
                                                </div>
                                            </div>-->
    
                                            

                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Contribution Amt.(Min.&#8358;100-Max.&#8358;10,000)</label>
                                                        <input type="number" name="conamt" class="form-control" id="formrow-contributionamount-input" placeholder="Please Member your daily contribution" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-noofdays-input" class="form-label">No. of Days</label>
                                                        <input type="text" name="nod" value="30" class="form-control" id="formrow-noofdays-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-producttype" class="form-label">Product Type</label>
                                                        <select name="prdtype" id="formrow-producttype" class="form-select">
                                                            <option>Choose Product Type</option>
                                                            <option selected value="Thrift Pay">Thrift Pay</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div>
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Create Passbook</button>
                                            </div>
                                        </form>

                                        
                                            
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


</html>
