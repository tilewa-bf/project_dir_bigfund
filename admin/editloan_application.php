<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
$mid=$lid=$memberid="";
if(isset($_GET['mid'])){
    $mid = $_GET['mid'];
    $_SESSION['id'] = $mid;
}
if(isset($_GET['lid'])){
    $lid = $_GET['lid'];
}

//Query get member data
$querymember = mysqli_query($conn,"SELECT * FROM member WHERE member_id='$mid'");
$memberdata= mysqli_fetch_assoc($querymember);
$dbmid =  $memberdata['member_id'];
$dbsurname =  $memberdata['surname'];
$dbfirstname =  $memberdata['firstname'];
$dbothername =  $memberdata['othername'];
$dbphone =  $memberdata['phone'];
$dbemail =  $memberdata['email'];

//Query to get loan details
$dbtenor=$dbincome=$dbappamount=$dbloanpurpose=$dbappdate="";
$queryloan = mysqli_query($conn,"SELECT * FROM loan_request WHERE loan_id='$lid'");
$loandata= mysqli_fetch_assoc($queryloan);
if(isset($loandata['loan_code'])){
    $dbloancode =  $loandata['loan_code'];    
}
if(isset($loandata['tenor'])){
    $dbtenor =  $loandata['tenor'];    
}
if(isset($loandata['income'])){
    $dbincome =  $loandata['income'];    
}
if(isset($loandata['applied_amount'])){
    $dbappamount =  $loandata['applied_amount'];    
}
if(isset($loandata['loan_purpose'])){
    $dbloanpurpose =  $loandata['loan_purpose'];    
}
if(isset($loandata['app_date'])){
    $dbappdate =  $loandata['app_date'];    
}

$tenor=$loanpurpose=$income=$appliedamount=$appdate="";

if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){

        //Loan Information
$tenor = test_input($_POST['tenor']);
if(empty($_POST['income'])){
    $errors = "Income is empty";
}else{
    $income = $_POST['income'];
    $income = str_replace(',', '', $income);
    if(is_numeric($income)){
        $income = $income;
    }else{
        $errors = "Income Not Numeric";
    }
}
$appliedamount = $_POST['appliedamount'];
$appdate = test_input($_POST['appdate']);
$loanpurpose = test_input($_POST['loanpurpose']);
$loanpurpose=mysqli_real_escape_string($conn,$loanpurpose);

if(isset($errors)){
    $msg = $errors;
    $alerttype = "danger";
}else{
    $sql  = "UPDATE loan_request SET tenor='$tenor',income='$income',applied_amount='$appliedamount',app_date='$appdate',loan_purpose='$loanpurpose'";

    $query = mysqli_multi_query($conn,$sql) or die($sql);
    if($query){
        $alerttype="success";
        echo "<script>
            window.alert('Loan Application Updated Successfully!');
            window.location.href='edit_loan_app.php';
        </script>";
        // $msg = "Loan Application Successful Updated";
    }else{
        $msg = mysqli_error($conn);
    }

}


}
}

?>
<!doctype html>
<html lang="en">



<head>

    <meta charset="utf-8" />
    <title>Bigfund | Loan Application </title>
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

        <?php //include "navigation.php";?>




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

                                            <h4 class="mb-sm-0 font-size-18">Loan Application

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
                                        <h4 class="card-title mb-4">Applicant Data</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-surname-input" class="form-label">Surname</label>
                                                        <input readonly value="<?php echo $dbsurname;?>" type="text" name="surname" class="form-control" id="formrow-surname-input" placeholder="Enter your Surname" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">First name</label>
                                                        <input readonly value="<?php echo $dbfirstname;?>" type="text" name="firstname" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                        <input readonly value="<?php echo $dbothername;?>" type="text" name="othername" class="form-control" id="formrow-othername-input" placeholder="Enter your Other name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input readonly value="<?php echo $dbphone;?>" type="text" name="pno" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <hr>
                                            <!--Guarantor Information-->
                                            <!-- <h4 class="card-title mb-4">Guarantor Information</h4>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-name-input" class="form-label">Guarantor Name</label>
                                                        <input value="<?php echo $gname;?>" type="text" name="gname" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                        <input hidden type="text" value="<?php  echo $dbmid;?>" name="memberid">
                                                        <input hidden type="text" value="<?php  echo $dbgroupname;?>" name="groupname">
                                                        <input hidden type="text" value="<?php  echo $dbaccountofficer;?>" name="accountofficer">
                                                        <input hidden type="text" value="<?php  echo $dbphone;?>" name="memphone">
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-gpno-input" class="form-label">Guarantor Phone Number</label>
                                                        <input value="<?php echo $gpno;?>" type="text" name="gpno" class="form-control" id="formrow-gpno-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-relationship-input" class="form-label">Relationship</label>
                                                        <input value="<?php echo $relationship;?>" type="text" name="relationship" class="form-control" id="formrow-relationship-input" placeholder="Enter relationship" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload Guarantor Passport</label>
                                                        <input class="form-control" name="gpassport" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Utility Bill</label>
                                                        <select name="utilitybill" class="form-select">
                                                            <option selected value="Available">Available</option>
                                                            <option value="Not Available">Not Available</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Means of ID</label>
                                                        <select value="<?php echo $mid;?>" name="mid" class="form-select" required>
                                                            <option selected value="Choose Means of ID">Choose Means of ID</option>
                                                            <option value="Driver Licence">Driver's Licence</option>
                                                            <option value="International Passport">International Passport</option>
                                                            <option value="National Identity Number">National Identity Number</option>
                                                            <option value="Voter Card">Voter's Card</option>
                                                            <option value="Not Available">Not Available</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-midno-input" class="form-label">Means of ID Number</label>
                                                        <input value="<?php echo $midno;?>" type="text" name="midno" class="form-control" id="formrow-midno-input" placeholder="Enter MID number"required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-occupation-input" class="form-label">Guarantor Occupation</label>
                                                        <input value="<?php echo $occupation;?>" type="text" name="occupation" class="form-control" id="formrow-occupation-input" placeholder="Enter Occupation" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div style="display: none;" class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload Means of ID</label>
                                                        <input class="form-control" name="gmid" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Guarantor Address</label>
                                                        <input value="<?php echo $gaddress;?>" type="text" name="gaddress" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
                                                    </div>
                                                </div>
                                            </div> -->
                                            <hr>
                                            <!--Loan Information-->
                                            <h4 class="card-title mb-4">Loan Information</h4>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Loan Type/Tenor</label>
                                                        <select name="tenor" class="form-select">
                                                            <option selected value="<?php echo $dbtenor;?>"><?php echo $dbtenor;?></option>
                                                            <option selected value="Daily">Daily</option>
                                                            <option value="Weekly">Weekly</option>
                                                            <option value="Monthly">Monthly</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-income-input" class="form-label">Borrower's Salary/Income </label>
                                                        <input value="<?php echo $dbincome;?>" type="text" name="income" class="form-control" id="input" placeholder="Enter Borrower's Salary/Income" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Applied Amount</label>
                                                        <select name="appliedamount" class="form-select">
                                                            <option value="<?php echo $dbappamount;?>"><?php echo $dbappamount;?></option>
                                                            <?php 
                                                            $am = 20000;
                                                                while($am <= 200000){?>
                                                                    <option value="<?php echo $am;?>"><?php echo number_format($am,2);?></option>
                                                              <?php $am+= 10000;} ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="example-date-input">App. Date</label>
                                                            <input value="<?php echo $dbappdate;?>" name="appdate" class="form-control" type="date" 
                                                                id="example-date-input" required>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-loanpurpose-input" class="form-label">Purpose of Loan</label>
                                                        <input value="<?php echo $dbloanpurpose;?>" type="text" name="loanpurpose" class="form-control" id="formrow-nok-name-input" placeholder="Purpose of Loan" required>
                                                    </div>
                                                </div>
                                                

                                                <!-- <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-appliedamount-input" class="form-label">Applied Amount</label>
                                                        <input value="<?php echo $appliedamount;?>" type="text" name="appliedamount" class="form-control" id="input2" placeholder="Enter Amount" required>
                                                    </div>
                                                </div> -->
                                                <!-- <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Compulsory Sav. </label>
                                                        <input value="<?php echo $compsaving;?>" type="text" name="compsaving" class="form-control" id="input3" placeholder="Enter Amount" required>
                                                    </div>
                                                </div> -->
                                                
                                                <!-- <div class="col-md-4">
                                                    <label for="example-date-input" class="col-md-4 col-form-label">Expiry Date</label>
                                                    <div class="col-md-10">
                                                        <input value="<?php echo $exdate;?>" name="exdate" class="form-control" type="date"
                                                            id="example-date-input" required>
                                                    </div>
                                                </div> -->
                                            </div>
                                           
                                            <div style="margin-top: 20px;">
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Update</button>
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

                            <?php mysqli_close($conn); ?>

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
            <script>
               input.addEventListener('keyup', function(event) {
                event.target.value = event.target.value
                .replace(/\D/g, '')
                .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
            });

               input2.addEventListener('keyup', function(event) {
                event.target.value = event.target.value
                .replace(/\D/g, '')
                .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
            });

            input3.addEventListener('keyup', function(event) {
                event.target.value = event.target.value
                .replace(/\D/g, '')
                .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
            });
        </script>
    
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>

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
        


        <!-- jquery step -->
        <script src="assets/libs/jquery-steps/build/jquery.steps.min.js"></script>

        <!-- form wizard init -->
        <script src="assets/js/pages/form-wizard.init.js"></script>
        <script src="assets/js/app.js"></script>
        <script src="assets/js/pages/addcomma.js"></script>

    </body>
    </html>