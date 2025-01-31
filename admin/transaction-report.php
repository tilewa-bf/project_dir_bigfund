<?php

include "../db.php";
include "../auth.php";

?>

<!doctype html>
<html lang="en">

    
<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Transaction Report</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />

        <link href="assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css">
        <link href="assets/libs/spectrum-colorpicker2/spectrum.min.css" rel="stylesheet" type="text/css">
        <link href="assets/libs/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css">
        <link href="assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="assets/libs/%40chenfengyuan/datepicker/datepicker.min.css">

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/bigfund.png">

        <!-- DataTables -->
        <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />   
        <!--For column datatables -->  
        <link href="assets/cs/jquery.dataTables.min.css"/>
        <link href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css"/>

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
                                    <h4 class="mb-sm-0 font-size-18">Transaction Report</h4>
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Data Tables</li>
                                        </ol>
                                    </div>-->

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                         
        
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                       
        
                                        <h4 class="card-title">Transaction Report</h4><br/>
                                        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div class="row">
                                                <div class="col-xl-3">
                                                <div>
                                                    <h4 class="font-size-14 mb-3">Date From:</h4>
                                                    <div class="docs-datepicker">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control docs-date" name="from"
                                                                placeholder="Pick a date" autocomplete="off">
                                                            <button type="button"
                                                                class="btn btn-secondary docs-datepicker-trigger"
                                                                disabled>
                                                                <i class="mdi mdi-calendar" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                        <div class="docs-datepicker-container"></div>
                                                    </div>
                                                </div>
                                                </div>

                                                <div class="col-xl-3">
                                                <div>
                                                    <h4 class="font-size-14 mb-3">Date To:</h4>
                                                    <div class="docs-datepicker">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control docs-date" name="to"
                                                                placeholder="Pick a date" autocomplete="off">
                                                            <button type="button" name="submit" 
                                                                class="btn btn-secondary docs-datepicker-trigger"
                                                                disabled>
                                                                <i class="mdi mdi-calendar" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                        <div class="docs-datepicker-container"></div>
                                                    </div>
                                                </div>
                                                </div>

                                                <div class="col-xl-3">
                                                <div><br/>
                                                    
                                                    <button style="margin-top: 12px;" type="submit" name="submit" class="btn btn-primary waves-effect waves-light">
                                                    <i class="bx bxs-report font-size-16 align-middle me-2"></i> View Report</button>
                                                </div>
                                            </div>
                                        <div class="row" style="margin-top:50px;">
                                        <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>Transaction Date</th>
                                                <th>Transaction ID</th>
                                                <th>Reference No</th>
                                                <th>Value</th>
                                                
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php
                                            if($_SERVER["REQUEST_METHOD"]=="POST"){
                                                  if(isset($_POST['submit'])){
                                                    $from=date('Y-m-d',strtotime($_POST['from']));
                                                    $to=date('Y-m-d',strtotime($_POST['to']));


                                                    $sql ="SELECT trans_date,trans_id,ref_no,total FROM passbook_deposit WHERE trans_date BETWEEN '".$from."' AND '".$to."'";
                                                    $query = mysqli_query($conn,$sql);

                                                    
                                                    

                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $transdate = $rows['trans_date'];
                                                        $transid = $rows['trans_id'];
                                                        $refno = $rows['ref_no'];
                                                        $value = $rows['total'];
                                            ?>
                                            <tr>
                                                <td><?php echo $transdate;?></td>
                                                <td><?php echo $transid;?></td>
                                                <td><?php echo $refno;?></td>
                                                <td><?php echo $value;?></td>
                                            </tr>
                                        <?php }
                                                }}?>
                                            </tbody>
                                            
                                        </table>
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


          <!-- form advanced init -->
        <script src="assets/js/pages/form-advanced.init.js"></script>
        <script src="assets/js/app.js"></script>


        <!-- Datepicker-->
        <script src="assets/libs/select2/js/select2.min.js"></script>
        <script src="assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/libs/spectrum-colorpicker2/spectrum.min.js"></script>
        <script src="assets/libs/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
        <script src="assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
        <script src="assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
        <script src="assets/libs/%40chenfengyuan/datepicker/datepicker.min.js"></script>

        <!-- form advanced init -->
        <script src="assets/js/pages/form-advanced.init.js"></script>

        <script src="assets/js/app.js"></script>

    
        

    </body>


</html>
