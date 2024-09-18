<?php

include "../db.php";
include "../auth.php";


if(isset($_GET['lid'])){
    $lid = $_GET['lid'];
}

$dbbalance = 0;
$loanmembersql = "SELECT * FROM loan_request WHERE loan_code='$lid'";
$loanmemberquery = mysqli_query($conn,$loanmembersql) or die($loanmembersql);
if(mysqli_num_rows($loanmemberquery)==1){
    $loanmemberdata = mysqli_fetch_assoc($loanmemberquery);

    $dbloancode = $loanmemberdata['loan_code'];
    $dbloanmembername = strtoupper($loanmemberdata['member_name']);
    $dbloanmemberid = $loanmemberdata['member_id'];
    $dbloanappliedamount = $loanmemberdata['applied_amount'];
    $dbloanapprovedamount = $loanmemberdata['approved_amount'];
    $dbloanapproveddate = $loanmemberdata['app_date'];
    $dbloanmaturitydate = $loanmemberdata['maturity_date'];
    $dbloanpurpose = $loanmemberdata['loan_purpose'];
    $dbloanstatus = $loanmemberdata['status1'];
    $dbloanpi = $loanmemberdata['total_payable'];
    // $dbloanrepamt = $loanmemberdata['repamount'];
    $dbloancomments = $loanmemberdata['comments'];
//     $dbbalance = $dbbalance - $dbloanpi + $dbloanrepamt; 
}

?>

<!doctype html>
<html lang="en">

    
<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Loan Schedule</title>
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

        <style type="text/css">
            ul.breadcrumb{
                padding: 0px 16px;
                list-style: none;
            }
            ul.breadcrumb li{
                display: inline;
                font-size: 18px;
            }
            ul.breadcrumb li+li:before{
                padding: 5px;
                color:black;
                content:"/\00a0";
            }
            ul.breadcrumb li a{
/*                color: #0275d8;*/
                text-decoration: none;
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

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <ul class="breadcrumb">
                                        <li><a href="loan_cust_schedule.php">Loan Schedule</a></li>
                                        <li>Loan Schedule</li>
                                    </ul>
                                    <!-- <h4 class="mb-sm-0 font-size-18">Loan History</h4> -->
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
                                        <!-- <h4 class="card-title">Loan History</h4><br/> -->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="formrow-group-input" class="form-label"><strong>Loan Account:</strong> <?php echo $dbloancode;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Customer Name:</strong> <?php echo $dbloanmembername;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Applied Amount:</strong> &#8358;<?php echo number_format($dbloanappliedamount);?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Principal Approved Amount:</strong> &#8358;<?php echo number_format($dbloanapprovedamount);?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Loan Purpose:</strong> <?php echo $dbloanpurpose;?> </label><br/>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="formrow-group-input" class="form-label"><strong>Member ID:</strong> <?php echo $dbloanmemberid;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Status:</strong> <?php echo $dbloanstatus;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Principal + Interest:</strong> &#8358;<?php echo number_format($dbloanpi);?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Comment:</strong> <?php echo $dbloancomments;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Disbursed Date:</strong> <?php echo $dbloanapproveddate;?> </label><br/>
                                                <label for="formrow-group-input" class="form-label"><strong>Maturity Date:</strong> <?php echo $dbloanmaturitydate;?> </label><br/>
                                                <!-- <label for="formrow-group-input" class="form-label"><strong>Balance:</strong> <?php echo $dbbalance;?> </label><br/> -->
                                            </div>
                                        </div>

                                        <div class="row" style="margin-top:50px;">
                                        <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>SN</th>
                                                <th>Week</th>
                                                <th>Repayment Date</th>
                                                <th>Weekly Repayment</th>
                                                <th>Weekly Interest</th>
                                                <th>Total Amount Payable/Week</th>
                                            </tr>
                                            </thead>
        
                                            <tbody>

                                            <?php
                                            $i=1;
                                            $twp=0;
                                            $twint=0;
                                            $total=0;

                                                $startdate=strtotime($dbloanapproveddate);
                                                $enddate=strtotime($dbloanmaturitydate);

                                                while ($startdate < $enddate) {
                                                  $startdate = strtotime("+1 week", $startdate);
                                                  $repdate= date("Y-m-d", $startdate);
                                                  $weeklyrep = $dbloanapprovedamount/23;
                                                  $int = $dbloanpi - $dbloanapprovedamount;    
                                                  $weeklyint = $int/23;
                                                  $totalpayable = $weeklyrep + $weeklyint;
                                                  $twp = $weeklyrep + $twp;
                                                  $twint = $weeklyint + $twint;
                                                  $total=$totalpayable+$total

                                            ?>
                                            <tr>
                                                <td><?php echo $i;?></td>
                                                <td><?php echo "Week"." ".$i;?></td>
                                                <td><?php echo $repdate;?></td>
                                                <td><?php echo ceil($weeklyrep);?></td>
                                                <td><?php echo ceil($weeklyint);?></td>
                                                <td><?php echo $totalpayable;?></td>
                                            </tr>
                                        <?php $i++; }
                                                ?>
                                            </tbody>
                                            <tfoot>
                                                <th></th>
                                                <th></th>
                                                <th><strong>Total</strong></th>
                                                <th><?php echo number_format($twp);?></th>
                                                <th><?php echo number_format($twint);?></th>
                                                <th><?php echo number_format($total);?></th>
                                            </tfoot>
                                        </table>
                                    </div>
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
