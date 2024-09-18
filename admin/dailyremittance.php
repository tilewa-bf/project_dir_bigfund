    <?php
    include "../db.php";
    include "../auth.php";
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8" />
            <title>Bigfund | Expected Weekly Remittance by Account officer</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
            <meta content="Atansuyi Joshua" name="author" />

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

                                            <h4 class="card-title" style="margin-top:30px;margin-bottom: -20px;">Expected Daily Remittance by Account Officer</h4><br/>
                                            
                                                <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div style="margin-top: 20px;" class="row">
                                                <div class="col-xl-3">
                                                    <select name="fullname" id="formrow-inputfullname" class="form-select" required>
                                                                <option value="">Select </option>
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
                                                <th>S/N</th>
                                                <th>MEMBER ID</th>
                                                <th>LOAN CODE</th>
                                                <th>NAME</th>
                                                <th>ACCOUNT OFFICER</th>
                                                <th>APPROVED AMOUNT</th>
                                                <th>DAILY REP.</th>      
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php
                                            $i = 1;
                                            $texprep=0;
                                            $total = 0;
                                            $tp=0;
                                            $balance = 0;
                                            $wkr=0;
                                            $remtotal=0;

                                            if($_SERVER["REQUEST_METHOD"]=="POST"){
                                                  if(isset($_POST['submit'])){
                                                    $fullname = $_POST['fullname'];

                                                    $sql = "SELECT member_id,member_name, group_name,loan_code, account_officer,approved_amount, total_payable as tp, SUM(repayment_amount) as rep, SUM(reverseamount), total_payable - (SUM(repayment_amount)-SUM(reverseamount)) as balance FROM rep_tbl WHERE tenor='DAILY' AND status!='pending' AND account_officer='$fullname' GROUP BY loan_code HAVING balance <>0;";
                                                    $query = mysqli_query($conn,$sql);
                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $fullname=$rows['member_name'];
                                                        $approvedamount = $rows['approved_amount'];
                                                        if($approvedamount>='1' && $approvedamount<='30000'){
                                                            $dr = 1500;
                                                        }elseif($approvedamount>='30001' && $approvedamount<='50000'){
                                                            $dr = 2500;
                                                        }elseif($approvedamount>='50001' && $approvedamount<='70000'){
                                                            $dr = 3500;
                                                        }elseif($approvedamount>='70001' && $approvedamount<='80000'){
                                                            $dr = 4000;
                                                        }elseif($approvedamount>='80001' && $approvedamount<='90000'){
                                                            $dr = 4500;
                                                        }elseif($approvedamount>='90001' && $approvedamount<='100000'){
                                                            $dr = 5000;
                                                        }elseif($approvedamount>='100001' && $approvedamount<='120000'){
                                                            $dr = 6000;
                                                        }
                                                        // elseif($approvedamount>='150001' && $approvedamount<='200000'){
                                                        //     $wkr = 10400;
                                                        // }

                                                        $remtotal=$remtotal+$dr;
                                                ?>
                                            <tr>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo $i; ?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo $rows['member_id'];?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo $rows['loan_code'];?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo strtoupper($fullname); ?></td>
                                                <td><?php echo strtoupper($rows['account_officer']); ?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo number_format($approvedamount,2); ?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo number_format($dr,2); ?></td>
                                            </tr>
                                        <?php $i++; }}}
                                                ?>
                                            </tbody>
                                            <tfoot>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th>TOTAL</th>
                                                <th style="font-weight: bold;font-size: 14px;"><?php echo number_format($remtotal,2);?></th>
                                            </tfoot>
                                        </table>
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

            <script>
            function showMember(str) {
              if (str == "") {
                document.getElementById("txtHint").innerHTML = "";
                return;
              } else {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("txtHint").innerHTML = this.responseText;
                  }
                };
                xmlhttp.open("GET","getgroupmember.php?q="+str,true);
                xmlhttp.send();
              }
            }
            </script>
    </body>
    </html>