<?php
include "../db.php";
include "../auth.php";

$lid="";
if(isset($_GET['lid'])){
    $lid = $_GET['lid'];
}
if(isset($_GET['mid'])){
    $mid = $_GET['mid'];
}


// //Query to select member data
// $memberdata  = mysqli_query($conn, "SELECT * FROM member WHERE member_id='".$mid."'") or die(mysqli_error($conn));
// $memresult  = mysqli_fetch_assoc($memberdata);
// $regfee = $memresult['reg_fee'];

//Query to get loan details and customer details
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
$regfee2 = $rows['reg_fee'];
$appliedamount = $rows['applied_amount'];
// $compulsorysav = $rows['compulsory_sav'];
// $totalpayable = $rows['total_payable'];
$appdate = $rows['app_date'];
// $expirydate = $rows['expiry_date'];
$createdby = $rows['created_by'];
$creationdate = $rows['creation_date'];
$tenor = $rows['tenor'];
$tenor2 = $rows['tenor2'];
?>

<!doctype html>
<html lang="en">

<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Loan Approval </title>
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
            ul.breadcrumb{
                list-style: none;
                padding: 10px 15px;
            }
            ul.breadcrumb li{
                display: inline;
                font-size: 16px;

            }
            ul.breadcrumb li+li:before{
                padding: 5px;
                color:black;
                content: "/\00a0";
            }
        </style>
    </head>

    <body data-sidebar="dark">
        <div id="preloader">
            <div id="status">
                <div class="spinner-chase">
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                </div>
            </div>
        </div>

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <?php include "navigation.php";?>
            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        
                        
                        <!-- <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                        <i class="mdi mdi-<?php echo $icon;?> me-2"></i><?php //echo $msg;?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div><?php } ?> -->

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <ul class="breadcrumb">
                                        <li><a href="pendingloan-request.php">Pending Loan Request</a></li>
                                        <li>Approve Loan</li>
                                    </ul>


                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">APPROVE LOAN</h4>
                                        <form method="post" action="confirmloanrequest.php?confirmloanrequest=<?php echo $loanid;?>" enctype="multipart/form-data" onsubmit="">
                                        <!-- <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data"> -->
                                            <div class="row">
                                                <label for="formrow-group-input" class="form-label"><strong>Customer Name:</strong> <?php echo $membername;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Customer Group:</strong> <?php echo $groupname;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Member Account Number:</strong> <?php echo $memberid;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Loan Code:</strong> <?php echo $loancode;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Registration Fee:</strong> &#8358;<?php echo number_format($regfee2);?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Applied Amount:</strong> &#8358;<?php echo number_format($appliedamount);?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Loan Type:</strong> <?php echo $tenor ;?> </label><br/>
                                            </div><hr>
                                            <!--Group Creation Form-->
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-appamount-input" class="form-label">Approved Amount</label>
                                                        <input type="text" name="amt" value="" class="form-control" id="input" required>
                                                        <input hidden type="text" name="savtype" value="<?php echo $tenor;?>" class="form-control">
                                                        <input hidden type="text" name="tenor2" value="<?php echo $tenor2;?>" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-comment-input" class="form-label">Comment</label>
                                                        <textarea type="text" name="comments" class="form-control" id="formrow-comment-input" placeholder="New Loan" required>New Loan
                                                        </textarea> 
                                                    </div>
                                                </div>
                                                <!-- <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-pno-input" class="form-label">Approve Date</label>
                                                        <input type="date" name="approveddate" class="form-control" id="formrow-approvedate-input" required>
                                                    </div>
                                                </div> -->
                                                <!-- <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-pno-input" class="form-label">Maturity Date</label>
                                                        <input type="date" name="maturitydate" class="form-control" id="formrow-maturitydate-input" required>
                                                    </div>
                                                </div> -->
                                                <button onsubmit="confirmloanrequest(<?php echo $loanid; ?>)" class="btn btn-primary btn-md" style="width:100px;">Approve</button>
                                                    <!-- <a href="javascript:confirmloanrequest(<?php echo $loanid; ?>)"><button class="btn btn-primary btn-md">Approve</button></a> -->
                                                    <!-- <button type="submit" name="disburse" class="btn btn-primary waves-effect waves-light">Disburse</button> -->  
                                                </div>
                                                
                                            </div>
                                           
                                            
                                            </div>
                             
                                            
                                        </form>

                                        <!-- a href="javascript:confirmloanrequest(<?php echo $loanid;?>)"><button class="btn btn-primary btn-md" style="width:80px">Approve</button></a> -->
                                                <div>

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
        <script src="assets/js/pages/addcomma.js"></script>

    </body>


</html>
