<?php

include "../db.php";

include "../auth.php";

//Query to get the total registered member
if($usertype=='Admin'){
    $sql = "SELECT count(*) AS trm FROM member WHERE status!='deleted' AND status2!='Inactive'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $trm = $rows['trm'];
}else{
    $sql = "SELECT count(*) AS trm FROM member WHERE account_officer='$dbname' AND status!='deleted' AND status2!='Inactive'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $trm = $rows['trm'];
}

//Query to get the total inactive member through loan request
if($usertype=='Admin'){
    $sql = "SELECT COUNT(DISTINCT member_id) AS tim FROM loan_request where status='Confirmed'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $tim = $rows['tim'];
}else{
    $sql = "SELECT COUNT(DISTINCT member_id) AS tim FROM loan_request where status='Confirmed' AND account_officer='$dbname'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $tim = $rows['tim'];
}

//Total Inactive member
$tiam = $trm - $tim;
//Query to get the total registered ds number
if($usertype=='Admin'){
	$sql = "SELECT count(*) AS trds FROM dailysaving";
	$result = mysqli_query($conn,$sql);
	$rows = mysqli_fetch_assoc($result);
	$trds = $rows['trds'];
}else{
	$sql = "SELECT count(*) AS trds FROM dailysaving WHERE account_officer='$dbname'";
	$result = mysqli_query($conn,$sql);
	$rows = mysqli_fetch_assoc($result);
	$trds = $rows['trds'];
}


//Query to get the total loan request
if($usertype=='Admin'){
$sql = "SELECT count(*) AS totalloanrequest FROM loan_request";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_assoc($result);
$totalloanrequest = $rows['totalloanrequest']; 
}
$sql = "SELECT count(*) AS totalloanrequest FROM loan_request WHERE status='confirmed' AND account_officer='$dbname'";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_assoc($result);
$totalloanrequest = $rows['totalloanrequest'];

// //Query to get the total active Group
if($usertype=='Admin'){
$sql = "SELECT count(*) AS totalgroup FROM group_tbl WHERE status='Active'";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_assoc($result);
$totalgroup = $rows['totalgroup'];
}else{
$sql = "SELECT count(*) AS totalgroup FROM group_tbl WHERE account_officer='$dbname'";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_assoc($result);
$totalgroup = $rows['totalgroup'];
}

//Total loan repayment
if($usertype=='Admin'){
    $td = date('Y-m-d');
    $sql = "SELECT SUM(repayment_amount) AS loanrepayment,SUM(reverseamount) AS reverseamount FROM rep_tbl WHERE status!='pending'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $loanrepayment = $rows['loanrepayment'];
    $reverseamount = $rows['reverseamount'];
    $actualrepaymentamount = ($loanrepayment-$reverseamount);
    }else{
        $td = date('Y-m-d');
    $sql = "SELECT SUM(repayment_amount) AS loanrepayment,SUM(reverseamount) AS reverseamount FROM rep_tbl WHERE account_officer='$dbname' AND status!='pending'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $loanrepayment = $rows['loanrepayment'];
    $reverseamount = $rows['reverseamount'];
    $actualrepaymentamount = ($loanrepayment-$reverseamount);
    
}

//Total Disbursed Loan

if($usertype=='Admin'){
    $date = date("Y-m-d");
    $sql = "SELECT SUM(total_payable) AS totaldisbursed FROM loan_request WHERE status='Confirmed'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $totaldisbursed = $rows['totaldisbursed'];
    $outstandingloan = $totaldisbursed - $actualrepaymentamount;
   
    }else{
    $date = date("Y-m-d");
    $sql = "SELECT SUM(total_payable) AS totaldisbursed FROM loan_request WHERE status='Confirmed' AND account_officer='$dbname'";
    $result = mysqli_query($conn,$sql);
    $rows = mysqli_fetch_assoc($result);
    $totaldisbursed = $rows['totaldisbursed'];
       //Outstanding Loan
    $outstandingloan = $totaldisbursed - $actualrepaymentamount;

}

// //Code to extract total daily savings deposit in a particular day
// $td = date('Y-m-d');
// $sqlds="SELECT SUM(amount) as totalds FROM `dailysavingsmaster_tbl` WHERE entry_type='credit' && status='confirmed' AND trans_type='CD' AND trans_date='$td'";
// $queryds = mysqli_query($conn,$sqlds);
// $dsdata = mysqli_fetch_assoc($queryds);
// $totalds = $dsdata['totalds'];
// if(isset($totalds)){
//     $totalds = number_format($totalds,2);
// }

//Query to extract total daily avings
$sqlds= "SELECT SUM(credit) as totalds FROM `deposit_savings_tbl` WHERE savings_type='DAILY SAVINGS' AND status='Confirmed'";
$queryds = mysqli_query($conn,$sqlds);
$dsdata = mysqli_fetch_assoc($queryds);
$totalds1 = $dsdata['totalds'];
if(isset($totalds1)){
    $totalds = number_format($totalds1);
}

//Query to extract total savings
$sqlsavings= "SELECT SUM(credit) as totalsavings FROM `deposit_savings_tbl` WHERE savings_type='SAVINGS' AND status='Confirmed'";
$querysavings = mysqli_query($conn,$sqlsavings);
$savingsdata = mysqli_fetch_assoc($querysavings);
$totalsavings1 = $savingsdata['totalsavings'];
if(isset($totalsavings1)){
    $totalsavings = number_format($totalsavings1);
}

//Query to extract fixed savings
$sqlfs= "SELECT SUM(credit) as totalfs FROM `deposit_savings_tbl` WHERE savings_type='FIXED SAVINGS' AND status='Confirmed'";
$queryfs = mysqli_query($conn,$sqlfs);
$fsdata = mysqli_fetch_assoc($queryfs);
$totalfs1 = $fsdata['totalfs'];
if(isset($totalfs1)){
    $totalfs = number_format($totalfs1);
}

//Code to get individiual deposit percentage
$totaldeposit = $totalds1 + $totalfs1 + $totalsavings1;
if(isset($totalds1) && isset($totaldeposit)){
    $dsper = ($totalds1/$totaldeposit) * 100;
    $dsper = round($dsper,2);
}else{
    $dsper = 0;
}
if(isset($totalfs1) && isset($totaldeposit)){
    $fsper = ($totalfs1/$totaldeposit) * 100;
    $fsper = round($fsper,2);
}else{
    $fsper = 0;
}
if(isset($totaldsavings1) && isset($totaldeposit)){
    $sper = ($totalsavings1/$totaldeposit) * 100;
    $sper = round($sper,2);
}else{
    $sper = 0;
}



echo $dsper;
echo $fsper;
echo $sper;
?>

<!doctype html>
<html lang="en">

<head>
        
        <meta charset="utf-8" />
        <title>BigFund | Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="ThriftPay Globalmarket funds" name="description"/>
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/bigfund.png">
        
        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">
        <!-- Loader -->
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

        <?php include "navigation.php";?>
            

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
                                    <h4 class="mb-sm-0 font-size-18">Dashboard</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <!--<li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>-->
                                            <li class="breadcrumb-item active">Dashboard</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-xl-4">
                                <div class="card overflow-hidden">
                                    <div class="bg-primary bg-soft">
                                        <div class="row">
                                            <div class="col-7">
                                                <div class="text-primary p-3">
                                                    <h5 class="text-primary">Welcome Back !</h5>
                                                    <p><?php echo $dbname;?></p>
                                                </div>
                                            </div>
                                            <div class="col-5 align-self-end">
                                                <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body pt-0">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="avatar-md profile-user-wid mb-4">
                                                    <img src="../admin/pictures/<?php echo $staffpassport;?>" alt="image" class="img-thumbnail rounded-circle">
                                                </div>
                                            </div>

                                            <div class="col-sm-8">
                                                <div class="pt-4">

                                                    <div class="row">
                                                        <div class="col-6">
                                                            <h5 class="font-size-15"><?php if(isset($staffid)){
                                                           echo $staffid; 
                                                       }else{
                                                        echo "******";
                                                       } ?></h5>
                                                            <p class="text-muted mb-0">User ID</p>
                                                        </div>
                                                        <div class="col-6">
                                                            <h5 class="font-size-15"><?php if(isset($usertype)){
                                                           echo $usertype; 
                                                       }else{
                                                        echo "******";
                                                       } ?></h5>
                                                            <p class="text-muted mb-0">User Type</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-xl-8">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Registered Member</p>
                                                        <h4 class="mb-0"><?php echo $trm;?></h4>
                                                    </div>
                                                    <div class="mini-stat-icon avatar-sm rounded-circle bg-primary align-self-center">
                                                        <span class="avatar-title">
                                                            <i class="bx bx-copy-alt font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Active Member</p>
                                                        <h4 class="mb-0"><?php echo $tim;?></h4>
                                                    </div>
                                                    <div class="mini-stat-icon avatar-sm rounded-circle bg-primary align-self-center">
                                                        <span class="avatar-title">
                                                            <i class="bx bx-copy-alt font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                                    <!-- <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Inactive Member</p>
                                                        <h4 class="mb-0"><?php echo $tiam;?></h4>
                                                    </div>
                                                    <div class="mini-stat-icon avatar-sm rounded-circle bg-primary align-self-center">
                                                        <span class="avatar-title">
                                                            <i class="bx bx-copy-alt font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                                    
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Disbursed Loan</p>
                                                        <h4 class="mb-0" style="font-size:16px;">&#8358;<?php if(isset($totaldisbursed)){
                                                           echo number_format($totaldisbursed,2); 
                                                       }else{
                                                        echo "0";
                                                       } ?></h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Loan Repayment</p>
                                                        <h4 class="mb-0" style="font-size:16px;">&#8358;<?php if(isset($actualrepaymentamount)){
                                                           echo number_format($actualrepaymentamount,2); 
                                                       }else{
                                                        echo "0";
                                                       } ?></h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Loan Group</p>
                                                        <h4 class="mb-0" style="font-size:16px;"><?php echo $totalgroup;?></h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Loan Outstanding</p>
                                                        <h4 class="mb-0" style="font-size:16px;">&#8358;<?php if(isset($outstandingloan)){
                                                           echo number_format($outstandingloan,2); 
                                                       }else{
                                                        echo "0";
                                                       } ?></h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <!--Deposit-->
                                <div class="col-xl-8">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4" style="text-align:center;">Deposit</h4>

                                        <div class="text-center">
                                            <div class="mb-4">
                                                <i class="bx bx-money text-primary display-4"></i>
                                            </div>
                                            <h3>&#8358;<?php if(isset($totaldeposit)){echo number_format($totaldeposit);}else{ echo "0";}?></h3>
                                            <p>Total Deposit</p>
                                        </div>

                                        <div class="table-responsive mt-4">
                                            <table class="table align-middle table-nowrap">
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 30%">
                                                            <p class="mb-0">Daily Savings</p>
                                                        </td>
                                                        <td style="width: 25%">
                                                            <h5 class="mb-0">&#8358;<?php if(isset($totalds)){echo $totalds;}else{ echo "0";}?></h5></td>
                                                        <td>
                                                            <div class="progress bg-transparent progress-sm">
                                                                <div class="progress-bar bg-primary rounded" role="progressbar" style="width:<?= $dsper;?>%" aria-valuenow="94" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p class="mb-0">Fixed Savings</p>
                                                        </td>
                                                        <td>
                                                            <h5 class="mb-0">&#8358;<?php if(isset($totalfs)){echo $totalfs;}else{echo "0";}?></h5>
                                                        </td>
                                                        <td>
                                                            <div class="progress bg-transparent progress-sm">
                                                                <div class="progress-bar bg-success rounded" role="progressbar" style="width:<?= $fsper;?>%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p class="mb-0">Savings</p>
                                                        </td>
                                                        <td>
                                                            <h5 class="mb-0">&#8358;<?php if(isset($totalsavings)){echo $totalsavings;}else{echo "0";}?></h5>
                                                        </td>
                                                        <td>
                                                            <div class="progress bg-transparent progress-sm">
                                                                <div class="progress-bar bg-warning rounded" role="progressbar" style="width:<?= $sper;?>%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->
                        
                        </div>
                        <!-- end row -->
                        
                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                <!-- Transaction Modal -->
                <div class="modal fade transaction-detailModal" tabindex="-1" role="dialog" aria-labelledby="transaction-detailModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="transaction-detailModalLabel">Order Details</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p class="mb-2">Product id: <span class="text-primary">#SK2540</span></p>
                                <p class="mb-4">Billing Name: <span class="text-primary">Neal Matthews</span></p>

                                <div class="table-responsive">
                                    <table class="table align-middle table-nowrap">
                                        <thead>
                                            <tr>
                                                <th scope="col">Product</th>
                                                <th scope="col">Product Name</th>
                                                <th scope="col">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">
                                                    <div>
                                                        <img src="assets/images/product/img-7.png" alt="" class="avatar-sm">
                                                    </div>
                                                </th>
                                                <td>
                                                    <div>
                                                        <h5 class="text-truncate font-size-14">Wireless Headphone (Black)</h5>
                                                        <p class="text-muted mb-0">$ 225 x 1</p>
                                                    </div>
                                                </td>
                                                <td>$ 255</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">
                                                    <div>
                                                        <img src="assets/images/product/img-4.png" alt="" class="avatar-sm">
                                                    </div>
                                                </th>
                                                <td>
                                                    <div>
                                                        <h5 class="text-truncate font-size-14">Phone patterned cases</h5>
                                                        <p class="text-muted mb-0">$ 145 x 1</p>
                                                    </div>
                                                </td>
                                                <td>$ 145</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Sub Total:</h6>
                                                </td>
                                                <td>
                                                    $ 400
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Shipping:</h6>
                                                </td>
                                                <td>
                                                    Free
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-right">Total:</h6>
                                                </td>
                                                <td>
                                                    $ 400
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end modal -->

                <!-- subscribeModal -->
                <!--
                <div class="modal fade" id="subscribeModal" tabindex="-1" aria-labelledby="subscribeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header border-bottom-0">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="text-center mb-4">
                                    <div class="avatar-md mx-auto mb-4">
                                        <div class="avatar-title bg-light rounded-circle text-primary h1">
                                            <i class="mdi mdi-email-open"></i>
                                        </div>
                                    </div>

                                    <div class="row justify-content-center">
                                        <div class="col-xl-10">
                                            <h4 class="text-primary">Subscribe !</h4>
                                            <p class="text-muted font-size-14 mb-4">Subscribe our newletter and get notification to stay update.</p>

                                            <div class="input-group bg-light rounded">
                                                <input type="email" class="form-control bg-transparent border-0" placeholder="Enter Email address" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                
                                                <button class="btn btn-primary" type="button" id="button-addon2">
                                                    <i class="bx bxs-paper-plane"></i>
                                                </button>
                                                
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>-->
                <!-- end modal -->

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

        <!-- apexcharts -->
        <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- dashboard init -->
        <script src="assets/js/pages/dashboard.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>
    </body>



</html>