<?php
include "../db.php";
include "../auth.php";


?>

<!doctype html>
<html lang="en">

<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Reports </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <!-- <link rel="shortcut icon" href="assets/images/favicon.ico"> -->
        <link rel="icon" type="image/x-icon" href="assets/images/bigfund.png">

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

                                    <h4 class="mb-sm-0 font-size-18">Reports</h4>

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
                            <div class="row">
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="member_list.php" target="_blank">         
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Member List</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="memberby_type.php" target="_blank">         
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Member by Savings Type</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>-->
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="memberby_accoff.php" target="_blank">         
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Member by Account Officer</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="memberbalance.php" target="_blank">         
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Member with Savings Balance</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="member_zero_balance.php" target="_blank">         
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Member with Zero Balance</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="member_regfee.php" target="_blank">         
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan Application Fee</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="regfeebydate.php" target="_blank">         
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan Application Fee By Date</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="memregfeebygroup.php" target="_blank">             
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <!-- <h5 class="mb-0">Member Reg. Fee by Group Name</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>  -->
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="memberbygroup.php" target="_blank">             
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3"> -->
                                                <!-- <p class="text-muted mb-2"></p> -->
                                <!--                 <h5 class="mb-0">Member by Group Name</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->     
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanrequeststatus.php" target="_blank">
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">View Approved Loan</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="pending-loan.php" target="_blank">
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Pending Loan Request</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="decline-loan.php" target="_blank">
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Decline Loan</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="activeloan_byaccofficer.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Active Loan Member</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="paidoffloan_byaccofficer.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Paid Off Loan Member</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanmember_byaccoff.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Loan Member by Account Officer</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanbygroup.php" target="_blank">             
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3"> -->
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <!-- <h5 class="mb-0">Loan Member by Group Name</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanbydate.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan Granted by Date</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="weeklyremittance.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Expected Weekly Loan Remittance</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="weekly_loan_sav_rem.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Expected Weekly Loan & Savings Remittance</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanrepbydate.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan Repayment by Date</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanrepbydate_accoff.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan Rep. by Date & Account Officer</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanrepbygroupdate.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3"> -->
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <!-- <h5 class="mb-0">Loan Repayment by Group & Date</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanbalancebyaccoff.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan Balance by Account Officer</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanbalancebygroup.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3"> -->
                                                <!-- <p class="text-muted mb-2"></p> -->
                                          <!--       <h5 class="mb-0">Loan Balance by Group</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="gloanbal.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">General Loan Balance</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="viewloanaccount.php" target="_blank">        
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan Accounts by Expiry</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="loanbyguarantor.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Loan by Guarantor</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="dscustomers.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3"> -->
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <!-- <h5 class="mb-0">Member List</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="mdscustomers.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3"> -->
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <!-- <h5 class="mb-0">Marketers Daily Savings Customers</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="marketers-report.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Customer Savings Summary Report</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                              <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="dstby_date_marketers.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Weekly Customers Savings Report by Date & Acc. Officers</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="marketerstrans-report.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Weekly Customer Savings Report</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="ds-cashwtd-report.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> -->
                                                <h5 class="mb-0">Weekly Savings Withdrawal Report</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="income-report.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Customer Savings Income Report</h5>
                                            </div>
    
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="customerbalance-report.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Customer Balance</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="checkedcustomerbalance-report.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Checked Customer Balance</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            
                            <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="checked-dailysavings.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Checked Daily Savings By Account Officer</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            
                            
                           <!-- <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="totalwtd-by-date.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Total Withdrawal By Date</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card mini-stats-wid">
                                    <div class="card-body">
                                        <a href="totaldep-by-date.php" target="_blank">  
                                        <div class="d-flex flex-wrap">
                                            <div class="me-3">
                                                <!-- <p class="text-muted mb-2"></p> --
                                                <h5 class="mb-0">Total Deposit By Date</h5>
                                            </div>
                                            <div class="avatar-sm ms-auto">
                                                <div class="avatar-title bg-light rounded-circle text-primary font-size-20">
                                                    <i class="bx bxs-book-bookmark"></i>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </div>-->
                        </div>
                        <!-- end row -->

                        <?php mysqli_close($conn); ?>

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
