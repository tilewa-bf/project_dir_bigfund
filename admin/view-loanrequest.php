<?php
include "../db.php";
include "../auth.php";


if(isset($_GET['lid'])){
    $lid = $_GET['lid']; 
}
if(isset($_GET['mid'])){
    $mid = $_GET['mid']; 
}
//Query to select member data
$memberdata  = mysqli_query($conn, "SELECT * FROM member WHERE member_id='".$mid."'") or die(mysqli_error($conn));
$memresult  = mysqli_fetch_assoc($memberdata);
$picture = $memresult['picture'];

//Query to select member loan data
$memberloandata  = mysqli_query($conn, "SELECT * FROM loan_request WHERE loan_id='".$lid."'") or die(mysqli_error($conn));
$rows  = mysqli_fetch_assoc($memberloandata);
$loanid = $rows['loan_id'];
$loancode = $rows['loan_code'];
$memberid = $rows['member_id'];
$membername = $rows['member_name'];
$groupname = $rows['group_name'];
$accountofficer = $rows['account_officer'];
$guarantorname = $rows['guarantor_name'];
$guarantorpno = $rows['guarantor_pno'];
$guarantorpassport = $rows['guarantor_passport'];
$utilitybill = $rows['utility_bill'];
$relationship = $rows['relationship'];
$guarantoraddress = $rows['guarantor_address'];
$occupation = $rows['occupation'];
$mid = $rows['mid'];
$midno = $rows['midno'];
$loanpurpose = $rows['loan_purpose'];
$income = $rows['income'];
$appliedamount = $rows['applied_amount'];
$regfee = $rows['reg_fee'];
// $compulsorysav = $rows['compulsory_sav'];
// $totalpayable = $rows['total_payable'];
$appdate = $rows['app_date'];
// $expirydate = $rows['expiry_date'];
$createdby = $rows['created_by'];
$creationdate = $rows['creation_date'];



?>

<!doctype html>
<html lang="en">



<head>
        
        <meta charset="utf-8" />
        <titl>Bigfund | Loan Request Details </title>
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
            #bold{
                font-weight: bold;
                font-size: 15px;
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
                                <h4 class="mb-sm-0 font-size-18"><a href="pendingloan-request.php">Pending Loan Request</a>/Loan details</h4>
                                    <div class="col-lg-3">
                                        <!-- <a href="pendingloan-request.php" style="color: #000;font-size: 13px;">Pending Loan Application</a>/Loan Details-->
                                    </div>
                                    
                                    <h4 class="mb-sm-0 font-size-18">Loan Details</h4>

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
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div>
                                                <img src="../admin/pictures/<?php echo $picture;?>" alt="mp" class="rounded-circle avatar-lg">
                                                <p class="mt-2 mb-lg-0"><code></code></p>
                                            </div>
                                        </div><br/><br/>
                                        <p style="text-decoration: underline;font-weight: bold;">BORROWER'S DETAILS</p>

                                        <!--Member Details-->
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <p id="bold">Registration Fee: <label id="bold"><?php echo number_format($regfee,2);?></label></p>
                                                <p>Loan Number: <label><?php echo $loancode;?></label></p>
                                                <p>Member Number: <label><?php echo $memberid;?></label></p>
                                                <p>Member Name: <label><?php echo $membername;?></label></p>
                                                <p>Group: <label><?php echo $groupname;?></label> </p>
                                                <p>Account Officer: <label><?php echo $accountofficer;?></label> </p>
                                                
                                                

                                                <!--Loan Details-->
                                                <p style="text-decoration: underline; font-weight: bold;">LOAN  INFORMATION</p>
                                                <p>Loan Purpose: <label><?php echo $loanpurpose;?></label> </p>
                                                <p>Monthly Salary/Income: <label>&#8358;<?php echo number_format($income,2);?></label> </p>
                                                <p>Applied Amount: <label>&#8358;<?php echo number_format($appliedamount,2);?></label></p>
                                                <p>Approved Amount.: <label>&#8358;<?php 
                                                if(isset($compulsorysav)){
                                                    echo number_format($compulsorysav,2);
                                                }else{
                                                    echo '0';
                                                } ?>
                                                </label></p>
                                                <p>Total Payable: <label>&#8358;<?php 
                                                if(isset($totalpayable)){
                                                    echo number_format($totalpayable,2);
                                                }else{
                                                    echo '0';
                                                } ?>
                                                </label> </p>
                                                <p>Application Date: <label><?php echo $appdate;?></label> </p>
                                                <p>Date Granted: <?php 
                                                if(isset($dategranted)){
                                                    echo $dategranted;
                                                } ?>
                                                </label> </p>
                                                <!-- <p>Expiry Date: <label><?php echo $expirydate;?></label> </p> -->
                                                <p>Created By: <label><?php echo $createdby;?></label> </p>
                                                <p>Creation Date: <label><?php echo $creationdate;?></label> </p>
                                            </div>
                                            <div class="col-lg-6">
                                                
                                                        <img style="margin-left: 160px;" src="../admin/gpassport/<?php echo $guarantorpassport;?>" alt="mp" class="rounded-circle avatar-lg">
                                                        <p class="mt-2 mb-lg-0"><code></code></p>
                                                
                                                <div style="margin-left: 40%;" class="col-lg-4">
                                                    <p style="text-decoration: underline; font-weight: bold;">GUARANTOR'S DETAILS</p>
                                                    <p>Guarantor Name: <label><?php echo $guarantorname;?></label> </p>
                                                    <p>Relationship: <label><?php echo $relationship;?></label> </p>
                                                    <p>Guarantor Phone: <label><?php echo $guarantorpno;?></label></p>
                                                    <p>Guarantor Address: <label><?php echo $guarantoraddress;?></label> </p>
                                                    <p>Occupation: <label><?php echo $occupation;?></label> </p>
                                                    <p>Means of ID: <label><?php echo $mid;?></label> </p>
                                                    <p>Means of ID Number: <label><?php echo $midno;?></label> </p>
                                                    <p>Utility Bill: <label><?php echo $utilitybill;?></label> </p>
                                                    
                                                </div>
                                            </div>
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
