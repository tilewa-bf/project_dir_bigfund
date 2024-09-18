<?php

include "../db.php";
include "../auth2.php";


function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}


        
//Update personal information
if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){


        $target_dir = "pictures/";
        $target_file = $target_dir . basename($_FILES["propic"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        $mid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        $date = date("Y-m-d");
       
       /*Member Details*/
        $surname = test_input($_POST['surname']);
        $firstname = test_input($_POST['firstname']);
        $othername = test_input($_POST['othername']);

        if(!is_numeric($_POST['pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $pno = test_input($_POST['pno']);
        }


        if(!is_numeric($_POST['nin'])){
            $errors = "NIN number must be numeric";
        }else{
            $nin = test_input($_POST['nin']);
        }

         if(!is_numeric($_POST['bvn'])){
            $errors = "BVN number must be numeric";
        }else{
            $bvn = test_input($_POST['bvn']);
        }
        
        if(empty($_POST['email'])){
            $errors = "Email is empty";
        }else{
            $email = test_input($_POST['email']);
        }

        if(empty($_POST['gender'])){
            $errors = "Gender is empty";
        }else{
            $gender = test_input($_POST['gender']);
        }
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
        

        /* Check if file already exists
        if (file_exists($target_file)) {
          $errors= "Sorry, file already exists.";
          $uploadOk = 0;
        }*/

        // Check file size
        if ($_FILES["propic"]["size"] > 500000) {
          $errors= "Sorry, your file is too large.";
          $uploadOk = 0;
        }

        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
          $errors= "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
          $uploadOk = 0;
        }

        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk==0){
          $errors= "Sorry, your picture was not uploaded.";
        // if everything is ok, try to upload file
        } else {
          if(move_uploaded_file($_FILES["propic"]["tmp_name"], $target_file)) {
            //$msg= "The file ". htmlspecialchars( basename( $_FILES["propic"]["name"])). " has been uploaded.";
            $picture = $_FILES["propic"]["name"];
          }else{
            $errors= "Sorry, there was an error uploading your file.";
          }
        }

        //$picture = $_POST['propic'];
        
        $accoff = test_input($_POST['accoff']);
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

        
        if(isset($errors)){
            $alerttype="warning";
            $msg = $errors;
        }else{
        

            $sql= "UPDATE member SET phone='$pno',email='$email',gender='$gender',nin='$nin',bvn='$bvn',picture='$picture',account_officer='$accoff',res_address='$resadd',bus_address='$busadd',state='$state',kin_name='$nok_name',kin_phone='$nok_pno',relationship='$relationship',kin_address='$nok_address',upd='$date' WHERE email='".$email."'";

            $query = mysqli_query($conn,$sql) or mysqli_error($sql);
            if($query){
                $alerttype = "success";
                $msg = "Update Successful.";
            }else{
                $alerttype ="warning";
                $msg = "Profile Update Not Successful";
            }
        
        }

           }
}

        //Code to insert bank details
        if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST['banksubmit'])){
        

        /*$sql = "SELECT passbook_id FROM passbook WHERE member_id='".$memberid."'";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        if($result)
        $passbookid = $row['passbook_id'];*/

        $accountname = $_POST['accountname'];
        $bankname = $_POST['bankname'];
        $accountnumber = $_POST['accountnumber'];

        $date = date("Y-m-d");

        $sql ="UPDATE bank SET member_id='$memberid',account_name='$accountname',bank_name='$bankname',account_number='$accountnumber' WHERE member_id='".$memberid."'";
        $result = mysqli_query($conn,$sql) or die($sql);
        

        if($result){
            $msg = "Bank Details Save Successful";
            $alerttype = "success";
        }else{
        $msg= "Not Successuful";
        }
        

    }
    }

    //Code to update password
        if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST['submitpassword'])){
        

        /*$sql = "SELECT passbook_id FROM passbook WHERE member_id='".$memberid."'";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        if($result)
        $passbookid = $row['passbook_id'];*/
        $oldpwd = test_input($_POST['oldpwd']);
        $newpwd = test_input($_POST['newpwd']);
        $cpwd = test_input($_POST['cpwd']);

        $sql = "SELECT password FROM member WHERE member_id='".$memberid."'";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        $password = $row['password'];

        if($oldpwd==$password){
            if($newpwd==$cpwd){
                $sql = "UPDATE member SET password='".$newpwd."' WHERE member_id='$memberid'";
                $result = mysqli_query($conn,$sql);
                $msg = "Your password has been updated";
                $alerttype = "success";
            }else{
                $msg="Password Mismatch";
                $alerttype="warning";
            }
            }else{
                $msg = "You have entered wrong old password";
                $alerttype="warning";
        }

        mysqli_close($conn);
        
 }}

?>

<!doctype html>
<html lang="en">

    

<head>
        
        <meta charset="utf-8" />
        <title>Member Profile | ThriftPay</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="ThriftPay" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

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

        <?php include "navigation.php"; ?>


            

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
                                    <h4 class="mb-sm-0 font-size-18">PROFILE</h4>
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
                                            <a class="nav-link" id="v-pills-payment-tab" data-bs-toggle="pill" href="#v-pills-payment" role="tab" aria-controls="v-pills-payment" aria-selected="false"> 
                                                <i class= "bx bx-money d-block check-nav-icon mt-4 mb-2"></i>
                                                <p class="font-weight-bold mb-4">Bank Info</p>
                                            </a>
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
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-surname-input" class="form-label">Surname</label>
                                                        <input type="text" name="surname" value="<?php echo $surname;?>" class="form-control" id="formrow-surname-input" readonly>
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">First name</label>
                                                        <input type="text" name="firstname"value="<?php echo $firstname;?>" class="form-control" id="formrow-firstname-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                        <input type="text" name="othername" value="<?php echo $othername;?>" class="form-control" id="formrow-othername-input" readonly>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input type="text" name="pno" value="<?php echo $phone;?>" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="useremail" class="form-label">Email</label>
                                                        <input type="email" name="email" value="<?php echo $email;?>" class="form-control" id="useremail" readonly>  
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
                                                        <label for="formrow-nin-input" class="form-label">National Identification Number(NIN)</label>
                                                        <input type="text" name="nin" value="<?php echo $nin;?>" class="form-control" id="formrow-nin-input" placeholder="Enter your NIN number" maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN)</label>
                                                        <input type="text" name="bvn" value="<?php echo $bvn;?>" class="form-control" id="formrow-bvn-input" placeholder="Enter your BVN number" required maxlength="11">
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
                                                <div class="col-sm-4">
                                                        
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload picture</label>
                                                        <input class="form-control" name="propic" value="<?php echo $picture;?>" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-occupation-input" class="form-label">Occupation</label>
                                                        <input type="text" value="<?php echo $occupation;?>" name="occupation" class="form-control" id="formrow-occupation-input" placeholder="Enter Occupation">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-dateofbirth-input" class="form-label">Date of Birth</label>
                                                        <input type="date" name="dob" class="form-control" id="example-date-input">
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <input type="text" name="resadd" value="<?php echo $resadd;?>" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Residential Address" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-businessaddress-input" class="form-label">Business Address</label>
                                                        <input type="text" name="busadd" value="<?php echo $busadd;?>" class="form-control" id="formrow-businessaddress-input" placeholder="Enter your Business Address" required>
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
                                                        <input type="text" name="nok-name" value="<?php echo $kinname;?>" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-pno-input" class="form-label">Next of Kin Phone Number</label>
                                                        <input type="text" name="nok-pno" value="<?php echo $kinphone;?>" class="form-control" id="formrow-nok-pno-input" placeholder="Enter only numbers"required maxlength="11">
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
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Next of Kin Address</label>
                                                        <input type="text" name="nok-address" value="<?php echo $kinadd;?>" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
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
                                               
                                        </div>
                                        </div>


                                                    <div class="tab-pane fade" id="v-pills-payment" role="tabpanel" aria-labelledby="v-pills-payment-tab">
                                                        <div>
                                                            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

                                                            <h4 class="card-title">Bank information</h4>
                                                            <p class="card-title-desc">Fill all information below</p>
    
                                                            <div>
                                                                <?php 

                                                                include "../db.php";

                                                                 
                                                                 $sql = "SELECT account_name,bank_name,account_number FROM bank WHERE member_id='".$memberid."'";
                                                                 $result = mysqli_query($conn,$sql);
                                                                 $row = mysqli_fetch_assoc($result);

                                                                 $dbaccountname = $row['account_name'];
                                                                 $dbbankname = $row['bank_name'];
                                                                 $dbaccountnumber = $row['account_number'];

                                                                 ?>
                                                                <div class="form-check form-check-inline font-size-16">
                                                                    <!--
                                                                    <input class="form-check-input" name="paymentoptionsRadio" id="paymentoptionsRadio1">-->
                                                                    <label class="form-check-label font-size-13" for="paymentoptionsRadio1"><i class="fas fa-id-card me-1 font-size-20 align-top"></i>
                                                                        <?php 
                                                                        if(isset($dbaccountname)){
                                                                            echo $dbaccountname;
                                                                        }else{
                                                                            echo "ACCOUNT NAME";
                                                                        }
                                                                    ?></label>
                                                                </div>
                                                                <div class="form-check form-check-inline font-size-16">
                                                                    <!--
                                                                    <input class="form-check-input" name="paymentoptionsRadio" id="paymentoptionsRadio2">-->
                                                                    <label class="form-check-label font-size-13" for="paymentoptionsRadio2"><i class="fas fa-warehouse me-1 font-size-20 align-top"></i>  <?php 
                                                                        if(isset($dbbankname)){
                                                                            echo $dbbankname;
                                                                        }else{
                                                                            echo "BANK NAME";
                                                                        }
                                                                    ?></label>
                                                                </div>
                                                                <div class="form-check form-check-inline font-size-16">
                                                                    <!--
                                                                    <input class="form-check-input" name="paymentoptionsRadio" id="paymentoptionsRadio3">-->
                                                                    <label class="form-check-label font-size-13" for="paymentoptionsRadio3"><i class="far fa-money-bill-alt me-1 font-size-20 align-top"></i> <?php 
                                                                        if(isset($dbaccountnumber)){
                                                                            echo $dbaccountnumber;
                                                                        }else{
                                                                            echo "ACCOUNT NUMBER";
                                                                        }
                                                                    ?></label>
                                                                </div>
                                                            </div>
    
                                                            <h5 class="mt-5 mb-3 font-size-15">Bank Details</h5>
                                                            <div class="p-4 border">
                                                                
                                                                    <!--
                                                                    <div class="form-group mb-0">
                                                                        <label for="cardnumberInput">Card Number</label>
                                                                        <input type="text" class="form-control" id="cardnumberInput" placeholder="0000 0000 0000 0000">
                                                                    </div>-->
                                                                    <div class="row">
                                                                        <div class="col-lg-6">
                                                                            <div class="form-group mt-4 mb-0">
                                                                                <label for="accountnameInput">Account Name</label>
                                                                                <input type="text" name="accountname" class="form-control" id="accountnameInput" placeholder="Account Name" required="">
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-lg-3">
                                                                            <div class="form-group mt-4 mb-0">
                                                                                <label for="expirydateInput">Bank</label>
                                                                                <select name="bankname" id="formrow-bankname" class="form-select" required>
                                                                                <option selected>Choose a bank</option>
                                                                                <option value="Access">ACCESS BANK</option>
                                                                                <option value="CITI BANK">CITI BANK</option>
                                                                                <option value="ECOBANK NIGERIA PLC">ECOBANK NIGERIA PLC</option>
                                                                                <option value="DIAMOND(ACCESS BANK PLC)">DIAMOND(ACCESS BANK PLC)</option>
                                                                                <option value="FIDELITY BANK PLC">FIDELITY BANK PLC</option>
                                                                                <option value="FIRST BANK NIGERIA LIMITED">FIRST BANK NIGERIA LIMITED</option>
                                                                                <option value="FIRST CITY MONUMENT BANK PLC">FIRST CITY MONUMENT BANK PLC</option>
                                                                                <option value="GUARANTY TRUST BANK">GUARANTY TRUST BANK</option>
                                                                                <option value="HERITAGE BANK">HERITAGE BANK</option>
                                                                                <option value="KEY STONE BANK">KEY STONE BANK</option>
                                                                                <option value="POLARIS BANK">POLARIS BANK</option>
                                                                                <option value="PROVIDUS BANK">PROVIDUS BANK</option>
                                                                                <option value="STANBIC IBTC BANK LTD">STANBIC IBTC BANK LTD</option>
                                                                                <option value="STANBIC IBTC BANK LTD">STANDARD CHARTERED BANK</option>
                                                                                <option value="STERLING BANK PLC">STERLING BANK PLC</option>
                                                                               
                                                                                <option value="UNION BANK OF NIGERIA PLC">UNION BANK OF NIGERIA PLC</option>
                                                                                <option value="UNITED BANK FOR AFRICA PLC">UNITED BANK FOR AFRICA PLC</option>
                                                                                <option value="UNITY BANK">UNITY BANK</option>
                                                                                <option value="WEMA BANK">WEMA BANK</option>
                                                                                <option value="ZENITH BANK">ZENITH BANK</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-lg-3">
                                                                            <div class="form-group mt-4 mb-0">
                                                                                <label for="account number">Account Number</label>
                                                                                <input type="text" name="accountnumber" class="form-control" id="cvvcodeInput" placeholder="Enter Account No."maxlength="10" required>
                                                                            </div>
                                                                        </div>
                                                                    </div><br/><br/>
                                                                    <div class="row">
                                                                        <div>
                                                                            <button type="submit" name="banksubmit" class="btn btn-primary waves-effect waves-light" onclick="showBank()">Submit</button>
                                                                        </div>
                                                                    </div>
                                                            </div>
                                                        </form>
                                                         </div>
                                                    </div>
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

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © Thriftpay.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Jobastech.
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

        <script src="assets/libs/select2/js/select2.min.js"></script>

        <!-- init js -->
        <script src="assets/js/pages/ecommerce-select2.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>

        
    </body>


</html>
