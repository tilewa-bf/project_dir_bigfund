<?php

include "../db.php";
include "../auth.php";


function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
$sid ="";
if(isset($_GET['sid'])){
    $sid = $_GET['sid']; 
}
//Query to select staff data and guarantor
$staffdata  = mysqli_query($conn, "SELECT * FROM staff_tbl WHERE id='".$sid."'") or die(mysqli_error($conn));
$rows  = mysqli_fetch_assoc($staffdata);
if(isset($rows)){
    $stafflastname = $rows['lastname'];
$stafffirstname = $rows['firstname'];
$staffmiddlename = $rows['middlename'];
$stafffullname= $row['lastname']." ".$rows['firstname']." ". $rows['middlename'];
$staff_id = $rows['id'];
$staffnumber = $rows['staff_id'];
$staffusertype = $rows['user_type'];
$staffphone = $rows['phone'];
$staffgender = $rows['gender'];
$staffmarital = $rows['marital_status'];
$staffdob = $rows['dob'];
$staffqualification = $rows['qualification'];
$staffstateoforigin = $rows['state_of_origin'];
$staffmidtype = $rows['midtype'];
$staffmidno = $rows['midno'];
$staffbvn = $rows['bvn'];
$staffstate =  $rows['state'];
$staffaddress = $rows['address'];
$staffjurisdiction = $rows['jurisdiction'];
$gn = $rows['guarantor_name'];
$gpn = $rows['guarantor_phone'];
$grel = $rows['relationship'];
$gpassport = $rows['admin_passport'];
$gaddress = $rows['guarantor_address'];    
}

        


    //Code to update password
        if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST['submitpassword'])){

        
        $oldpwd = test_input($_POST['oldpwd']);
        $newpwd = test_input($_POST['newpwd']);
        if(strlen($newpwd) < 6){
            $msg = "Password length must be greater than 6!";
            $alerttype="danger";
        }
        $cpwd = test_input($_POST['cpwd']);
        if(strlen($cpwd) < 6){
            $msg = "Password length must be greater than 6!";
            $alerttype="danger";
        }

        $sql = "SELECT password FROM staff_tbl WHERE staff_id='".$staffid."'";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        $password = $row['password'];

        if($oldpwd==$password){
            if(strlen($newpwd)>=6){
                if($newpwd==$cpwd){
                $sql = "UPDATE staff_tbl SET password='".$newpwd."' WHERE staff_id='".$staffid."'";
                $result = mysqli_query($conn,$sql);
                $msg = "Your password has been Updated Successful";
                $alerttype = "success";
                }else{
                $msg="Password Mismatch";
                $alerttype="warning";
                }
            }else{
                $msg="Password must be equal or greater than 6!";
            }
            
            }else{
                $msg = "You have entered wrong old password";
                $alerttype="warning";
        }
        
 }}

?>

<!doctype html>
<html lang="en">


<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Staff Profile | </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="ThriftPay" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/bigfund.png">

        <link href="assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <?php echo include "navigation.php";?>


            

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
                                    <h4 class="mb-sm-0 font-size-18">PROFILE UPDATE</h4>
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Ecommerce</a></li>
                                            <li class="breadcrumb-item active"></li>
                                        </ol>
                                    </div>-->

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="checkout-tabs">
                                <div class="row">
                                    <div class="col-xl-2 col-sm-3">
                                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            
                                            <a class="nav-link" id="v-pills-confir-tab" data-bs-toggle="pill" href="#v-pills-confir" role="tab" aria-controls="v-pills-confir" aria-selected="false">
                                                <i class= "bx bx-badge-check d-block check-nav-icon mt-4 mb-2"></i>
                                                <p class="font-weight-bold mb-4">Change Password</p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-xl-10 col-sm-9">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="tab-content" id="v-pills-tabContent">
                                                    <div class="tab-pane fade show active" id="v-pills-shipping" role="tabpanel" aria-labelledby="v-pills-shipping-tab">    
                                                    </div>
                                                     <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?>" role="alert">
                                                                    <?php echo $msg;?></a>
                                                                    </div>
                                                                    <?php

                                                                    }?>

                                                    
                                                    <div class="tab-pane fade" id="v-pills-confir" role="tabpanel" aria-labelledby="v-pills-confir-tab">
                                                        <div class="card shadow-none border mb-0">
                                                            <div class="card-body">
                                                            
                                                                <h4 class="card-title mb-4">Change Password</h4>
    
                                                                <div class="p-4 border">
                                                                <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>">
                                                                    
                                                                    <div class="row">
                                                                        <div class="col-lg-4">
                                                                            <div class="form-group mt-4 mb-0">
                                                                                <label for="cardnameInput">Old Password</label>
                                                                                <input type="password" class="form-control" name="oldpwd" id="cardnameInput">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-4">
                                                                            <div class="form-group mt-4 mb-0">
                                                                                <label for="expirydateInput">New Password</label>
                                                                                <input type="password" class="form-control" name="newpwd" id="expirydateInput">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-4">
                                                                            <div class="form-group mt-4 mb-0">
                                                                                <label for="cvvcodeInput">Confirm Password</label>
                                                                                <input type="password" class="form-control" name="cpwd" id="cvvcodeInput">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <br/><br/>
                                                                    <div class="row">
                                                                        <div class="col-lg-4">
                                                                            <button type="submit" name="submitpassword" class="btn btn-info">Change Password</button>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mt-4">
                                            <div class="col-sm-6">
                                                <a href="dashboard.php" class="btn text-muted d-none d-sm-inline-block btn-link">
                                                    <i class="mdi mdi-arrow-left me-1"></i> Back to Dashboard</a>
                                            </div> <!-- end col -->
                                            <!--
                                            <div class="col-sm-6">
                                                <div class="text-end">
                                                    <a href="ecommerce-checkout.html" class="btn btn-success">
                                                        <i class="mdi mdi-truck-fast me-1"></i> Proceed to Shipping </a>
                                                </div>
                                            </div> <!-- end col -->
                                        </div> <!-- end row -->
                                    </div>
                                </div>
                            </div>
                            <!-- end row -->

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                <?php mysqli_close($conn);?>
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

        <script src="assets/libs/select2/js/select2.min.js"></script>

        <!-- init js -->
        <script src="assets/js/pages/ecommerce-select2.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>

        
    </body>


</html>
