<?php
include "../db.php";
include "../auth.php";


if(isset($_GET['cid'])){
    $cid = $_GET['cid']; 
}
//Query to select member data
$memberdata  = mysqli_query($conn, "SELECT * FROM dailysaving WHERE cust_id='".$cid."'") or die(mysqli_error($conn));
$rows  = mysqli_fetch_assoc($memberdata);
$dbcustid = $rows['cust_id'];
$dbcustno = $rows['cust_acc'];
$dbsurname = $rows['surname'];
$dbfirstname = $rows['firstname'];
$dbothername = $rows['othername'];
$dbphone = $rows['phonenumber'];
$dbaccoff = $rows['account_officer'];
$dbgender = $rows['gender'];
$dbregdate = $rows['reg_date'];

?>

<!doctype html>
<html lang="en">



<head>

    <meta charset="utf-8" />
    <title>Bigfund | Customer Detail </title>
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
    <style type="text/css">
        label{
            font-weight: bold;

        }
    </style>

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


                    <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                        <i class="mdi mdi-<?php echo $icon;?> me-2"></i><?php echo $msg;?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div><?php } ?>

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4><a href="ds-members.php">Daily Savings Customers</a>/Customer Details</h4>

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
                                        <p style="text-decoration: underline;font-weight: bold;">CUSTOMER DETAILS</p>

                                        <!--Member Details-->
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <p>Account Number: <label><?php echo $dbcustno;?></label></p>
                                                <p>Surname: <label><?php echo $dbsurname;?></label></p>
                                                <p>Firstname: <label><?php echo $dbfirstname;?></label></p>
                                                <p>Othername: <label><?php echo $dbothername;?></label></p>
                                                <p>Phone Number:  <label><?php echo $dbphone;?></label></p>
                                                <p>Gender: <label><?php echo $dbgender;?></label> </p>
                                                <p>Account Officer: <label><?php echo $dbaccoff;?></label> 
                                                    <p>Reg. Date: <label><?php echo $dbregdate;?></label> 
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end card body -->
                                    </div>
                                    <!-- end card -->
                                </div>
                                <!-- end col -->
                            </div>
                            <!-- end row -->

                            <?php mysqli_close($conn);?>

                        </div> <!-- container-fluid -->
                    </div>
                    <!-- End Page-content -->


                    <?php include "footer.php";?>
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
