<?php
include "../db.php";
include "../auth.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
        <title>Bigfund | Loan Expire by Date Report</title>
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

        <style type="text/css">
            .blink {
            animation: blinker 1s linear infinite;
            color: red;
            font-family: sans-serif;
        }
        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }
        </style>


</head>
<body>

<div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <?php include "reportheader.php"?>

                                        <h4 class="card-title" style="margin-top:30px;margin-bottom: -20px;">Loan by Expiry Date</h4><br/>
                                        
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
                                                <th>Loan Number</th>
                                                <th>Member Name</th>
                                                <th>Granted Date</th>
                                                <th>Expiry Date</th>
                                                <th>Applied Amount</th>
                                                <th>Approved Amount</th>
                                                <th>Total Payable</th>
                                                <!-- <th>Total Paid</th>
                                                <th>Balance</th> -->
                                                <th>Status</th>
                                                <th>Duration</th>              
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php
                                            $i = 1;
                                           
                                            if($_SERVER["REQUEST_METHOD"]=="POST"){
                                                  if(isset($_POST['submit'])){
                                                    $from=date('Y-m-d',strtotime($_POST['from']));
                                                    $to=date('Y-m-d',strtotime($_POST['to']));
                                                    // $sql ="SELECT * FROM loan_request WHERE creation_date BETWEEN '$from' AND '$to' AND status!='pending' ORDER BY loan_id DESC ";
                                                    $sql = "SELECT p.loan_code,p.member_name,t.approved_date,t.maturity_date,p.applied_amount AS loanamount,t.total_payable AS totalpayable,p.approved_amount,SUM(p.repayment_amount) AS totalPaid,p.total_payable-SUM(p.repayment_amount) as Balance FROM rep_tbl AS p INNER JOIN loan_request AS t ON p.loan_code = t.loan_code WHERE p.tenor='DAILY' GROUP BY loan_code";
                                                $query = mysqli_query($conn,$sql);
                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $loancode = $rows['loan_code'];
                                                $membername = $rows['member_name'];
                                                $gdate = $rows['approved_date'];
                                                $dbexdate = $rows['maturity_date'];
                                                $dbappramt = $rows['approved_amount'];
                                                $td = date('Y-m-d');
                                                $expdate = strtotime($dbexdate);
                                                $td = strtotime($td);
                                                $diff = $td - $expdate;
                                                $noofdays = abs(floor($diff/(60*60*24)));
                                                if($td > $expdate){
                                                    $loanstatus =  'Expired';
                                                    $badge =  'danger';
                                                    $durationtype = 'day(s)';
                                                    $blink = "blink";
                                                }else{
                                                    $loanstatus= 'Not Expired';
                                                    $badge= 'success';
                                                    $durationtype  = ' day(s) remaining';
                                                    $blink ="";
                                                }
                                                // $diff =  date_diff($date1,$date2);
                                                // echo $diff  -> format("%R%a days");
        
                                                // $date = date_create($gdate);
                                                // date_add($date,date_interval_create_from_date_string("31days"));
                                                // $date2= date_format($date,"Y-m-d");

                                                // if($date2 > $exdate){
                                                //     echo "Non Performing";
                                                // }

                                                $loanamount = $rows['loanamount'];
                                                $totalpayable = $rows['totalpayable'];
                                                $totalPaid = $rows['totalPaid'];
                                                $balance= $rows['Balance'];
                                            ?>
                                            <tr>
                                                <td><?php echo $i;?></td>
                                                <td><?php echo $loancode;?></td>
                                                <td><?php echo strtoupper($membername);?></td>
                                                <td><?php echo $gdate;?></td>
                                                <td><?php echo $dbexdate;?></td>
                                                <td><?php echo number_format($loanamount);?></td>
                                                </td>
                                                <td><?php echo number_format($dbappramt);?></td>
                                                <td><?php echo number_format($totalpayable);?></td>
                                                <!-- <td><?php echo number_format($totalPaid);?></td>
                                                <td><?php echo number_format($balance);?></td> -->
                                                <td style="font-size: 18px;" class="<?php echo $blink ;?>"><span class="badge bg-<?php echo $badge;?>"><?php echo $loanstatus;?></span></td>
                                                <td><?php echo $noofdays." ". $durationtype;?></td>
                                            </tr>
                                        <?php $i++; }
                                                }}?>
                                            </tbody>
                                            
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