<?php
include "../db.php";
include "../auth.php";

//Get loan id
$tid ="";
if(isset($_GET['tid'])){
    $tid = $_GET['tid'];
}

//Query to get Loan tenor details
$id = $dbtenorname = $dbtenorcode = $dbtenorint = $dbloantenor = $dbcreationdate = $dbstatus = "";
$loantenorquery = mysqli_query($conn,"SELECT * FROM loan_tenor_tbl WHERE tenor_id='$tid'");
$rows = mysqli_fetch_assoc($loantenorquery);
if(isset($rows)){
    $id = $rows['tenor_id'];
    $dbtenorname = $rows['tenor_name'];
    $dbtenorcode = $rows['tenor_code'];
    $dbtenorint = $rows['loan_tenor_int'];
    $dbloantenor = $rows['loan_tenor'];
    $dbcreationdate = $rows['creation_date'];
    $dbstatus = $rows['status'];
}

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

//Code to Add group
if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){

        //$date = date('Y-m-d');

        $tid = test_input($_POST['id']);

        if(empty($_POST['tn'])){
            $errors = "Tenor Name is empty";
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $tn = test_input($_POST['tn']);
            $tn = strtoupper($tn);
        }
        if(empty($_POST['tc'])){
            $errors = "Tenor Code is empty";
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $tc = test_input($_POST['tc']);
            $tc = strtoupper($tc);
        }
        if(empty($_POST['ti'])){
            $errors = "Tenor Interest is empty";
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $ti = round(test_input($_POST['ti']),3);
        }
        if(empty($_POST['loantenor'])){
            $errors = "Savings Code is empty";
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $loantenor = test_input($_POST['loantenor']);
            $loantenor = strtoupper($loantenor);
        }
        if($_POST['status']=="Choose Status"){
            $errors = "Select Status";
        }else{
            $status = test_input($_POST['status']);
        }
        // date_default_timezone_set("Africa/Lagos");
        $updated_date = date('Y-m-d');
        $updated_dt = date('Y-m-d h:i:sa');
        // if(empty($_POST['leadernumber'])){
        //     $errors = "Leader Number is empty";
        //     $alerttype= "danger";
        //     $icon = "block-helper";
        // }else{
        //     $leadernumber = test_input($_POST['leadernumber']);
        // }
        // if($_POST['accoff']=="Choose Account Officer"){
        //     $errors = "Select Account Officer";
        // }else{
        //     $accoff = test_input($_POST['accoff']);
        // }
        // if($_POST['status']=="Choose Status"){
        //     $errors = "Select Status";
        // }else{
        //     $status = test_input($_POST['status']);
        // }

        if(isset($errors)){
            $msg = $errors;
            $alerttype= "danger";
            $icon = "block-helper";
        }else{ 
            $sql2 = "UPDATE loan_tenor_tbl  SET loan_tenor_int='$ti', loan_tenor='$loantenor', status='$status',updated_by='$dbname',updated_date='$updated_date',updated_dt='$updated_dt' WHERE tenor_id='$tid'";

            $query2 = mysqli_query($conn,$sql2) or die($sql2);
            if($query2){
                
                $alerttype= "success";
                $icon = "check-all";
                $msg = "Loan Tenor Updated Successful.";
                header("location:approve_tenor.php");
            }else{
                $msg = "Loan Tenor Not Successful Updated";
            }
        
        }
        
    }
}



?>

<!doctype html>
<html lang="en">



<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Member Group Creation </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/bigfund.png">

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
                        
                        
                        <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                        <i class="mdi mdi-<?php echo $icon;?> me-2"></i><?php echo $msg;?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div><?php } ?>

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4 class="mb-sm-0 font-size-18">SAVINGS ACCOUNT CREATION</h4>

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
                                        <h4 class="card-title mb-4">SAVINGS ACCOUNT CREATION</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            
                                            <!--Group Creation Form-->
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-group-input" class="form-label">TENOR NAME</label>
                                                        <input readonly value="<?php echo $dbtenorname;?>" type="text" name="tn" class="form-control" id="formrow-groupname-input" placeholder="e.g. WEEKLY" required>
                                                        <input hidden value="<?php echo $id;?>" type="text" name="id">
                                                        <input hidden value="<?php echo $dbstatus;?>" type="text" name="status">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-leadername-input" class="form-label">TENOR CODE</label>
                                                        <input readonly value="<?php echo $dbtenorcode;?>" type="text" name="tc" class="form-control" id="formrow-leadername-input" placeholder="e.g. WL" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-leadername-input" class="form-label">LOAN INT</label>
                                                        <input value="<?php echo $dbtenorint;?>" type="text" name="ti" class="form-control" id="formrow-leadername-input" placeholder="e.g. 0.05" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-leadername-input" class="form-label">LOAN TENOR</label>
                                                        <input value="<?php echo $dbloantenor;?>" type="text" name="loantenor" class="form-control" id="formrow-leadername-input" placeholder="e.g. 15 Weeks" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-status" class="form-label">Status</label>
                                                        <select name="status" id="formrow-group" class="form-select">
                                                            <option value="Choose Status" selected>Choose Status</option>
                                                            <option selected="" value="<?php echo $dbstatus;?>"><?php echo $dbstatus;?></option>
                                                            <option value="Active">Active</option>
                                                            <option value="Inactive">Inactive</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-pno-input" class="form-label">Leader Phone No.</label>
                                                        <input type="text" name="leadernumber" class="form-control" id="formrow-pno-input" placeholder="Enter Leader Phone Number" maxlength="11" required>
                                                    </div>
                                                </div> -->
                                                <!-- <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-accoff" class="form-label">Account Officer</label>
                                                        <select name="accoff" id="formrow-group" class="form-select" required>
                                                            <option value="" selected>Choose Account Officer</option>
                                                            <?php 
                                                            $sql ="SELECT firstname,lastname FROM staff_tbl";
                                                            $result= mysqli_query($conn,$sql);
                                                            while($rows = mysqli_fetch_assoc($result)){
                                                            ?>
                                                            <option value="<?php echo $rows['lastname']." ".$rows['firstname'];?>"><?php echo $rows['lastname']." ".$rows['firstname'];?></option>
                                                            <?php }
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div> -->
                                                <!-- <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-status" class="form-label">Status</label>
                                                        <select name="status" id="formrow-group" class="form-select">
                                                            <option value="Choose Status" selected>Choose Status</option>
                                                            <option value="Active">Active</option>
                                                            <option value="Inactive">Inactive</option>
                                                        </select>
                                                    </div>
                                                </div> -->
                                            </div>
                                           
                                            
                                            </div>
                             
                                            <div>
                                                <button style="margin:0 0 8px 20px;" type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Update</button>
                                            </div>
                                        </form>

                                        

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

        <!-- jquery step -->
        <script src="assets/libs/jquery-steps/build/jquery.steps.min.js"></script>

        <!-- form wizard init -->
        <script src="assets/js/pages/form-wizard.init.js"></script>

        <script src="assets/js/app.js"></script>


    </body>


</html>
