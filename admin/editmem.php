<?php

include "../db.php";
include "../auth.php";


function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
$mid ="";
if(isset($_GET['mid'])){
    $mid = $_GET['mid']; 
}
//Query to select member data
$memberid = $membernumber = $membersurname = $memberfirstname = $memberothername = $memberphone = $memberoccupation= $memberdob = $memberemail = $membergender = $membergroupname = $membermid = $membermidno = $memberbvn = $regfee= $memberaccoff = $memberresadd = $memberbusadd = $memberstate = $memberkin_name = $memberkin_phone = $memberkin_address = $memberrelationship=$memberregfee="";

$memberdata  = mysqli_query($conn, "SELECT * FROM member WHERE id='".$mid."'") or die(mysqli_error($conn));
$rows  = mysqli_fetch_assoc($memberdata);
if(isset($rows)){
$memberid = $rows['id'];
$membernumber = $rows['member_id'];
$membersurname = $rows['surname'];
$memberfirstname = $rows['firstname'];
$memberothername = $rows['othername'];
$memberphone = $rows['phone'];
$memberoccupation = $rows['occupation'];
$memberdob = $rows['date_of_birth'];
$memberemail = $rows['email'];
$membergender = $rows['gender'];
$membergroupname = $rows['group_name'];
$membermid = $rows['mid'];
$membermidno = $rows['midno'];
$memberbvn = $rows['bvn'];

$memberaccoff = $rows['account_officer'];
$memberresadd = $rows['res_address'];
$memberbusadd = $rows['bus_address'];
$memberstate = $rows['state'];
$memberkin_name = $rows['kin_name'];
$memberkin_phone = $rows['kin_phone'];
$memberkin_address = $rows['kin_address'];
$memberrelationship = $rows['relationship'];

    
}



//Update personal information
if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){
        
        $memberinsertid  = test_input($_POST['memberid']);
        $mid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        $date = date("Y-m-d");

       
       /*Member Details*/
        if(!is_numeric($_POST['memberphone'])){
            $errors = "Phone number must be numeric";
        }else{
            $pno = test_input($_POST['memberphone']);
        }
        if(empty($_POST['email'])){
            $errors = "Enter your Email";
        }else{
            $email = test_input($_POST['email']);
        }
        if($_POST['gender']==""){
            $errors = "Gender is empty";
        }else{
            $gender = test_input($_POST['gender']);
        }
        // if($_POST['groupname']==""){
        //     $errors = "Group is empty";
        // }else{
        //     $group = test_input($_POST['groupname']);
        // }
        if($_POST['mid']==""){
            $errors = "Means of ID is empty";
        }else{
            $mid = test_input($_POST['mid']);
        }
        if($_POST['midno']==""){
            $errors = "Means of ID No. is empty";
        }else{
            $midno = test_input($_POST['midno']);
        }
        if($_POST['bvn']==""){
            $errors = "BVN No. is empty";
        }else{
            $bvn = test_input($_POST['bvn']);
        }
        
        // if(empty($_POST['regfee'])){
        //     $errors = "Reg. Fee is empty";
        // }else{
        //     $regfee = $_POST['regfee'];
        //     $regfee = str_replace(',', '', $regfee);
        //     if(is_numeric($regfee)){
        //         $regfee = $regfee;
        //     }else{
        //         $errors = "Number Not Numeric";
        //     }
        // }

        $occupation = test_input($_POST['occupation']);
        
        if(empty($_POST['dob'])){
            $errors = "Date of Birth is required";
        }else{
            $dob = test_input($_POST['dob']);
        }

        if($_POST['sor']==""){
            $errors = "Select State of Origin";
        }else{
            $sor = test_input($_POST['sor']);
        }
       
        if(empty($_POST['resadd'])){

            $errors = "Residential Address is Empty";
        }else{
            $resadd = $_POST['resadd'];
            $resadd = mysqli_real_escape_string($conn,$resadd);
        }
        if(empty($_POST['busadd'])){

            $errors = "Business Address is Empty";
        }else{
            $busadd = $_POST['busadd'];
            $busadd = mysqli_real_escape_string($conn,$busadd);
        }
        /*Next of Kin Details*/
        $nokname = test_input($_POST['nok-name']);

        if(!is_numeric($_POST['nok-pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $nokpno = test_input($_POST['nok-pno']);
        }

        $relationship = test_input($_POST['relationship']);
        $relationship = mysqli_real_escape_string($conn,$relationship);
        $nokaddress = test_input($_POST['nok-address']);
        $nokaddress = mysqli_real_escape_string($conn,$nokaddress);

        if(isset($_POST['membernumber'])){
            $membernumber  =  $_POST['membernumber'];
        }

        //creation date
        date_default_timezone_set('Africa/Lagos');
        $date = date('Y-m-d');

        if(isset($errors)){
            $alerttype="warning";
            $msg = $errors;
        }else{
            $sql= "UPDATE member SET phone='$pno', occupation='$occupation', date_of_birth='$dob', email='$email', gender='$gender', mid='$mid', midno='$midno', bvn='$bvn', res_address='$resadd', bus_address='$busadd', state='$sor', kin_name='$nokname', kin_phone='$nokpno', relationship='$relationship', kin_address='$nokaddress', upd='$date', updated_by='$dbname' WHERE id='".$memberinsertid."'";
            $query = mysqli_query($conn,$sql) or die($sql);

            // //Update member in the loan request table
            //     $sqluploanreq="UPDATE loan_request SET group_name='$group' WHERE member_id='".$membernumber."'";
            //     $queryloanreq=mysqli_query($conn,$sqluploanreq) or die($sqluploanreq);

            //     //Update member in the loan repayment table
            //     $sqluprep="UPDATE rep_tbl SET group_name='$group' WHERE member_id='".$membernumber."'";
            //     $queryrep=mysqli_query($conn,$sqluprep)or die($sqluprep);


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



        //Code to insert bank details
        if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST['banksubmit'])){
    
        if(isset($_POST['membernumber'])){
            $membernumber  =  $_POST['membernumber'];
        }
      
        $accountname = $_POST['accountname'];
        $bankname = $_POST['bankname'];
        $accountnumber = $_POST['accountnumber'];

        $date = date("Y-m-d");

        $sql ="UPDATE bank SET account_name='$accountname',bank_name='$bankname',account_number='$accountnumber' WHERE member_id='".$membernumber."'";
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
        
        $oldpwd = test_input($_POST['oldpwd']);
        $newpwd = test_input($_POST['newpwd']);
        $cpwd = test_input($_POST['cpwd']);

        $sql = "SELECT password FROM staff_tbl WHERE staff_id='".$staffid."'";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        $password = $row['password'];

        if($oldpwd==$password){
            if($newpwd==$cpwd){
                $sql = "UPDATE staff_tbl SET password='".$newpwd."' WHERE staff_id='$staffid'";
                $result = mysqli_query($conn,$sql);
                $msg = "Your password has been Updated Successful";
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
        <title>Bigfund | Staff Profile</title>
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
                                            <a class="nav-link" id="v-pills-payment-tab" data-bs-toggle="pill" href="#v-pills-payment" role="tab" aria-controls="v-pills-payment" aria-selected="false"> 
                                                <i class= "bx bx-money d-block check-nav-icon mt-4 mb-2"></i>
                                                <p class="font-weight-bold mb-4">Bank Info</p>
                                            </a>
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
                                            <form autocomplete="off" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            

                                            <div class="row">
                                                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-surname-input" class="form-label">Surname</label>
                                                        <input readonly value="<?php echo $membersurname;?>" type="text" name="surname" class="form-control" id="formrow-surname-input" placeholder="Enter your Surname" required>
                                                        <input hidden value="<?php echo $memberid;?>" type="text" name="memberid">
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">First name</label>
                                                        <input readonly value="<?php echo $memberfirstname;?>" type="text" name="firstname" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                        <input readonly value="<?php echo $memberothername;?>" type="text" name="othername" class="form-control" id="formrow-othername-input" placeholder="Enter your Other name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input value="<?php echo $phone;?>" type="text" name="memberphone" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="useremail" class="form-label">Email</label>
                                                        <input value="<?php echo $memberemail;?>" type="email" name="email" class="form-control" id="useremail" placeholder="Enter email">  
                                                        <div class="invalid-feedback">
                                                            Please Enter Email
                                                        </div>        
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Gender</label>
                                                        <select name="gender" id="formrow-inputState" class="form-select">
                                                            <option selected value="<?php echo $membergender;?>"><?php echo $membergender;?></option>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        
                                                        <label for="formrow-inputgroup" class="form-label">Group</label>
                                                        <select name="groupname" id="formrow-inputgroup" class="form-select">
                                                            <option value="<?php echo $membergroupname;?>" selected value="<?php echo $membergroupname;?>"><?php echo $membergroupname;?></option>
                                                            <?php 
                                                            $groupquery = mysqli_query($conn,"SELECT * FROM group_tbl");
                                                            while($groupdata = mysqli_fetch_assoc($groupquery)){
                                                            $dbgroup = $groupdata['group_name'];?>
                                                            
                                                            <option value="<?php echo $dbgroup; ?>"><?php echo $dbgroup; ?></option>
                                                            <?php }?>
                                                            
                                                        </select>
                                                    </div>
                                                </div> -->
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Means of ID</label>
                                                        <select name="mid" class="form-select">
                                                            <option selected value="<?php echo $membermid;?>"><?php echo $membermid;?></option>
                                                            <option value="Driver Licence">Driver's Licence</option>
                                                            <option value="International Passport">International Passport</option>
                                                            <option value="National Identity Number">National Identity Number</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nin-input" class="form-label">Means of ID Number</label>
                                                        <input value="<?php echo $membermidno;?>" type="text" name="midno" class="form-control" id="formrow-nin-input" placeholder="Enter your NIN number" maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN)</label>
                                                        <input value="<?php echo $memberbvn;?>" type="text" name="bvn" class="form-control" id="formrow-bvn-input" placeholder="Enter your BVN number" maxlength="11">
                                                    </div>
                                                </div>
                                                <!-- <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Registration Fee</label>
                                                        <input type="text" name="regfee" value="<?php echo $memberregfee;?>" class="form-control" id="input" placeholder="Enter Amount" required>
                                                    </div>
                                                </div> -->
                                                <!-- <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputaccountofficer" class="form-label">Account Officer</label>
                                                        <select name="accoff" id="formrow-inputState" class="form-select">
                                                            <option value="<?php echo $memberaccoff;?>" selected><?php echo $memberaccoff;?></option>
                                                            <?php 
                                                            $sql ="SELECT firstname FROM staff_tbl WHERE user_type='Credit Officer'";
                                                            $result= mysqli_query($conn,$sql);
                                                            while($rows = mysqli_fetch_assoc($result)){
                                                            ?>
                                                            <option value="<?php echo $rows['firstname'];?>"><?php echo $rows['firstname'];?></option>
                                                            <?php }
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div> -->
                                                
                                            </div>

                                            <div class="row">
                                                <!-- <div class="col-sm-3">
                                                        
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload picture</label>
                                                        <input class="form-control" name="propic" type="file" id="formFile">
                                                    </div>
                                                </div> -->
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-occupation-input" class="form-label">Occupation</label>
                                                        <input value="<?php echo $memberoccupation;?>" type="text" name="occupation" class="form-control" id="formrow-occupation-input" placeholder="Enter Occupation">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-dateofbirth-input" class="form-label">Date of Birth</label>
                                                        <input value="<?php echo $memberdob;?>" type="date" name="dob" class="form-control" id="example-date-input">
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>State of Residence</label>
                                                        <select name="sor" class="form-select" required>
                                                    <option selected value="<?php echo $memberstate;?>"><?php echo $memberstate;?></option>
                                                    <option value="Abia">Abia</option>
                                                            <option value="Adamawa">Adamawa</option>
                                                            <option value="Akwa Ibom">Akwa Ibom</option>
                                                            <option value="Anambra">Anambra</option>
                                                            <option value="Bauchi">Bauchi</option>
                                                            <option value="Bayelsa">Bayelsa</option>
                                                            <option value="Benue">Benue</option>
                                                            <option value="Akwa Ibom">Borno</option>
                                                            <option value="Cross River">Cross River</option>
                                                            <option value="Delta">Delta</option>
                                                            <option value="Ebonyi">Ebonyi</option>
                                                            <option value="Edo">Edo</option>
                                                            <option value="Ekiti">Ekiti</option>
                                                            <option value="Enugu">Enugu</option>
                                                            <option value="Gombe">Gombe</option>
                                                            <option value="Imo">Imo</option>
                                                            <option value="Jigawa">Jigawa</option>
                                                            <option value="Kaduna">Kaduna</option>
                                                            <option value="Kano">Kano</option>
                                                            <option value="Katsina">Katsina</option>
                                                            <option value="Kebbi">Kebbi</option>
                                                            <option value="Akwa Ibom">Kogi</option>
                                                            <option value="Kwara State">Kwara</option>
                                                            <option value="Lagos">Lagos</option>
                                                            <option value="Akwa Ibom">Nasarawa</option>
                                                            <option value="Niger">Niger</option>
                                                            <option value="Ogun">Ogun</option>
                                                            <option value="Ondo">Ondo</option>
                                                            <option value="Osun">Osun</option>
                                                            <option value="Akwa Ibom">Oyo</option>
                                                            <option value="Plateau">Plateau</option>
                                                            <option value="Rivers">Rivers</option>
                                                            <option value="Sokoto">Sokoto</option>
                                                            <option value="Taraba">Taraba</option>
                                                            <option value="Yobe">Yobe</option>
                                                            <option value="Zamfara">Zamfara</option>
                                                            <option value="FCT Abuja">FCT Abuja</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <input value="<?php echo $memberresadd;?>" type="text" name="resadd" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Residential Address" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-businessaddress-input" class="form-label">Business Address</label>
                                                        <input value="<?php echo $memberbusadd;?>" type="text" name="busadd" class="form-control" id="formrow-businessaddress-input" placeholder="Enter your Business Address" required="">
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
                                                        <input value="<?php echo $memberkin_name;?>" type="text" name="nok-name" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-pno-input" class="form-label">Next of Kin Phone Number</label>
                                                        <input value="<?php echo $memberkin_phone;?>" type="text" name="nok-pno" class="form-control" id="formrow-nok-pno-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-relationship-input" class="form-label">Relationship</label>
                                                        <input value="<?php echo $memberrelationship;?>" type="text" name="relationship" class="form-control" id="formrow-relationship-input" placeholder="Enter relationship" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Next of Kin Address</label>
                                                        <input value="<?php echo $memberkin_address;?>" type="text" name="nok-address" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
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
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Update</button>
                                            </div>
                                        </form>
                                               
                                        </div>
                                        </div>


                                                    <div class="tab-pane fade" id="v-pills-payment" role="tabpanel" aria-labelledby="v-pills-payment-tab">
                                                        <div>
                                                            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

                                                            <h4 class="card-title">Bank information</h4>
                                                            <p class="card-title-desc">Fill all information below</p>
                                                            <input hidden type="text" name="membernumber" value="<?php echo $membernumber;?>">
                                                            <!-- <input hidden type="text" name="groupnamehidden" value="<?php echo $membergroupname;?>"> -->
                                                            <div>
                                                                <?php 
                                                                 $sql = "SELECT account_name,bank_name,account_number FROM bank WHERE member_id='".$membernumber."'";
                                                                 $result = mysqli_query($conn,$sql);
                                                                 $row = mysqli_fetch_assoc($result);
                                                                 if(isset($row['account_name'])){
                                                                    $dbaccountname = $row['account_name'];
                                                                 }
                                                                 if(isset($row['bank_name'])){
                                                                   $dbbankname = $row['bank_name']; 
                                                                 }
                                                                 if(isset($row['account_number'])){
                                                                  $dbaccountnumber = $row['account_number'];
                                                                 }
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
                                                                                <option value="">Choose a bank</option>
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
        <script src="assets/js/pages/addcomma.js"></script>

        <script src="assets/libs/select2/js/select2.min.js"></script>

        <!-- init js -->
        <script src="assets/js/pages/ecommerce-select2.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>

        
    </body>


</html>
