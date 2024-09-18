<?php
include "../db.php";
include "../auth.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
        <title>Bigfund | Loan by Approved/Disbursed Date Report</title>
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
        <!-- <link rel="shortcut icon" href="assets/images/favicon.ico"> -->
        <link rel="icon" type="image/x-icon" href="assets/images/bigfund.png">

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
<body>

<div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <?php include "reportheader.php"?>

                                        <h4 class="card-title" style="margin-top:30px;margin-bottom: -20px;">Approve Loan</h4><br/>
                                        
                                            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div style="margin-top: 20px;" class="row">
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
                                                <th>SN</th>
                                                <th>Disbursed Date</th>
                                                <th>Maturity Date</th>
                                                <th>Loan Number</th>
                                                <th>Member ID</th>
                                                <th>Member Name</th>
                                                <th>Phone Number</th>
                                                <th>Account Officer</th>
                                                <!-- <th>Granted Date</th>
                                                <th>Expiry Date</th> -->
                                                <th>Applied Amount</th>
                                                <th>Approved Amount</th>
                                                <th>Total Payable</th>
                                                <th>Status</th>
                                                <th>Reason</th>                
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php
                                            $i = 1;
                                            $total = 0;
                                            $balance = 0;
                                            if($_SERVER["REQUEST_METHOD"]=="POST"){
                                                  if(isset($_POST['submit'])){
                                                    $from=date('Y-m-d',strtotime($_POST['from']));
                                                    $to=date('Y-m-d',strtotime($_POST['to']));
                                                    // $sql ="SELECT * FROM loan_request WHERE creation_date BETWEEN '$from' AND '$to' AND status!='pending' ORDER BY loan_id DESC ";
                                                    $sql ="SELECT * FROM loan_request WHERE tenor='WEEKLY' AND approved_date BETWEEN '$from' AND '$to' AND status='Confirmed' ORDER BY loan_id DESC";
                                                    $query = mysqli_query($conn,$sql);
                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $loancode = $rows['loan_code'];
                                                $membername = $rows['member_name'];
                                                $memberid = $rows['member_id'];
                                                $memberphone = $rows['member_phone'];
                                                $appdate = $rows['app_date'];
                                                $cdate = $rows['creation_date'];
                                                $maturitydate = $rows['maturity_date'];
                                                $appamount = $rows['applied_amount'];
                                                $appramount = $rows['approved_amount'];
                                                $totalpayable = $rows['total_payable'];
                                                $accountoff = $rows['account_officer'];
                    
                                                $loanstatus = $rows['status'];
                                                $reason = ucwords(($rows['comments']));
                                                if($loanstatus=='Confirmed'){
                                                    $loanstatus = 'Approved';
                                                    $badge = 'success';
                                                    
                                                }else{
                                                    $badge = 'danger';
                                                    $reason = $reason;
                                                }
                                                $total+=$totalpayable;
                                            ?>
                                            <tr>
                                                <td><?php echo $i;?></td>
                                                <td><?php echo $appdate;?></td>
                                                <td><?php echo $maturitydate;?></td>
                                                <td><?php echo $loancode;?></td>
                                                <td><?php echo $memberid;?></td>
                                                <td><?php echo strtoupper($membername);?></td>
                                                <td><?php echo $memberphone;?></td>
                                                <td><?php echo strtoupper($accountoff);?></td>
                                                <!-- <td><?php echo $gdate;?></td>
                                                <td><?php echo $dbexdate;?></td> -->
                                                <td><?php echo number_format($appamount);?></td>
                                                <td><?php echo number_format($appramount);?></td>
                                                <td><?php echo number_format($totalpayable);?></td>
                                                <td><span class="badge bg-<?php echo $badge;?>"><?php echo $loanstatus;?></span></strong></td>
                                                <td><?php echo $reason;?></td>
                                            </tr>
                                        <?php $i++; }
                                                }}?>
                                            </tbody>
                                            <tfoot>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <!-- <th>Granted Date</th>
                                                <th>Expiry Date</th> -->
                                                <th></th>
                                                <th>Total</th>
                                                <th><?php echo number_format($total);?></th>
                                                <th></th>
                                                <th></th> 
                                            </tfoot>
                                            
                                        </table>
                                    </div>

                                            </div>
                                        </form>

                                    </div>
                                      
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

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