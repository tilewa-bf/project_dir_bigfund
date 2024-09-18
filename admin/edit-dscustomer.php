<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
$cid ="";
if(isset($_GET['cid'])){
    $cid = $_GET['cid']; 
}
//Query to select member data
$memberdata  = mysqli_query($conn, "SELECT * FROM dailysaving WHERE cust_id='".$cid."'") or die(mysqli_error($conn));
$rows  = mysqli_fetch_assoc($memberdata);
$dbcustid = $rows['cust_id'];
$dbcustno = $rows['cust_acc'];
$dbsurname = $rows['surname'];
$dbfirstname = $rows['firstname'];
$dbothername = $rows['othername'];
$dbphone = $rows['phonenumber'];
$dbaccoff = $rows['account_officer'];
$dbgender = $rows['gender'];
$dbregdate = $rows['reg_date'];

//Update personal information
if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){

    $customerid  = test_input($_POST['customerid']);

    /*Member Details*/
    if(!is_numeric($_POST['pno'])){
        $errors = "Phone number must be numeric";
    }else{
        $pno = test_input($_POST['pno']);
    }
    
    if($_POST['gender']==""){
        $errors = "Gender is empty";
    }else{
        $gender = test_input($_POST['gender']);
    }

    if($_POST['accoff']==""){
        $errors = "Account Officer is empty";
    }else{
        $accoff = test_input($_POST['accoff']);
    }

   $upd = date("Y-m-d");

    if(isset($errors)){
        $alerttype="warning";
        $msg = $errors;
    }else{
        $sql= "UPDATE dailysaving SET phonenumber='$pno', gender='$gender', account_officer='$accoff', upd='$upd', updated_by='$dbname' WHERE cust_id = '".$customerid."'";
        $query = mysqli_query($conn,$sql) or die($sql);
        if($query){
            $alerttype = "success";
            $msg = "Profile Updated Successful.";
        }else{
            $alerttype ="warning";
            $msg = "Profile Update Not Successful";
        }
        
    }

}
}




?>

<!doctype html>
<html lang="en">



<head>

    <meta charset="utf-8" />
    <title>Bigfund | Daily Savings Profile | </title>
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
                                        <a class="nav-link active" id="v-pills-shipping-tab" data-bs-toggle="pill" href="#v-pills-shipping" role="tab" aria-controls="v-pills-shipping" aria-selected="true">
                                            <i class= "bx bxs-user d-block check-nav-icon mt-4 mb-2"></i>
                                            <p class="font-weight-bold mb-4">Personal Info</p>
                                        </a>
                                        <!-- <a class="nav-link" id="v-pills-payment-tab" data-bs-toggle="pill" href="#v-pills-payment" role="tab" aria-controls="v-pills-payment" aria-selected="false"> 
                                            <i class= "bx bx-money d-block check-nav-icon mt-4 mb-2"></i>
                                            <p class="font-weight-bold mb-4">Bank Info</p>
                                        </a> -->
                                            <!-- <a class="nav-link" id="v-pills-confir-tab" data-bs-toggle="pill" href="#v-pills-confir" role="tab" aria-controls="v-pills-confir" aria-selected="false">
                                                <i class= "bx bx-badge-check d-block check-nav-icon mt-4 mb-2"></i>
                                                <p class="font-weight-bold mb-4">Change Password</p>
                                            </a> -->
                                        </div>
                                    </div>
                                    <div class="col-xl-10 col-sm-9">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="tab-content" id="v-pills-tabContent">
                                                    <div class="tab-pane fade show active" id="v-pills-shipping" role="tabpanel" aria-labelledby="v-pills-shipping-tab">
                                                        <div>
                                                            <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?>" role="alert">
                                                                <?php echo $msg;?></a>
                                                            </div>
                                                            <?php

                                                        }?>

                                                        <h4 class="card-title">Personal information</h4>
                                                        <p class="card-title-desc">Update your information below</p>
                                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">


                                                            <div class="row">

                                                                <div class="col-md-3">
                                                                    <div class="mb-3">
                                                                        <label for="formrow-surname-input" class="form-label">Surname</label>
                                                                        <input type="text" name="surname" value="<?php echo $dbsurname;?>" class="form-control" id="formrow-surname-input" placeholder="Enter your Surname" required readonly>
                                                                        <input type="text" name="customerid" value="<?php echo $dbcustid;?>" class="form-control" id="formrow-customerid-input" placeholder="" hidden>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="mb-3">
                                                                        <label for="formrow-firstname-input" class="form-label">First name</label>
                                                                        <input type="text" name="firstname" value="<?php echo $dbfirstname;?>" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required readonly>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="mb-3">
                                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                                        <input type="text" name="othername" value="<?php echo $dbothername;?>" class="form-control" id="formrow-othername-input" placeholder="Enter your Other name" required readonly>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="mb-3">
                                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                                        <input type="text" name="pno" value="<?php echo $dbphone;?>" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <div class="mb-3">
                                                                        <label for="formrow-inputState" class="form-label">Gender</label>
                                                                        <select name="gender" id="formrow-inputState" class="form-select">
                                                                            <option value="<?php echo $dbgender;?>"  selected><?php echo $dbgender;?></option>
                                                                            <option>Choose Gender</option>
                                                                            <option value="Male">Male</option>
                                                                            <option value="Female">Female</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <div class="mb-3">
                                                                        <label for="formrow-inputaccountofficer" class="form-label">Account Officer</label>
                                                                        <select name="accoff" id="formrow-inputState" class="form-select">
                                                                            <option value="<?php echo $dbaccoff;?>" selected><?php echo $dbaccoff;?></option>
                                                                            <option value="Choose Account Officer">Choose Account Officer</option>
                                                                            <?php 
                                                                            $sql ="SELECT firstname FROM staff_tbl";
                                                                            $result= mysqli_query($conn,$sql);
                                                                            while($rows = mysqli_fetch_assoc($result)){
                                                                                ?>
                                                                                <option value="<?php echo $rows['firstname'];?>"><?php echo $rows['firstname'];?></option>
                                                                            <?php }
                                                                            ?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="mb-3">
                                                                        <label for="formrow-regdate-input" class="form-label">Reg. Date</label>
                                                                        <input type="date" name="regdate" value="<?php echo $dbregdate;?>" class="form-control" id="example-date-input" readonly>
                                                                    </div>
                                                                </div>

                                                                <div>
                                                                    <div class="row">
                                                                        <div>
                                                                            <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
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
