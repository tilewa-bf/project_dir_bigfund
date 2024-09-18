<?php
include "../db.php";
include "../auth.php";

// if(isset($_SESSION['databasebranchcode'])){
//     $branchcode = $_SESSION['databasebranchcode'];
// }

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$firstname=$lastname=$middlename=$pno=$gender=$dob=$marital=$qualification=$sor=$mid=$midno=$email=$password=
$usertype=$jurisdiction=$state=$resadd=$gname=$gphone=$relationship=$gpassport=$gaddress=$picture="";
if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){

        $target_dir = "pictures/";
        $target_file = $target_dir . basename($_FILES["propic"]["name"]);
        //$uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        // Check file size
        if($_FILES["propic"]["size"] > 500000) {
          $errors= "Sorry, your passport is too large. Maximum is 500kb";
          //$uploadOk = 0;
      }

        // Allow certain file formats
      if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
          $errors= "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
          //$uploadOk = 0;
  }

  $sid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);

  $date = date('Y-m-d');

  if(empty($_POST['firstname'])){
    $errors = "Firstname is empty";
    $alerttype= "danger";
    $icon = "block-helper";
}else{
    $firstname = test_input($_POST['firstname']);
}
if(empty($_POST['lastname'])){
    $alerttype= "danger";
    $icon = "block-helper";
    $errors = "Lastname is empty";
}else{
    $lastname = test_input($_POST['lastname']);
}
$middlename = test_input($_POST['middlename']);
// if(empty($_POST['middlename'])){
//     $alerttype= "danger";
//     $icon = "block-helper";
//     $errors = "Middlename is empty";
// }else{
//     $middlename = test_input($_POST['middlename']);
// }

$fullname = $lastname." ". $firstname." ". $middlename;

if(!is_numeric($_POST['pno'])){
    $errors = "Phone number must be numeric";
}else{
    $pno = test_input($_POST['pno']);
}
if(empty($_POST['gender'])){
    $errors = "Gender is empty";
}else{
    $gender = test_input($_POST['gender']);
}
if(empty($_POST['dob'])){
    $errors = "Date of Birth is required";
}else{
    $dob = test_input($_POST['dob']);
}
if($_POST['marital']=="Choose Marital Status"){
    $errors = "Select Marital Status";
}else{
    $marital = test_input($_POST['marital']);
}

$qualification = test_input($_POST['qualification']);

if($_POST['sor']=="Choose State"){
    $errors = "Select State of Origin";
}else{
    $sor = test_input($_POST['sor']);
}

$mid = test_input($_POST['mid']);
$midno = test_input($_POST['midno']);
// $bvn = test_input($_POST['bvn']);

if(empty($_POST['email'])){
    $alerttype= "danger";
    $icon = "block-helper";
    $errors = "Email is empty";
}else{
    $email = test_input($_POST['email']);
}
if(empty($_POST['password'])){

    $errors = "Password is empty";
}else{
    $password = $_POST['password'];
}

if(strlen($password) < 6){
    $errors = "Password length must be greater than 6!";
}

if($_POST['email'] != $_POST['cemail']){
    $errors = "Email Mismatch";
}else{
    $email = test_input($_POST['email']);
}

if($_POST['password'] != $_POST['cpassword']){
    $errors = "Password Mismatch";
}else{
    $password = test_input($_POST['password']);
}

if($_POST['usertype']=="Choose User"){
    $errors = "Select User";
}else{
    $usertype = test_input($_POST['usertype']);
}

if($_POST['jurisdiction']=="Choose Jurisdiction"){
    $errors = "Select Jurisdiction";
}else{
    $jurisdiction = test_input($_POST['jurisdiction']);
}
if($_POST['state']=="Choose State"){
    $errors = "Select State";
}else{
    $state = test_input($_POST['state']);
}
if(empty($_POST['resadd'])){

    $errors = "Residential Address is Empty";
}else{
    $resadd = $_POST['resadd'];
}
/*Gurantor Details*/
$gname= test_input($_POST['gname']);

if(!is_numeric($_POST['gphone'])){








    $errors = "Phone number must be numeric";
}else{
    $gphone = test_input($_POST['gphone']);
}

$relationship = test_input($_POST['relationship']);
$gpassport = test_input($_POST['gpassport']);
$gaddress = test_input($_POST['gaddress']);

if(isset($errors)){
    $msg = $errors;
    $alerttype= "danger";
    $icon = "block-helper";
}else{

    $email = mysqli_real_escape_string($conn,$email);
    $sql = "SELECT * FROM staff_tbl WHERE email='".$email."'";   
    $query = mysqli_query($conn,$sql);
    $numrows = mysqli_num_rows($query);

    if($numrows > 0){
        $alerttype= "danger";
        $icon = "block-helper";
        $msg = "You have registered before! Previously used email address and Phone Number found";
    }else{
        move_uploaded_file($_FILES["propic"]["tmp_name"], $target_file);
        $picture = $_FILES["propic"]["name"];

        $sql2 = "INSERT INTO `staff_tbl`(`id`, `staff_id`, `lastname`, `firstname`, `middlename`, `phone`, `gender`, `dob`, `marital_status`, `qualification`, `state_of_origin`, `midtype`, `midno`, `bvn`, `admin_passport`, `email`, `password`, `user_type`, `jurisdiction`, `state`, `address`, `country`, `guarantor_name`, `guarantor_address`, `guarantor_phone`, `relationship`, `guarantor_passport`,`created_by`, `reg_date`, `update_dt`, `updated_by`, `status`,`status2`) VALUES (NULL,'$sid','$lastname','$firstname','$middlename','$pno','$gender','$dob','$marital','$qualification','$sor','$mid','$midno',null,'$picture','$email','$password','$usertype','$jurisdiction','$state','$address','Nigeria','$gname','$gaddress','$gphone','$relationship','$gpassport','$dbname','$date',NULL,NULL,'undelete','Inactive')";

        $bankq= "INSERT INTO bank(id,member_id,account_name,bank_name,account_number,creation_date,updated_by) VALUES (null,'$sid','$fullname',null,null,now(),null)";
        mysqli_query($conn,$bankq) or die($bankq);

        $query2 = mysqli_query($conn,$sql2) or die($sql2);
        if($query2){
            $alerttype= "success";
            $icon = "check-all";
            $msg = "Registration Successful. Your Staff ID is $sid";
            // echo "<script>window.alert('Registration Successful. Your Staff ID is $sid');
            // window.location.href='dashboard.php'</script>";
        }else{
            $msg = "Registration Not Successful";
        }
    }
}

}
}



?>

<!doctype html>
<html lang="en">
<head>
    
    <meta charset="utf-8" />
    <title>Bigfund | User Account Creation </title>
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

                                    <h4 class="mb-sm-0 font-size-18">User Account Creation</h4>

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
                                        <h4 class="card-title mb-4">USER ACCOUNT CREATION</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            <p style="color:red;">All asterisk(*) field are mandatory</p>
                                            <!--User Account Creation-->
                                            <div class="row">   
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-lastname-input" class="form-label" title="This field is required">Lastname <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $lastname;?>" type="text" name="lastname" class="form-control" id="formrow-lastname-input" placeholder="Enter your Lastname" required>
                                                    </div>  
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label" title="This field is required">First name <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $firstname;?>" type="text" name="firstname" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-middlename-input" class="form-label">Middle name</label>
                                                        <input value="<?php echo $middlename;?>" type="text" name="middlename" class="form-control" id="formrow-middlename-input" placeholder="Enter your Middle name">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label" title="This field is required">Phone Number <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $pno;?>" type="text" name="pno" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers" required maxlength="11">
                                                    </div>
                                                </div>
                                                
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        
                                                        <label for="formrow-inputgender" class="form-label">Gender <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $gender;?>" name="gender" id="formrow-inputgender" class="form-select" required>
                                                        
                                                        <?php if(isset($gender)){?>
                                                                <option selected value="<?php echo $gender;?>"><?php echo $gender;?></option><?php }else{
                                                                  echo "<option 7value='Choose Gender'>Choose Gender</option>";?>
                                                            <?php
                                                            }?> 
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-dateofbirth-input" class="form-label">Date of Birth <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $dob;?>" type="date" name="dob" class="form-control" id="example-date-input" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputmarital" class="form-label">Marital Status <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $marital;?>" name="marital" id="formrow-inputmarital" class="form-select" required>
                                                            <?php if(isset($marital)){?>
                                                                <option selected value="<?php echo $marital;?>"><?php echo $marital;?></option><?php }else{?>
                                                                <option selected value="Choose Marital Status">Choose Marital Status</option>
                                                            <?php
                                                            }?> 
                                                            <option value="Single">Single</option>
                                                            <option value="Married">Married</option>
                                                            <option value="Divorce">Divorce</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-qualification-input" class="form-label">Qualification <span style="color:red;" title="This field is required!">*</span></span></label>
                                                        <input value="<?php echo $qualification;?>" type="text" name="qualification" class="form-control" id="formrow-qualification-input" placeholder="Enter Qualification" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>State of Origin <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $sor;?>" name="sor" class="form-select" required>
                                                            <?php if(isset($sor)){?>
                                                                <option selected value="<?php echo $sor;?>"><?php echo $sor;?></option><?php }else{?>
                                                                <option selected value="Choose State">Choose State</option>
                                                            <?php
                                                            }?>
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
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Means of ID Type <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $mid;?>" name="mid" class="form-select" required>
                                                            <?php if(isset($mid)){?>
                                                                <option selected value="<?php echo $mid;?>"><?php echo $mid;?></option><?php }else{?>
                                                                    <option selected value="Choose Means of ID">Choose Means of ID</option>
                                                            <?php
                                                            }?> 
                                                            
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
                                                        <label for="formrow-midno-input" class="form-label">Means of ID No. <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $midno;?>" type="text" name="midno" class="form-control" id="formrow-midno-input" placeholder="Enter your MID number" required>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN)</label>
                                                        <input type="text" name="bvn" class="form-control" id="formrow-bvn-input" placeholder="Enter your BVN number" maxlength="11">
                                                    </div>
                                                </div> -->
                                                <div class="col-sm-3">
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload Picture<span style="color:red;" title="This field is required!">*(JPG, JPEG, PNG)</span></label>
                                                        <input value="<?php echo $picture;?>" class="form-control" name="propic" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-email-input" class="form-label">Email <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $email;?>" type="email" name="email" class="form-control" id="formrow-email-input" placeholder="Enter Email" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-confirm-email-input" class="form-label">Confirm Email <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $email;?>" type="email" name="cemail" class="form-control" id="formrow-confirm-email-input" placeholder="Enter Email" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-password-input" class="form-label">Password<span style="color:red;" title="This field is required!">*(7 characters Min.)</span></label>
                                                        <input value="<?php echo $password;?>" type="password" name="password" class="form-control" id="formrow-password-input" placeholder="Enter Password" required>
                                                    </div>        
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-confirm-password-input" class="form-label">Conf. Password<span style="color:red;" title="This field is required!">*(7 characters Min.)</span></label>
                                                        <input value="<?php echo $password;?>" type="password" name="cpassword" class="form-control" id="formrow-confirm-password-input" placeholder="Enter Password" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">User Type <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $usertype;?>" required name="usertype" id="usertype" class="form-select">
                                                            <?php if(isset($usertype)){?>
                                                                <option selected value="<?php echo $usertype;?>"><?php echo $usertype;?></option><?php }else{?>
                                                                    <option value="Choose User">Choose User</option>
                                                            <?php
                                                            }?> 
                                                            
                                                            <option value="Admin">Admin</option>
                                                            <option value="Account Officer">Account Officer</option>
                                                            <option value="Branch Manager">Branch Manager</option>
                                                            <option value="Credit Officer">Credit Officer</option>
                                                            <option value="General Manager">General Manager</option>
                                                            <option value="Receptionist">Receptionist</option>
                                                            <option value="Team Leader">Team Leader</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="jurisdiction" class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Jurisdiction <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select required name="jurisdiction" id="usertype" class="form-select" required="">
                                                        <?php if(isset($jurisdiction)){?>
                                                                <option selected value="<?php echo $jurisdiction;?>"><?php echo $jurisdiction;?></option><?php }else{?>
                                                                <option value="Choose Jurisdiction">Choose Jurisdiction</option>
                                                            <?php
                                                            }?>
                                                        
                                                            <?php 
                                                            $sql ="SELECT zone FROM jurisdiction WHERE status='Active' AND status2!='deleted'";
                                                            $result= mysqli_query($conn,$sql);
                                                            while($rows = mysqli_fetch_assoc($result)){
                                                                ?>
                                                                <option value="<?php echo $rows['zone'];?>"><?php echo $rows['zone'];?></option>
                                                            <?php }
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>State of Residence <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $state;?>" name="state" class="form-select" required>
                                                            <?php if(isset($state)){?>
                                                                <option selected value="<?php echo $state;?>"><?php echo $state;?></option><?php }else{?>
                                                                    <option selected value="Choose State">Choose State</option>
                                                            <?php
                                                            }?>
                                                           
                                                            <option value="Abia">Abia</option>
                                                            <option value="Adamawa">Adamawa</option>
                                                            <option value="Akwa Ibom">Akwa Ibom</option>
                                                            <option value="Akwa Ibom">Anambra</option>
                                                            <option value="Akwa Ibom">Bauchi</option>
                                                            <option value="Akwa Ibom">Bayelsa</option>
                                                            <option value="Akwa Ibom">Benue</option>
                                                            <option value="Akwa Ibom">Borno</option>
                                                            <option value="Akwa Ibom">Cross River</option>
                                                            <option value="Akwa Ibom">Delta</option>
                                                            <option value="Akwa Ibom">Ebonyi</option>
                                                            <option value="Akwa Ibom">Edo</option>
                                                            <option value="Akwa Ibom">Ekiti</option>
                                                            <option value="Akwa Ibom">Enugu</option>
                                                            <option value="Akwa Ibom">Gombe</option>
                                                            <option value="Akwa Ibom">Imo</option>
                                                            <option value="Akwa Ibom">Jigawa</option>
                                                            <option value="Akwa Ibom">Kaduna</option>
                                                            <option value="Akwa Ibom">Kano</option>
                                                            <option value="Akwa Ibom">Katsina</option>
                                                            <option value="Akwa Ibom">Kebbi</option>
                                                            <option value="Akwa Ibom">Kogi</option>
                                                            <option value="Akwa Ibom">Kwara State</option>
                                                            <option value="Akwa Ibom">Lagos</option>
                                                            <option value="Akwa Ibom">Nasarawa</option>
                                                            <option value="Akwa Ibom">Niger</option>
                                                            <option value="Akwa Ibom">Ogun</option>
                                                            <option value="Akwa Ibom">Ondo</option>
                                                            <option value="Akwa Ibom">Osun</option>
                                                            <option value="Akwa Ibom">Oyo</option>
                                                            <option value="Akwa Ibom">Plateau</option>
                                                            <option value="Akwa Ibom">Rivers</option>
                                                            <option value="Akwa Ibom">Sokoto</option>
                                                            <option value="Akwa Ibom">Taraba</option>
                                                            <option value="Akwa Ibom">Yobe</option>
                                                            <option value="Akwa Ibom">Zamfara</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <textarea id="myTextarea" style="text-align: left;" class="form-control" value="<?php echo $resadd;?>" name="resadd" required><?php echo $resadd;?></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <hr></hr>
                                            <!--Next of Kin Data-->
                                            <h4 class="card-title mb-4">Guarantor's Data <span style="color:red;" title="This field is required!">*</span></h4>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-name-input" class="form-label">Guarantor's Name <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $gname;?>" type="text" name="gname" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-pno-input" class="form-label">Guarantor's Phone Number <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $gphone;?>" type="text" name="gphone" class="form-control" id="formrow-nok-pno-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                

                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-relationship-input" class="form-label">Relationship <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $relationship;?>" type="text" name="relationship" class="form-control" id="formrow-relationship-input" placeholder="Enter relationship" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-gpassport" class="form-label">Guarantor's Passport <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $gpassport;?>" name="gpassport" id="gpassport" class="form-select">
                                                            <option value="Available" selected>Available</option>
                                                            <option value="Not Available">Not Available</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Guarantor's Address <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $gaddress;?>" type="text" name="gaddress" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
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
