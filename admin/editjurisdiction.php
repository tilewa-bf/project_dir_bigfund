<?php
include "../db.php";
include "../auth.php";


function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$jid="";
if(isset($_GET['jid'])){
    $jid = $_GET['jid']; 
}
//Query to select member data
$jurid=$jurstate=$jurlga=$jurzone=$jurstatus="";
$jurdata  = mysqli_query($conn, "SELECT * FROM jurisdiction WHERE jur_id='".$jid."'") or die(mysqli_error($conn));
$rows  = mysqli_fetch_assoc($jurdata);
if(isset($rows)){
$jurid = $rows['jur_id'];
$jurstate= $rows['state'];
$jurlga = $rows['lga'];
$jurzone = $rows['zone'];
$jurstatus = $rows['status'];
}


if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){

        //creation date
        $date = date_create(null,timezone_open('Africa/Lagos'));
        $date = date_format($date,'Y-m-d');

        $newjurid = $_POST['newjurid'];

        if(empty($_POST['state'])){
            $errors = "State is empty";
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $state = test_input($_POST['state']);
        }
        if(empty($_POST['lga'])){
            $alerttype= "danger";
            $icon = "block-helper";
            $errors = "LGA is empty";
        }else{
            $lga = test_input($_POST['lga']);
        }
        if(empty($_POST['zone'])){
            $alerttype= "danger";
            $icon = "block-helper";
            $errors = "Zone is empty";
        }else{
            $zone = test_input($_POST['zone']);
        }
        
        $status = $_POST['status'];
        
        

        if(isset($errors)){
            $msg = $errors;
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $sql2 = "UPDATE jurisdiction SET zone='".$zone."', status='".$status."',update_by='$dbname', update_dt='$date' WHERE jur_id='".$newjurid."'";
            $query2 = mysqli_query($conn,$sql2) or die(mysqli_error($conn));
            if($query2){
                $alerttype= "success";
                $icon = "check-all";
                $msg = "Jurisdiction Updated.";
                
            }else{
                $msg = "Jurisdiction Update Not Successful";
            }
        }
        }
        
    }

?>

<!doctype html>
<html lang="en">



<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Jurisdiction Creation </title>
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

                                    <h4 class="mb-sm-0 font-size-18">Edit Jurisdiction</h4>

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
                                        <h4 class="card-title mb-4">EDIT JURISDICTION </h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            

                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-state-input" class="form-label">State</label>
                                                        <input readonly value="<?php echo $jurstate;?>" type="text" name="state" class="form-control" id="formrow-state-input" placeholder="Enter State" required>
                                                        <input hidden type="text" value="<?php echo $jurid;?>" name="newjurid">
                                                    </div>
                                                    
                                                </div>
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-lga-input" class="form-label">LGA</label>
                                                        <input readonly value="<?php echo $jurlga;?>" type="text" name="lga" class="form-control" id="formrow-lga-input" placeholder="Enter LGA" required>
                                                    </div>
                                                </div>  
                                            
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">ZONE</label>
                                                        <input value="<?php echo $jurzone;?>" type="text" name="zone" class="form-control" id="formrow-firstname-input" placeholder="Enter Zone" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">Status</label>
                                                        <select name="status" class="form-control" required>
                                                            <option value="">...Select Status...</option>
                                                            <option selected value="<?php echo $jurstatus;?>"><?php echo $jurstatus;?></option>
                                                            <option value="Active">Active</option>
                                                            <option value="Inactive">Inactive</option>
                                                        </select>
                                                    </div>
                                                </div>  
                                                
                                            </div>
                                            
                                           
                                            <!--
                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input type="text" name="pno" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nin-input" class="form-label">National Identification Number(NIN) optional</label>
                                                        <input type="text" name="nin" class="form-control" id="formrow-nin-input" placeholder="Enter your NIN number">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN)</label>
                                                        <input type="text" name="bvn" class="form-control" id="formrow-bvn-input" placeholder="Enter your BVN number" required maxlength="11">
                                                    </div>
                                                </div>
                                                
                                            </div>-->
                                            <!--
                                            <div class="row">
                                                <div class="col-sm-6">
                                                        
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload picture</label>
                                                        <input class="form-control" name="propic" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Account Officer</label>
                                                        <select name="accoff" id="formrow-inputState" class="form-select">
                                                            <option selected>Choose Account Officer</option>
                                                            <option value="Oluwakemi">Oluwakemi</option>
                                                            <option value="Ayomide">Ayomide</option>
                                                            <option value="Samuel">Samuel</option>
                                                            <option value="Abiodun">Abiodun</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <input type="text" name="resadd" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Residential Address" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-businessaddress-input" class="form-label">Business Address</label>
                                                        <input type="text" name="busadd" class="form-control" id="formrow-businessaddress-input" placeholder="Enter your Business Address" required>
                                                    </div>
                                                </div>
                                            </div>-->
                                            
                                            <!--Next of Kin Data-->
                                            <!--
                                            <h4 class="card-title mb-4">Next Of Kin Data</h4>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-name-input" class="form-label">Next of Kin Name</label>
                                                        <input type="text" name="nok-name" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-pno-input" class="form-label">Next of Kin Phone Number</label>
                                                        <input type="text" name="nok-pno" class="form-control" id="formrow-nok-pno-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-relationship-input" class="form-label">Relationship</label>
                                                        <input type="text" name="relationship" class="form-control" id="formrow-relationship-input" placeholder="Enter relationship" required>
                                                    </div>
                                                </div>
                                            </div>-->
                                            <!--
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Next of Kin Address</label>
                                                        <input type="text" name="nok-address" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
                                                    </div>
                                                </div>
                                            </div>-->


                                            <!--<div class="mb-3">
                                                
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="gridCheck">
                                                    <label class="form-check-label" for="gridCheck">
                                                      Check me out
                                                    </label>
                                                </div>
                                            </div>-->
                                            <div>
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                            </div>
                                        </form>

                                        <!--<div id="basic-example">
                                            <!-- Seller Details -->
                                           <!-- <h3>Seller Details</h3>
                                            <section>
                                                <form>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-firstname-input">First name</label>
                                                                <input type="text" class="form-control" id="basicpill-firstname-input">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-lastname-input">Last name</label>
                                                                <input type="text" class="form-control" id="basicpill-lastname-input">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-phoneno-input">Phone</label>
                                                                <input type="text" class="form-control" id="basicpill-phoneno-input">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-email-input">Email</label>
                                                                <input type="email" class="form-control" id="basicpill-email-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="mb-3">
                                                                <label for="basicpill-address-input">Address</label>
                                                                <textarea id="basicpill-address-input" class="form-control" rows="2"></textarea>
                                                                <button type="button" class="btn btn-primary waves-effect waves-light">Primary</button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </form>
                                            </section>

                                            <!-- Company Document --
                                            <h3>Company Document</h3>
                                            <section>
                                                <form>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-pancard-input">PAN Card</label>
                                                                <input type="text" class="form-control" id="basicpill-pancard-input">
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-vatno-input">VAT/TIN No.</label>
                                                                <input type="text" class="form-control" id="basicpill-vatno-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-cstno-input">CST No.</label>
                                                                <input type="text" class="form-control" id="basicpill-cstno-input">
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-servicetax-input">Service Tax No.</label>
                                                                <input type="text" class="form-control" id="basicpill-servicetax-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-companyuin-input">Company UIN</label>
                                                                <input type="text" class="form-control" id="basicpill-companyuin-input">
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6">
                                                            <div class="mb-3">
                                                                <label for="basicpill-declaration-input">Declaration</label>
                                                                <input type="text" class="form-control" id="basicpill-Declaration-input">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </section>

                                            <!-- Bank Details --
                                            <h3>Bank Details</h3>
                                            <section>
                                                <div>
                                                    <form>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-namecard-input">Name on Card</label>
                                                                    <input type="text" class="form-control" id="basicpill-namecard-input">
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Credit Card Type</label>
                                                                    <select class="form-select">
                                                                          <option selected>Select Card Type</option>
                                                                          <option value="AE">American Express</option>
                                                                          <option value="VI">Visa</option>
                                                                          <option value="MC">MasterCard</option>
                                                                          <option value="DI">Discover</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-cardno-input">Credit Card Number</label>
                                                                    <input type="text" class="form-control" id="basicpill-cardno-input">
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-card-verification-input">Card Verification Number</label>
                                                                    <input type="text" class="form-control" id="basicpill-card-verification-input">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="mb-3">
                                                                    <label for="basicpill-expiration-input">Expiration Date</label>
                                                                    <input type="text" class="form-control" id="basicpill-expiration-input">
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </form>
                                                  </div>
                                            </section>

                                            <!-- Confirm Details --
                                            <h3>Confirm Detail</h3>
                                            <section>
                                                <div class="row justify-content-center">
                                                    <div class="col-lg-6">
                                                        <div class="text-center">
                                                            <div class="mb-4">
                                                                <i class="mdi mdi-check-circle-outline text-success display-4"></i>
                                                            </div>
                                                            <div>
                                                                <h5>Confirm Detail</h5>
                                                                <p class="text-muted">If several languages coalesce, the grammar of the resulting</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>-->

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

<!-- Mirrored from themesbrand.com/skote/layouts/form-wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Mar 2021 14:29:43 GMT -->
</html>
