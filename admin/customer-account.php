<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

        

if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){

        $target_dir = "pictures/";
        $target_file = $target_dir . basename($_FILES["propic"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        $mid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        $regdate = date("Y-m-d");
       
       /*Member Details*/
        $surname = test_input($_POST['surname']);
        $firstname = test_input($_POST['firstname']);
        $othername = test_input($_POST['othername']);

        if(!is_numeric($_POST['pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $pno = test_input($_POST['pno']);
        }


        //if(!is_numeric($_POST['nin'])){
            //$errors = "NIN number must be numeric";
        //}else{
            $nin = test_input($_POST['nin']);
        //}

         //if(!is_numeric($_POST['bvn'])){
           // $errors = "BVN number must be numeric";
        //}else{
            $bvn = test_input($_POST['bvn']);
        //}
        
        //if(empty($_POST['email'])){
          //  $errors = "Email is empty";
        //}else{
            $email = test_input($_POST['email']);
        //}

        //if(empty($_POST['gender'])){
          //  $errors = "Gender is empty";
        //}else{
            $gender = test_input($_POST['gender']);
        //}
        // Check if image file is a actual image or fake image
            /*
          $check = getimagesize($_FILES["propic"]["tmp_name"]);
          if($check !== false) {
            //$msg= "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;
          } else {
            $errors= "File is not an image.";
            $uploadOk = 0;
          }*/
        

        // Check if file already exists
        /*if (file_exists($target_file)) {
          $errors= "Sorry, file already exists.";
          $uploadOk = 0;
        }*/

        // Check file size
        if ($_FILES["propic"]["size"] > 500000) {
            $alerttype="danger";
          $errors= "Sorry, your file is too large.";
          $uploadOk = 0;
        }else{
            move_uploaded_file($_FILES["propic"]["tmp_name"], $target_file);
            $picture = $_FILES["propic"]["name"];
        }

        /*
        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
          $errors= "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
          $uploadOk = 0;
        }

        
        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
          $errors= "Sorry, your picture was not uploaded.";
        // if everything is ok, try to upload file
        } else {
          if (move_uploaded_file($_FILES["propic"]["tmp_name"], $target_file)) {
            //$msg= "The file ". htmlspecialchars( basename( $_FILES["propic"]["name"])). " has been uploaded.";
            $picture = $_FILES["propic"]["name"];
          }else{
            $errors= "Sorry, there was an error uploading your file.";
          }
        }*/

        $occupation = test_input($_POST['occupation']);
        $dob = test_input($_POST['dob']);

        //$picture = $_POST['propic'];
        
        $accoff = test_input($_POST['accoff']);
        $state = test_input($_POST['state']);
        $resadd= test_input($_POST['resadd']);
        $busadd = test_input($_POST['busadd']);

        /*Next of Kin Details*/
        $nok_name= test_input($_POST['nok-name']);

        if(!is_numeric($_POST['nok-pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $nok_pno = test_input($_POST['pno']);
        }

        $relationship = test_input($_POST['relationship']);

        $nok_address = test_input($_POST['nok-address']);

        $upd = date_create(null,timezone_open('Africa/Lagos'));
        $upd = date_format($upd,'Y-m-d'); 

        //$email = mysqli_real_escape_string($conn,$email);
        //$sql = "SELECT * FROM member WHERE email='".$email."'";   
        //$query = mysqli_query($conn,$sql);
        //$numrows = mysqli_num_rows($query);

        //if($numrows > 0){
          //$alerttype="danger";
        //$errors = "You have registered before!";
        //}
        if(isset($errors)){
            $msg = $errors;
        }else{
        

            $sql= "INSERT INTO member(id,member_id,surname,firstname,othername,phone,occupation,date_of_birth,email,password,gender,nin,bvn,picture,account_officer,res_address,bus_address,state,country,kin_name,kin_phone,relationship,kin_address,reg_date,upd,created_by) VALUES (null,'$mid','$surname','$firstname','$othername','$pno','$occupation','$dob','$email',NULL,'$gender','$nin','$bvn','$picture','$accoff','$resadd','$busadd','$state','Nigeria','$nok_name','$nok_pno','$relationship','$nok_address','$regdate','$upd','$dbname')";

            $bankq= "INSERT INTO bank(id,member_id,account_name,bank_name,account_number) VALUES(null,'$mid',null,null,null)";
            mysqli_query($conn,$bankq);

            $query = mysqli_query($conn,$sql) or die($sql);
            if($query){
                $alerttype="success";
                $msg = "Registration Successful. Your member ID is:"." ". $mid ;
            }else{
                $msg = mysqli_error($conn);
            }
        
        }
        mysqli_close($conn);

    }
}

?>
<!doctype html>
<html lang="en">



<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Member Account Creation </title>
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

                                    <h4 class="mb-sm-0 font-size-18">Member Account Creation</h4>

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
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            

                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-surname-input" class="form-label">Surname</label>
                                                        <input type="text" name="surname" class="form-control" id="formrow-surname-input" placeholder="Enter your Surname" required>
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">First name</label>
                                                        <input type="text" name="firstname" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                        <input type="text" name="othername" class="form-control" id="formrow-othername-input" placeholder="Enter your Other name" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input type="text" name="pno" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="useremail" class="form-label">Email</label>
                                                        <input type="email" name="email" class="form-control" id="useremail" placeholder="Enter email">  
                                                        <div class="invalid-feedback">
                                                            Please Enter Email
                                                        </div>        
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Gender</label>
                                                        <select name="gender" id="formrow-inputState" class="form-select">
                                                            <option selected>Choose Gender</option>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nin-input" class="form-label">National Identification Num.(NIN) optional</label>
                                                        <input type="text" name="nin" class="form-control" id="formrow-nin-input" placeholder="Enter your NIN number" maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN)</label>
                                                        <input type="text" name="bvn" class="form-control" id="formrow-bvn-input" placeholder="Enter your BVN number" maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Account Officer</label>
                                                        <select name="accoff" id="formrow-inputState" class="form-select">
                                                            <option selected>Choose Account Officer</option>
                                                            <?php 
                                                            $sql ="SELECT firstname FROM admin WHERE user_type='Sales Reps'";
                                                            $result= mysqli_query($conn,$sql);
                                                            while($rows = mysqli_fetch_assoc($result)){
                                                            ?>
                                                            <option value="<?php echo $rows['firstname'];?>"><?php echo $rows['firstname'];?></option>
                                                            <?php }
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                            </div>

                                            <div class="row">
                                                <div class="col-sm-3">
                                                        
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload picture</label>
                                                        <input class="form-control" name="propic" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-occupation-input" class="form-label">Occupation</label>
                                                        <input type="text" name="occupation" class="form-control" id="formrow-occupation-input" placeholder="Enter Occupation">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-dateofbirth-input" class="form-label">Date of Birth</label>
                                                        <input type="date" name="dob" class="form-control" id="example-date-input">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-state-input" class="form-label">State of Residence</label>
                                                        <input type="text" name="state" class="form-control" id="formrow-state-input" placeholder="State" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <input type="text" name="resadd" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Residential Address" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-businessaddress-input" class="form-label">Business Address</label>
                                                        <input type="text" name="busadd" class="form-control" id="formrow-businessaddress-input" placeholder="Enter your Business Address" required="">
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
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Next of Kin Address</label>
                                                        <input type="text" name="nok-address" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
                                                    </div>
                                                </div>
                                            </div>


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

                        

                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © Thrift Pay.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Jobastech Global
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
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
