<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$fullname=$pno=$gender=$category=$accoff=$resadd=$nok_name=$nok_pno=$relationship=$nok_address=$regdate=$upd="";

if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){

        $memberid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        $regdate = date("Y-m-d");
       
       /*Member Details*/
        $fullname = test_input($_POST['fullname']);
        

        if(!is_numeric($_POST['pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $pno = test_input($_POST['pno']);
        }

        if($_POST['gender']=="Choose Gender"){
            $errors = "Select Gender";
        }else{
            $gender = test_input($_POST['gender']);
        }

        if($_POST['category']=="Choose Category"){
            $errors = "Select Category";
        }else{
            $category = test_input($_POST['category']);
        }

        if($category=='Category 1'){
            $ppd = 100;
            $mp = 3100;
        }
        if($category=='Category 2'){
            $ppd = 150;
            $mp = 4650;
        }
        if($category=='Category 3'){
            $ppd = 200;
            $mp = 6200;
        }
        if($category=='Category 4'){
            $ppd = 400;
            $mp = 9300;
        }

        if(isset($_POST['accoff'])){
            if($_POST['accoff']=="Choose Account Officer"){
            $errors = "Select Account Officer";
            }else{
                $accoff = test_input($_POST['accoff']);
            }
        }

        $resadd= test_input($_POST['resadd']);
        
        /*Next of Kin Details*/
        $nok_name= test_input($_POST['nok-name']);

        if(!is_numeric($_POST['nok-pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $nok_pno = test_input($_POST['pno']);
        }

        $relationship = test_input($_POST['relationship']);
        $relationship = mysqli_real_escape_string($conn,$relationship);
        $nok_address = test_input($_POST['nok-address']);
        $nok_address = mysqli_real_escape_string($conn,$nok_address);
        // $qualification = test_input($_POST['qualification']);
        $upd = date_create(null,timezone_open('Africa/Lagos'));
        $upd = date_format($upd,'Y-m-d'); 

        date_default_timezone_get();
        $dt = date("Y-m-d h:i:sa");
        
        if(isset($errors)){
            $msg = $errors;
            $alerttype= "danger";
        }else{
        
            $sql= "INSERT INTO festive(`fe_id`, `member_id`, `fullname`, `phone`, `gender`, `category`, `price_per_day`, `monthly_price`, `account_officer`, `res_address`, `kin_name`, `kin_phone`, `relationship`, `kin_address`, `creation_date`, `upd`, `created_by`, `updated_by`, `update_dt`, `status`, `status2`) VALUES (null,'$memberid','$fullname','$pno','$gender','$category','$ppd','$mp','$accoff','$resadd','$nok_name','$nok_pno','$relationship','$nok_address','$regdate',null,'$dbname',NULL,null,'undelete','Inactive')";

            $query = mysqli_query($conn,$sql) or die($sql);
            if($query){
                $alerttype="success";
                $msg = "Registration Successful. Your member ID is:"." ". $memberid ;
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
        <title>Geexsmith | Festive Member Account Creation </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <!-- <link rel="shortcut icon" href="assets/images/favicon1.ico"> -->
        <link rel="icon" type="image/x-icon" href="assets/images/geexsmith.ico">

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

                                    <h4 class="mb-sm-0 font-size-18">Festive Account Creation</h4>

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
                                        <h4 class="card-title mb-4">Member Data</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" autocomplete="off">

                                            <div class="row">
                                                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-fullname-input" class="form-label">Fullname</label>
                                                        <input type="text" name="fullname" value="<?php echo $fullname;?>" class="form-control" id="formrow-fullname-input" placeholder="Enter your fullname" required>
                                                    </div>
                                                    
                                                </div>
                                                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input type="text" name="pno" value="<?php echo $pno;?>" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                        
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputGender" class="form-label">Gender</label>
                                                        <select name="gender" id="formrow-inputGender" value="<?php echo $gender;?>"class="form-select">
                                                            <option selected>Choose Gender</option>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputCategory" class="form-label">Category</label>
                                                        <select name="category" id="formrow-inputCategory" value="<?php echo $category;?>"class="form-select">
                                                            <option selected>Choose Category</option>
                                                            <option value="Category 1">Category 1</option>
                                                            <option value="Category 2">Category 2</option>
                                                            <option value="Category 3">Category 3</option>
                                                            <option value="Category 4">Category 4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        
                                                        <label for="formrow-inputgroup" class="form-label">Account Officer</label>
                                                        <select name="accoff" value="<?php echo $accoff;?>" id="inputaccoff" class="form-select">
                                                            <option value="Choose Account Officer" selected>Choose Account Officer</option>
                                                            <?php 
                                                            $accoffquery = mysqli_query($conn,"SELECT * FROM staff_tbl WHERE status2='Active' AND status!='deleted'");
                                                            while($accoffdata = mysqli_fetch_assoc($accoffquery)){
                                                            $dblastname = $accoffdata['lastname'];
                                                            $dbfirstname = $accoffdata['firstname'];
                                                            $dbfullname = $dblastname. " ". $dbfirstname;?>
                                                            
                                                            <option value="<?php echo $dbfullname; ?>"><?php echo $dbfullname; ?></option>

                                                            <?php }?>
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <input type="text" name="resadd" value="<?php echo $resadd;?>" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Residential Address" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <hr></hr>
                                            <!--Next of Kin Data-->
                                            <h4 class="card-title mb-4">Next Of Kin Data</h4>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-name-input" class="form-label">Next of Kin Name</label>
                                                        <input type="text" name="nok-name" value="<?php echo $nok_name;?>" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-pno-input" class="form-label">Next of Kin Phone Number</label>
                                                        <input type="text" name="nok-pno" value="<?php echo $nok_pno;?>" class="form-control" id="formrow-nok-pno-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-relationship-input" class="form-label">Relationship</label>
                                                        <input type="text" name="relationship" value="<?php echo $relationship;?>" class="form-control" id="formrow-relationship-input" placeholder="Enter relationship" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Next of Kin Address</label>
                                                        <input type="text" name="nok-address" value="<?php echo $nok_address;?>" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-qualification-input" class="form-label">Qualification with Date</label>
                                                        <input type="text" name="qualification" value="<?php echo $qualification;?>" class="form-control" id="formrow-qualification-input" placeholder="Enter Qualification with Date" required>
                                                    </div>
                                                </div> -->
                                            </div>
                                            
                                            <div id="txtHint"></div>
                                            <div>
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
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
        <script src="assets/js/pages/addcomma.js"></script>

 <script>
        function showAccOff(str) {
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
            xmlhttp.open("GET","getaccoff.php?q="+str,true);
            xmlhttp.send();
          }
        }
</script>

    </body>


</html>
