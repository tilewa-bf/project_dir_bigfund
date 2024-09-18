<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Loan Repayment Status </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <!-- <link rel="shortcut icon" href="assets/images/favicon.ico"> -->
        <link rel="icon" type="image/x-icon" href="assets/images/bigfund.png">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner-chase">
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                    <div class="chase-dot"></div>
                </div>
            </div>
        </div>

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <?php include "navigation.php";?>
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        <!--
                        <?php if(isset($msg)){?> <div style="width:100%;height:50px;background:LightGreen;line-height:50px;color:white;text-align:center"><?php echo $msg;?></div> <?php } ?>-->

                        <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                            <?php echo $msg;?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div> <?php } ?>

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4 class="mb-sm-0 font-size-18">Pending Loan Request</h4>

                                    <!--<div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Member Account Creation</li>
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
                                        <!-- <h4 class="card-title mb-4">Pending Loan Request</h4>
                                        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div style="margin-top: 20px;" class="row">
                                                <div class="col-xl-3">
                                                    <select name="tenor" id="formrow-inputState" class="form-select" required>
                                                                <option value="">Select Loan Type</option>
                                                                <?php 
                                                                $sql ="SELECT * FROM loan_tenor_tbl WHERE status='Active'";
                                                                $result= mysqli_query($conn,$sql);
                                                                while($rows = mysqli_fetch_assoc($result)){
                                                                ?>
                                                                <option value="<?php echo $rows['tenor_name'];?>"><?php echo $rows['tenor_name'];?></option>
                                                                <?php }
                                                                ?>     
                                                    </select>
                                                </div>
                                                
                                                <div class="col-xl-3">
                                                        <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">
                                                        <i class="bx bxs-report font-size-16 align-middle me-2"></i> View Report</button>
                                                </div>
                                            </div>
                                        <div class="row" style="margin-top:50px;"> -->
                                        <table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                                    <thead>
                                                        <tr>
                                                            <th>SN</th>
                                                            <th>Loan Type</th>
                                                            <th>Loan Number</th>
                                                            <th>Member Name</th>
                                                            <th>Application Date</th>
                                                            <th>Applied Amount</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <?php
                                                        $i=1;
                                                        // if($_SERVER["REQUEST_METHOD"]=="POST"){
                                                        //     if(isset($_POST['submit'])){
                                                        //       $tenor = $_POST['tenor'];
                                                        $sql ="SELECT * FROM loan_request WHERE status='pending' AND status2!='decline'";
                                                        $result2 = mysqli_query($conn,$sql);
                                                        while($rows = mysqli_fetch_assoc($result2)){
                                                            $loanid = $rows['loan_id'];
                                                            $loancode = $rows['loan_code'];
                                                            $membername = $rows['member_name'];
                                                            $memberid = $rows['member_id'];
                                                            $appdate = $rows['app_date'];
                                                            $appliedamount = $rows['applied_amount'];
                                                            $tenor = $rows['tenor'];
                                                            ?>
                                                            <tr>
                                                                <td><?php echo $i;?></td>
                                                                <td><?php echo $tenor;?></td>
                                                                <td><?php echo $loancode;?></td>
                                                                <td><?php echo $membername;?></td>
                                                                <td><?php echo $appdate;?></td>
                                                                <td><?php echo number_format($appliedamount,2);?></td>
                                                                <td>
                                                                <?php 
                                                                    if($usertype=='Credit Officer'){
                                                                        $userpermission = "np";
                                                                    }else{
                                                                        $userpermission = "";
                                                                    }
                                                                    ?>
                                                                    <a href="view-loanrequest.php?lid=<?php echo $loanid;?>&mid=<?php echo $memberid;?>"><button type="button" class="btn btn-primary btn-sm">View  Details</button></a>
                                                                    <a id="<?php echo $userpermission;?>" href="javascript:deleteloanrequest(<?php echo $rows['loan_id']; ?>)"><button class="btn btn-warning btn-sm">Decline</button></a>
                                                                    <a id="<?php echo $userpermission;?>" href="approve-loan.php?lid=<?php echo $loanid;?>&mid=<?php echo $memberid;?>"><button type="button" class="btn btn-success btn-sm">Approve</button></a>
                                                                </td>
                                                            </tr>
                                                            <?php $i++; }
                                                            ?>
                                                        </tbody>

                                                    </table>
                                    </div>
                                    </div>
                                        </form>
                                        <br>
                                        <!-- <div id="txtHint"></div> -->
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                        <?php mysqli_close($conn);?>

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
        
        <!--Decline Loan request-->
        <script>
                function deleteloanrequest(id){
                    var decline = prompt("Are you sure you want to decline this Loan Request. If Yes, Enter the reason below.","Terms and Conditions Not Met.")
                    if(decline!=null && decline!=""){
                        window.location.href='deleteloanrequest.php?deleteloanrequest='+id+'&'+'input='+decline;
                    }
                }
        </script>    
        
        <script>
        function showLoanRequest(str) {
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
            xmlhttp.open("GET","getloanrepstatus.php?q="+str,true);
            xmlhttp.send();
          }
        }
        </script>

    </body>


</html>
