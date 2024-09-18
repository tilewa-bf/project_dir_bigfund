<?php
include "../db.php";
include "../auth.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
        <title>Bigfund | Member with Balance Report</title>
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
<body>

<div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <?php include "reportheader2.php"?>

                                        <h4 class="card-title" style="margin-top:30px;margin-bottom: -20px;">Members with Zero Balance Report</h4><br/>           
                                            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div style="margin-top: 20px;" class="row">
                                                    <!-- <div class="col-xl-3">
                                                        <select name="fullname" id="formrow-inputState" class="form-select" required>
                                                                    <option value="">Select Loan Account Officer</option>
                                                                    <?php 
                                                                    $sql ="SELECT * FROM staff_tbl WHERE status='undelete'";
                                                                    $result= mysqli_query($conn,$sql);
                                                                    while($rows = mysqli_fetch_assoc($result)){
                                                                        $lastname=$rows['lastname'];
                                                                        $firstname=$rows['firstname'];
                                                                        $fullname=$lastname." ".$firstname;
                                                                    ?>
                                                                    <option value="<?php echo ucwords($fullname);?>"><?php echo ucwords($fullname);?></option>
                                                                    <?php }
                                                                    ?>     
                                                        </select>
                                                    </div> -->
                                                    <!-- <div class="col-xl-3">
                                                        <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">
                                                        <i class="bx bxs-report font-size-16 align-middle me-2"></i> View Report</button>
                                                    </div> -->
                                            </div>
                                        </form>
                                        <div class="row" style="margin-top:50px;">
                                        <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>SN</th>
                                                <th>Account Number</th>
                                                <th>Account Name</th>
                                                <th>Account Officer</th>
                                                <!-- <th>Total Withdrawal</th>
                                                <th>Total Deposit</th> -->
                                                <th>Balance</th>
                                                <!-- <th>Check</th>  -->                    
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php
                                            $i = 1;
                                            $total = 0;
                                            $balance = 0;
                                            //if($_SERVER["REQUEST_METHOD"]=="POST"){
                                                   //if(isset($_POST['submit'])){
                                                     
                                                    $sql ="SELECT account_number,cust_name,account_officer,checked, SUM(COALESCE(CASE WHEN entry_type = 'credit'THEN amount END,0)) AS total_credits , SUM(COALESCE(CASE WHEN entry_type = 'debit' THEN amount END,0)) AS total_debits , SUM(COALESCE(CASE WHEN entry_type = 'credit' AND status='Confirmed' THEN amount END,0)) - SUM(COALESCE(CASE WHEN entry_type = 'debit' AND status='Confirmed' THEN amount END,0)) AS balance FROM deposit_savings_tbl WHERE account_number NOT LIKE '%100467%' AND account_number NOT LIKE '%100999%' GROUP BY account_number HAVING balance = 0";
                                                    $query = mysqli_query($conn,$sql);
                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $accno = trim($rows['account_number']);
                                                        $accname = $rows['cust_name'];
                                                        $accoff = $rows['account_officer'];
                                                        $totaldebit = $rows['total_debits'];
                                                        $totalcredit = $rows['total_credits'];
                                                        $balance = $rows['balance'];
                                                        $total = $total + $balance;
                                                        $check = $rows['checked'];
                                                        if($check=='checked'){
                                                            $color='green';
                                                            $text = 'checked';
                                                        }else{
                                                            $color='orange';
                                                            $text='unchecked';
                                                        }         
                                            ?>
                                            <tr>
                                                <td><?php echo $i;?></td>
                                                <td><?php echo $accno;?></td>
                                                <td><?php echo $accname;?></td>
                                                <td><?php echo $accoff;?></td>
                                                <!-- <td><?php echo number_format($totaldebit,2);?></td>
                                                <td><?php echo number_format($totalcredit,2);?></td> -->
                                                <td><?php echo number_format($balance,2);?></td>      
                                                <!-- <td><a href="javascript:checkds(<?php echo $accno;?>)"><button id="checker" style="background: <?php echo $color;?>;"><?php echo $text;?></button></a>
                                                </td> -->
                                            </tr>
                                        <?php $i++; }
                                                //}}?>
                                            </tbody>
                                            <tfoot>
                                                <th>Total</th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th><?php echo number_format($total,2);?></th>
                                                <!-- <th></th> -->
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

        <!--Check Daily Savings Script-->
        <script>
            function  checkds(id){
                if(confirm("Daily Savings WTD Checker!")){
                    window.location.href  = "checkdailysavings2.php?checkds="+id;
                }
            }
        </script>
        <script>
            function  unchecked(){
                if(confirm("Are you sure you want to unchecked all!")){
                    window.location.href  = "uncheckeddailysaving2.php";
                }
            }
        </script>
</body>
</html>