<?php

include "../db.php";
include "../auth.php";

if(isset($_GET['pid'])){
    $pid = $_GET['pid'];
    echo $pid;
}

?>

<!doctype html>
<html lang="en">
    
    
<head>
        
        <meta charset="utf-8" />
        <title>Passbook Detail | Savepay - Admin Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/geexsmith.ico">

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
                                    <h4 class="mb-sm-0 font-size-18">Passbook Details</h4>
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Invoices</a></li>
                                            <li class="breadcrumb-item active">Details</li>
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
                                        <div class="invoice-title">
                                            <?php

                                             $sql ="SELECT * FROM passbook WHERE passbook_id='$pid'";
                                             $query = mysqli_query($conn,$sql);

                                             $rows = mysqli_fetch_assoc($query);
                                                $p_id= $rows['passbook_id'];
                                                $membername = $rows['member_name'];
                                                $passbookname = $rows['passbook_name'];
                                                $cont = $rows['contribution'];
                                                $totalexpcont = $cont * 30;
                                                $sdate = $rows['creation_date'];
                                                $stopdate = $rows['stop_date'];


                                                $sql2 ="SELECT SUM(total) as totalsaved FROM passbook_deposit WHERE passbook_id='$pid' AND status2='Confirmed'";
                                             $query2 = mysqli_query($conn,$sql2);

                                             $rows2 = mysqli_fetch_assoc($query2);
                                                $totalsaved = $rows2['totalsaved'];
                                         
                                            ?>

                                            <h4 class="float-end font-size-16"><?php echo $p_id;?></h4>
                                            <div class="mb-4">
                                                <img src="assets/images/logo.png" alt="logo" height="20"/>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <address>
                                                    <strong><?php echo ucfirst($membername);?></strong><br>
                                                    <strong>Passbook Name:</strong> <?php echo $passbookname;?><br>
                                                    <strong>Daily Contribution:</strong> <?php echo $cont;?><br>
                                                    <strong>Total Saved:</strong> <?php echo $totalsaved;?><br>
                                                    
                                                </address>
                                            </div>
                                            <div class="col-sm-6 text-sm-end">
                                                <address class="mt-2 mt-sm-0">
                                                    <strong>Start Date:</strong><br>
                                                    
                                                    <?php echo $sdate;?><br>
                                                    
                                                </address>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 mt-3">
                                                <address>
                                                    <strong>Total Expected Contr.:</strong><br>
                                                    <?php echo $totalexpcont;?><br>
                                                </address>
                                            </div>
                                            <div class="col-sm-6 mt-3 text-sm-end">
                                                <address>
                                                    <strong>End Date:</strong><br>
                                                    <?php echo $stopdate;?><br>
                                                </address>
                                            </div>
                                        </div>
                                        <!--
                                        <div class="py-2 mt-3">
                                            <h3 class="font-size-15 font-weight-bold">Order summary</h3>
                                        </div>-->
                                        <!--
                                        <div class="table-responsive">
                                            <table class="table table-nowrap">
                                                <thead>
                                                    <tr>
                                                        <th style="width: 70px;">No.</th>
                                                        <th>Item</th>
                                                        <th class="text-end">Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>01</td>
                                                        <td>Skote - Admin Dashboard Template</td>
                                                        <td class="text-end">$499.00</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>02</td>
                                                        <td>Skote - Landing Template</td>
                                                        <td class="text-end">$399.00</td>
                                                    </tr>

                                                    <tr>
                                                        <td>03</td>
                                                        <td>Veltrix - Admin Dashboard Template</td>
                                                        <td class="text-end">$499.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" class="text-end">Sub Total</td>
                                                        <td class="text-end">$1397.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" class="border-0 text-end">
                                                            <strong>Shipping</strong></td>
                                                        <td class="border-0 text-end">$13.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" class="border-0 text-end">
                                                            <strong>Total</strong></td>
                                                        <td class="border-0 text-end"><h4 class="m-0">$1410.00</h4></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>-->
                                        <!--
                                        <div class="d-print-none">
                                            <div class="float-end">
                                                <a href="javascript:window.print()" class="btn btn-success waves-effect waves-light me-1"><i class="fa fa-print"></i></a>
                                                <a href="#" class="btn btn-primary w-md waves-effect waves-light">Send</a>
                                            </div>
                                        </div>-->
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
                                <script>document.write(new Date().getFullYear())</script> © Savepay.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Jobastech.
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

    </body>


</html>
