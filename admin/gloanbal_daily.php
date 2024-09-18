<?php
include "../db.php";
include "../auth.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
        <title>Bigfund | General Loan Balance</title>
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

                                        <h4 class="card-title" style="margin-top:30px;margin-bottom: -20px;">General Loan Balance</h4><br/>
                                        <div class="row" style="margin-top:50px;">
                                        <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>SN</th>
                                                <th>Loan Number</th>
                                                <th>Member Number</th>
                                                <th>Member Name</th>
                                                <th>Account Officer</th>
                                                <th>Approved Date</th>
                                                <th>Maturity Date</th>
                                                <th>Applied Amount</th>
                                                <th>Approved Amount
                                                <th>Total Payable</th>
                                                <th>Total Paid</th>
                                                <th>Balance</th>                        
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php
                                            $i = 1;
                                            $total1 = 0;
                                            $total2 = 0;
                                            $total = 0;
                                            $balance = 0;
                                                    $sql2 ="SELECT loan_code,member_id,member_name,applied_amount,approved_date,maturity_date,approved_amount,SUM(applied_amount) AS loanamount,account_officer,total_payable,SUM(repayment_amount) AS totalPaid,SUM(repayment_amount) as repamt,SUM(reverseamount) as revamt,applied_amount, total_payable FROM rep_tbl WHERE tenor='DAILY' AND status!='pending' AND loan_code NOT LIKE '%100129%' AND total_payable!=0 GROUP BY loan_code";
                                            $result2 = mysqli_query($conn,$sql2);
                                            while($rows = mysqli_fetch_assoc($result2)){
                                                $loancode = $rows['loan_code'];
                                                $memberid = $rows['member_id'];
                                                $membername = $rows['member_name'];
                                              
                                                $loanamount = $rows['applied_amount'];
                                                $approvedamount = $rows['approved_amount'];
                                                $accoff = $rows['account_officer'];
                                                $approveddate = $rows['approved_date'];
                                                $maturitydate = $rows['maturity_date'];
                                                $totalpayable = $rows['total_payable'];
                                                $interest = $totalpayable - $approvedamount;
                                                $repamt = $rows['repamt'];
                                                $revamt = $rows['revamt'];
                                                $totalPaid=$rows['totalPaid'];
                                                $totalPaid = $totalPaid - $revamt;
                                                $balance = $totalpayable - $totalPaid;
                                                $total1 = $total1 + $totalpayable;
                                                $total2 = $total2 + $totalPaid;
                                                $total = $total + $balance;
                                            ?>
                                            <tr>
                                                <td><?php echo $i;?></td>
                                                <td><?php echo $loancode;?></td>
                                                <td><?php echo $memberid;?></td>
                                                <td><?php echo strtoupper($membername);?></td>
                                                <td><?php echo strtoupper($accoff);?></td>
                                                <td><?php echo $approveddate;?></td>
                                                <td><?php echo $maturitydate;?></td>
                                                <td><?php echo number_format($loanamount,2);?></td> 
                                                <td><?php echo number_format($approvedamount,2);?></td> 
                                                <td><?php echo number_format($totalpayable,2);?></td>
                                                <td><?php echo number_format($totalPaid,2);?></td>
                                                <td><strong><?php echo number_format($balance,2);?></strong></td>
                                            </tr>
                                        <?php $i++; }
                                                ?>
                                            </tbody>
                                            <tfoot>
                                                <th>Total</th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th><?php echo number_format($total1,2);?></th>
                                                <th><?php echo number_format($total2,2);?></th>
                                                <th><?php echo number_format($total,2);?></th>
                                            </tfoot>
                                        </table>
                                    </div>

                                            </div>
                                    

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