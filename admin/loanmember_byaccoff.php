<?php
include "../db.php";
include "../auth.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
        <title>Bigfund | Loan Member By Account Officer</title>
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

                                        <h4 class="card-title" style="margin-top:30px;margin-bottom: -20px;">Loam Mem. by Account Officer</h4><br/>
                                        
                                        
                                            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div style="margin-top: 20px;" class="row">
                                                <div class="col-xl-3">
                                                    <select name="fullname" id="formrow-inputState" class="form-select" required>
                                                                <option value="">Select Loan Account Officer</option>
                                                                <?php 
                                                                $sql ="SELECT * FROM staff_tbl WHERE status='undelete' AND status2='Active'";
                                                                $result= mysqli_query($conn,$sql);
                                                                while($rows = mysqli_fetch_assoc($result)){
                                                                    $lastname=$rows['lastname'];
                                                                    $firstname=$rows['firstname'];
                                                                    $fullname=$lastname." ".$firstname;
                                                                ?>
                                                                <option value="<?php echo $fullname;?>"><?php echo $fullname;?></option>
                                                                <?php }
                                                                ?>     
                                                    </select>
                                                </div>

                                                
                                                <div class="col-xl-3">
                                                    
                                                        <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">
                                                        <i class="bx bxs-report font-size-16 align-middle me-2"></i> View Report</button>
                                                   
                                                </div>
                                            </div>
                                        <div class="row" style="margin-top:50px;">
                                        <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                                <thead>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Loan Number</th>
                                                    <th>Member Number</th>
                                                    <th>Member Name</th>
                                                    <!-- <th>Group Name</th> -->
                                                    <th>Account Officer</th>
                                                    <th>Phone Number</th>
                                                    <th>Granted Date</th>
                                                    <th>Expiry Date</th>
                                                    <th>Applied Amount</th>
                                                    <th>Approved Amount</th>
                                                    <th>Total Payable</th>
                                                </tr>
                                                </thead>
            
                                                <tbody>
                                                <?php
                                                
                                                $i=1;
                                                $total=0;
                                                if($_SERVER["REQUEST_METHOD"]=="POST"){
                                                  if(isset($_POST['submit'])){
                                                    $fullname = $_POST['fullname'];
                                                $sql ="SELECT * FROM loan_request WHERE account_officer='$fullname' AND status!='pending' AND status2!='decline' GROUP BY member_id ORDER BY member_name ASC";
                                                $result2 = mysqli_query($conn,$sql);
                                                while($rows = mysqli_fetch_assoc($result2)){
                                                    $loancode = $rows['loan_code'];
                                                    $memberid = $rows['member_id'];
                                                    $membername = $rows['member_name'];
                                                    $memberphone = $rows['member_phone'];
                                                    $groupname = $rows['group_name'];
                                                    $accoff = $rows['account_officer'];
                                                    $gdate = $rows['approved_date'];
                                                    $dbexdate = $rows['maturity_date'];
                                                    $loanamount = $rows['applied_amount'];
                                                    $approvedamount = $rows['approved_amount'];
                                                    $totalpayable = $rows['total_payable'];
                                                    $total+=$totalpayable;
                            
                                                ?>
                                                <tr>
                                                    <td><?php echo $i;?></td>
                                                    <td><?php echo $loancode;?></td>
                                                    <td><?php echo $memberid;?></td>
                                                    <td><?php echo strtoupper($membername);?></td>
                                                    <!-- <td><strong><?php echo $groupname;?></strong></td> -->
                                                    <td><strong><?php echo $accoff;?></strong></td>
                                                    <td><strong><?php echo $memberphone;?></strong></td>
                                                    <td><?php echo $gdate;?></td>
                                                    <td><?php echo $dbexdate;?></td>
                                                    <td><?php echo number_format($loanamount);?></td>
                                                    <td><?php echo number_format($approvedamount);?></td>
                                                    <td><?php echo number_format($totalpayable);?></td>
                                                </tr>
                                            <?php $i++; }}}
                                                    ?>
                                                </tbody>
                                                <tfoot>
                                                    <th></th>
                                                    <th></th>
                                                    <th></th>
                                                    <th></th>
                                                    <!-- <th>Group Name</th> -->
                                                    <th></th>
                                                    <th></th>
                                                    <th></th>
                                                    <th></th>
                                                    <th></th>
                                                    <th>Total</th>
                                                    <th><?php echo number_format($total,2);?></tfoot>?></th>
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