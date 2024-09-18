<?php

include "../db.php";
include "../auth.php";

//session_start();

if(isset($_POST['confirm'])){

    $sql = "UPDATE data_entry_tbl SET status = 'Confirmed', confirm_by='$dbname' WHERE status='Processing' AND status2!='delete'"; 
    $result= mysqli_query($conn,$sql);

    // //Query to update GL balance
    // $glaccno = $_SESSION['glaccno'];
    // $sqlglbal = "SELECT * FROM gl_bal_tbl WHERE account_number= '$glaccno'";
    // $resultglbal = mysqli_query($conn,$sqlglbal) or die($sqlglbal);
    // $glbaldata = mysqli_fetch_assoc($resultglbal);
    // $prevbal = $glbaldata['prev_bal'];
    // $newbal = $glbaldata['new_bal'];

    if($result){
    //insert loan request into repayment table
        $insquery =  mysqli_query($conn,"INSERT INTO dailysavingsmaster_tbl(`trans_id`, `cust_acc`, `cust_name`, `account_officer`, `amount`,`narration`, `ref_no`,`trans_type`, `entry_type`, `pay_type`, `status`, `status2`, `post_by`, `confirm_by`, `trans_date`, `date_time`)SELECT `trans_id`, `cust_acc`, `cust_name`, `account_officer`, `amount`,`narration`, `ref_no`,`trans_type`,`entry_type`, `pay_type`, `status`, `status2`, `post_by`, `confirm_by`, `trans_date`, `date_time` FROM data_entry_tbl WHERE status3= 'unmove' AND status2!='delete'") or die(mysqli_error($conn));

        $sql = "UPDATE data_entry_tbl SET status3 = 'moved' WHERE status3='unmove'"; 
        $result= mysqli_query($conn,$sql);

        $sql = "UPDATE income_tbl SET status = 'Confirmed' WHERE status='Processing'"; 
        $result= mysqli_query($conn,$sql);

        // $sql = "UPDATE gl_bal_tbl SET prev_bal = '$prevbal' AND new_bal = '$newbal' WHERE status='Processing'"; 
        // $result= mysqli_query($conn,$sql);
        // $msg = "All Entry(s) Confirmed";
        // $alerttype = "success";
    }
}


?>

<!doctype html>
<html lang="en">


<head>

    <meta charset="utf-8" />
    <title>Bigfund | Confirm Daily Savings</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/bigfund.png">

    <!-- DataTables -->
    <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    <!-- Responsive datatable examples -->
    <link href="assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />     

    <!-- Bootstrap Css -->
    <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

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

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                <h4 class="mb-sm-0 font-size-18">DAILY SAVINGS CONFIRMATION</h4>
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Data Tables</li>
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
                                   <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                                    <?php echo $msg;?>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div> <?php } ?>

                                    <h4 class="card-title">Daily Savings Confirmation</h4>
                                        <!--<p class="card-title-desc">The Buttons extension for DataTables
                                            provides a common set of options, API methods and styling to display
                                            buttons on a page that will interact with a DataTable. The core library
                                            provides the based framework upon which plug-ins can built.
                                        </p>-->

                                        <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Account Number</th>
                                                    <th>Customer Name</th>
                                                    <th>Account Officer</th>
                                                    <th>Entry Type</th>
                                                    <th>Narration</th>
                                                    <th>Amount</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $i = 1;
                                                $sql ="SELECT * FROM data_entry_tbl WHERE status = 'Processing' AND status2='undelete' ORDER BY d_id ASC";
                                                $query = mysqli_query($conn,$sql);
                                                while($rows = mysqli_fetch_assoc($query)){
                                                    $id = $rows['d_id'];
                                                    $transid = $rows['trans_id'];
                                                    $dbaccno = $rows['cust_acc'];
                                                    $dbcustname = $rows['cust_name'];
                                                    $dbaccoff = $rows['account_officer'];
                                                    $dbentrytype = $rows['entry_type'];
                                                    $narration = $rows['narration'];
                                                    $amount = $rows['amount'];
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $i; ?></td>
                                                        <td><?php echo $dbaccno; ?></td>
                                                        <td><?php echo $dbcustname; ?></td>
                                                        <td><?php echo $dbaccoff; ?></td>
                                                        <td><?php echo $dbentrytype; ?></td>
                                                        <td><?php echo $narration;?></td>
                                                        <td><?php echo number_format($amount,2); ?></td>         
                                                        <td><a href="javascript:deletedeposit(<?php echo $transid; ?>)"><button class="btn btn-danger btn-sm">Delete</button></a></td>  
                                                    </tr>      
                                                    <?php $i++; }?>
                                                </tbody>
                                            </table>
                                            <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>">
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <div class="mb-3">
                                                            <button type="submit" name="confirm" class="btn btn-primary waves-effect waves-light">Confirm Entries</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                </div> <!-- end col -->
                            </div> <!-- end row -->

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

            <script>
                function deletedeposit(id){
                    if(confirm('Are You Sure You Want To Delete This Transaction')){
                        window.location.href='deletedailysaving.php?deletedeposit='+id;
                    }
                }
            </script>

            <script src="assets/libs/jquery/jquery.min.js"></script>
            <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="assets/libs/metismenu/metisMenu.min.js"></script>
            <script src="assets/libs/simplebar/simplebar.min.js"></script>
            <script src="assets/libs/node-waves/waves.min.js"></script>

            <!-- Required datatable js -->
            <script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
            <script src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
            <!-- Buttons examples -->
            <script src="assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
            <script src="assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
            <script src="assets/libs/jszip/jszip.min.js"></script>
            <script src="assets/libs/pdfmake/build/pdfmake.min.js"></script>
            <script src="assets/libs/pdfmake/build/vfs_fonts.js"></script>
            <script src="assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
            <script src="assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
            <script src="assets/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>

            <!-- Responsive examples -->
            <script src="assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
            <script src="assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

            <!-- Datatable init js -->
            <script src="assets/js/pages/datatables.init.js"></script>    

            <script src="assets/js/app.js"></script>

            <!-- Sweet Alerts js -->
            <script src="assets/libs/sweetalert2/sweetalert2.min.js"></script>

            <!-- Sweet alert init js-->
            <script src="assets/js/pages/sweet-alerts.init.js"></script>


        </body>


        </html>
