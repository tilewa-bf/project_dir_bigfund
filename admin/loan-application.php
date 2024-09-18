<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
$mid=$memberid="";
if(isset($_GET['mid'])){
    $mid = $_GET['mid'];
    $_SESSION['id'] = $mid;
}
$mid = $_SESSION['id'];
//Query get member data
$querymember = mysqli_query($conn,"SELECT * FROM member WHERE member_id='$mid'");
$memberdata= mysqli_fetch_assoc($querymember);
$dbmid =  $memberdata['member_id'];
$dbsavtype = $memberdata['savings_type'];
$dbsurname =  $memberdata['surname'];
$dbfirstname =  $memberdata['firstname'];
$dbothername =  $memberdata['othername'];
$dbphone =  $memberdata['phone'];
$dbemail =  $memberdata['email'];
$dbgender =  $memberdata['gender'];
$dbmidno =  $memberdata['midno'];
$dbbvn =  $memberdata['bvn'];
$dbaccountofficer =  $memberdata['account_officer'];
$dbgroupname =  $memberdata['group_name'];
$dboccupation =  $memberdata['occupation'];
$dbdob =  $memberdata['date_of_birth'];
$dbstate =  $memberdata['state'];
$dbresadd =  $memberdata['res_address'];
$dbbusadd =  $memberdata['bus_address'];

$gname= $gpno=$occupation=$groupname=$gaddress= $utilitybill= $relationship= $mid= $midno=$bvn=$type=$loanpurpose=$income=$regfee=$appliedamount=$compsaving=$totalpayable=$applicationdate=$gdate=$exdate= "";

if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){

        //Guarantor Passport
    // $target_dir = "gpassport/";
    // $target_file = $target_dir . basename($_FILES["gpassport"]["name"]);
    // $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

    //       // Check if file already exists
    // if(file_exists($target_file)) {
    //     $alerttype="danger";
    //     $errors= "Sorry, image already exists.";
    // }

        // Check file size
    // if($_FILES["gpassport"]["size"] > 500000) {
    //     $alerttype="danger";
    //     $errors= "Sorry, your file is too large.";
    // }

        // Allow certain file formats
    // if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    //     && $imageFileType != "gif" ) {
    //   $errors= "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";

    // }

//loan auto generated code
$loancode = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);

/*Member Details*/
$surname = test_input($_POST['surname']);
$firstname = test_input($_POST['firstname']);
$othername = test_input($_POST['othername']);
$fullname = $surname." ". $firstname. " ". $othername;
if(isset($_POST['memberid'])){
    $memberid = $_POST['memberid'];
}
$groupname = test_input($_POST['groupname']);
$pno = test_input($_POST['pno']);
$accountofficer = test_input($_POST['accountofficer']);


        //Guarantor Information
$gname = test_input($_POST['gname']);
$gname=mysqli_real_escape_string($conn,$gname);
$gpno = test_input($_POST['gpno']);
$utilitybill = test_input($_POST['utilitybill']);
$relationship = test_input($_POST['relationship']);
$relationship=mysqli_real_escape_string($conn,$relationship);
$gaddress = test_input($_POST['gaddress']);
$gaddress=mysqli_real_escape_string($conn,$gaddress);
$occupation = test_input($_POST['occupation']);
$occupation=mysqli_real_escape_string($conn,$occupation);
if($_POST['mid']=="Choose Means of ID"){
    $errors = "Choose Means of ID";
}else{
    $mid = test_input($_POST['mid']);
}

$midno = test_input($_POST['midno']);
if(empty(test_input($_POST['bvn']))){
    $errors = "Enter the BVN!";
}else{
    $bvn = test_input($_POST['bvn']);
}

        //Loan Information
if(isset($_POST['type'])){
    if($_POST['type']=="Select Repayment Type"){
        $errors = "Select Repayment Type";
        }else{
            $type = test_input(strtoupper($_POST['type']));
    }
}
$tenor2 = test_input($_POST['tenor2']);

// $type = test_input($_POST['type']);
$sector = test_input($_POST['sector']);
$loanpurpose = test_input($_POST['loanpurpose']);
$loanpurpose=mysqli_real_escape_string($conn,$loanpurpose);

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
if(empty($_POST['regfee'])){
    $errors = "Reg. Fee is empty";
}else{
    $regfee = $_POST['regfee'];
    $regfee = str_replace(',', '', $regfee);
    if(is_numeric($regfee)){
        $regfee = $regfee;
    }else{
        $errors = "Income Not Numeric";
    }
}
$appliedamount = $_POST['appliedamount'];
// if(empty($_POST['loanamount'])){
//     $errors = "Loan amount is empty";
// }else{
//     $loanamount = $_POST['income'];
//     $loanamount = str_replace(',', '', $loanamount);
//     if(is_numeric($loanamount)){
//         $loanamount = $loanamount;
//     }else{
//         $errors = "Loan amount Not Numeric";
//     }
// }

// if(empty($_POST['compsaving'])){
//     $errors = "Compulsory Saving is empty";
// }else{
//     $compsaving = $_POST['compsaving'];
//     $compsaving = str_replace(',', '', $compsaving);
//     if(is_numeric($compsaving)){
//         $compsaving = $compsaving;
//     }else{
//         $errors = "Compulsory Saving Not Numeric";
//     }
// }

// $totalpayable= $loanamount + $compsaving;
$applicationdate = test_input($_POST['gdate']);
$creationdate = date("Y-m-d");
// $exdate = test_input($_POST['exdate']);

        //if($numrows > 0){
          //$alerttype="danger";
        //$errors = "You have registered before!";
        //}
if(isset($errors)){
    $msg = $errors;
    $alerttype = "danger";
}else{

    // $picture = $_FILES["gpassport"]["name"];
            //$sql= "INSERT INTO guarantor_tbl(g_id,loan_code,member_id,member_name,guarantor_name,guarantor_pno,relationship,guarantor_address,occupation,mid,midno,upload_mid,upload_passport,created_by,creation_date,updated_by,update_date)VALUES(NULL,'$memberid','$fullname','$gname','$gpno','$relationship','$gaddress','$occupation','$mid','$midno','$gmid','$gpassport','$dbname','$gdate',NULL,NULL);


    $sql  = "INSERT INTO loan_request(loan_id,loan_code,member_id,member_name,member_phone,group_name,account_officer,guarantor_name,guarantor_pno,guarantor_passport,utility_bill,relationship,guarantor_address,occupation,mid,midno,bvn,tenor,tenor2,sector,loan_purpose,income,reg_fee,applied_amount,approved_amount,total_payable,narration,app_date,created_by,creation_date,approved_date,maturity_date,updated_by, update_dt,status,status1,status2,comments) VALUES (null,'$loancode','$memberid','$fullname','$pno','$groupname','$accountofficer','$gname','$gpno',null,'$utilitybill','$relationship','$gaddress','$occupation','$mid','$midno','$bvn','$type','$tenor2','$sector','$loanpurpose','$income','$regfee','$appliedamount',NULL,NULL,NULL,'$applicationdate','$dbname','$creationdate',NULL,NULL,NULL,NULL,'pending','Inactive','undelete','Not Yet Approve')";

    $query = mysqli_multi_query($conn,$sql) or die($sql);
    if($query){
        // move_uploaded_file($_FILES["gpassport"]["tmp_name"], $target_file);
        $alerttype="success";
        $msg = "Loan Application Successful. Your Loan Code is:"." ". $loancode ;
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
    <style>
    .error {
      color: red;
      display: none;
    }
  </style>

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
                                        <p style="color:red;">All asterisk(*) field are mandatory</p>
                                        <form autocomplete="off" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-surname-input" class="form-label">Surname <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input readonly value="<?php echo $dbsurname;?>" type="text" name="surname" class="form-control" id="formrow-surname-input" placeholder="Enter your Surname" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">First name <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input readonly value="<?php echo $dbfirstname;?>" type="text" name="firstname" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                        <input readonly value="<?php echo $dbothername;?>" type="text" name="othername" class="form-control" id="formrow-othername-input" placeholder="Enter your Other name">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input readonly value="<?php echo $dbphone;?>" type="text" name="pno" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <hr></hr>
                                            <!--Guarantor Information-->
                                            <h4 class="card-title mb-4">Guarantor Information <span style="color:red;" title="This field is required!">*</span></h4>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-name-input" class="form-label">Guarantor Name <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input id="gname" value="<?php echo $gname;?>" type="text" name="gname" class="form-control" id="formrow-nok-name-input" placeholder="Enter your Full name" required>
                                                        <input hidden type="text" value="<?php  echo $dbmid;?>" name="memberid">
                                                        <!-- <input hidden type="text" value="<?php  echo $dbgroupname;?>" name="groupname"> -->
                                                        <input hidden type="text" value="<?php  echo $dbaccountofficer;?>" name="accountofficer">
                                                        <input hidden type="text" value="<?php  echo $dbphone;?>" name="memphone">
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-gpno-input" class="form-label">Guarantor Phone Number <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $gpno;?>" type="text" name="gpno" class="form-control" id="gpno" placeholder="Enter only numbers"required maxlength="11">
                                                        <span id="errorMessage" class="error">Please enter a valid number!</span>
                                                        
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-relationship-input" class="form-label">Relationship <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $relationship;?>" type="text" name="relationship" class="form-control" id="formrow-relationship-input" placeholder="Enter relationship" required>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload Guarantor Passport</label>
                                                        <input class="form-control" name="gpassport" type="file" id="formFile">
                                                    </div>
                                                </div> -->
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Utility Bill <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select name="utilitybill" class="form-select">
                                                            <option selected value="Available">Available</option>
                                                            <option value="Not Available">Not Available</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Means of ID <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select value="<?php echo $mid;?>" name="mid" class="form-select" required>
                                                            <option value="Choose Means of ID">Choose Means of ID</option>
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
                                                        <label for="formrow-nok-midno-input" class="form-label">Means of ID Number <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $midno;?>" type="text" name="midno" class="form-control" id="formrow-midno-input" placeholder="Enter MID number"required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN) <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input type="text" name="bvn" value="<?php echo $bvn;?>" class="form-control" id="bvn" placeholder="Enter your BVN number" maxlength="11">
                                                        <span id="errorMessage2" class="error">Please enter a valid number!</span>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-occupation-input" class="form-label">Guarantor Occupation <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $occupation;?>" type="text" name="occupation" class="form-control" id="formrow-occupation-input" placeholder="Enter Occupation" required>
                                                    </div>
                                                </div>
                                                
                                            </div>

                                            <div class="row">
                                                <div style="display: none;" class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formFile" class="form-label">Upload Means of ID <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input class="form-control" name="gmid" type="file" id="formFile">
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-address-input" class="form-label">Guarantor Address <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $gaddress;?>" type="text" name="gaddress" class="form-control" id="formrow-nok-address-input" placeholder="Enter Address" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr></hr>
                                            <!--Loan Information-->
                                            <h4 class="card-title mb-4">Loan Information <span style="color:red;" title="This field is required!">*</span></h4>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Repayment Type <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select name="type" class="form-select" id="reptype" onchange="updateSecondSelect()">
                                                            <option selected>Select Repayment Type</option>
                                                            <!-- <option selected value="<?php echo $dbsavtype;?>"><?php echo $dbsavtype;?></option> -->
                                                            <?php 
                                                                $loantenorquery = "select * from loan_tenor_tbl where status='active' ORDER BY tenor_id ASC";
                                                                $loanres = mysqli_query($conn,$loantenorquery);
                                                                while($loanrows = mysqli_fetch_assoc($loanres)){
                                                                    $dbtn = $loanrows['tenor_name'];
                                                                    ?>
                                                                    <option value="<?php echo $dbtn; ?>"><?php echo $dbtn; ?></option>
                                                            <?php }?>
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Loan Tenor <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select name="tenor2" class="form-select" id="tenor">
                                                            <option value="1 Week">1 Week</option>
                                                            <option value="2 Weeks">2 Weeks</option>
                                                            <option value="3 Weeks">3 Weeks</option>
                                                            <option value="1 Month">1 Month</option>
                                                            <option value="2 Months">2 Months</option>
                                                            <option value="3 Months">3 Months</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Loan Sector <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select name="sector" class="form-select">
                                                            <option value="AGRICULTURAL">AGRICULTURAL</option>
                                                            <option value="HOSPITALITY">HOSPITALITY</option>
                                                            <option value="HOUSING">HOUSING</option>
                                                            <option value="TRADING">TRADING</option>
                                                            <option value="TRAVEL AND TOURISM">TRAVEL AND TOURISM</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        
                                                        <label for="formrow-inputgroup" class="form-label">Individual/Group <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select name="groupname" value="<?php echo $groupname;?>" id="inputgroup" class="form-select">
                                                            <option value="Choose Group">Choose Group</option>
                                                            <?php 
                                                            $groupquery = mysqli_query($conn,"SELECT * FROM group_tbl WHERE status='Active' AND status!='deleted'");
                                                            while($groupdata = mysqli_fetch_assoc($groupquery)){
                                                            $dbgroup = $groupdata['group_name'];?>
                                                            <option value="<?php echo $dbgroup; ?>"><?php echo $dbgroup; ?></option>
                                                            <?php }?>
                                                            <option selected value="Individual">Individual</option>
                                                            
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-income-input" class="form-label">Borrower's Salary/Income <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $income;?>" type="text" name="income" class="form-control" id="input" placeholder="Enter Borrower's Salary/Income" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-income-input" class="form-label">Reg. Fee <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $regfee;?>" type="text" name="regfee" class="form-control" id="input2" placeholder="Enter Reg. Fee" required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Applied Amount <span style="color:red;" title="This field is required!">*</span></label>
                                                        <select name="appliedamount" class="form-select">
                                                            <?php 
                                                            $am = 30000;
                                                                while($am <= 2000000){?>
                                                                    <option value="<?php echo $am;?>"><?php echo number_format($am,2);?></option>
                                                              <?php $am+= 10000;} ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="example-date-input">App. Date <span style="color:red;" title="This field is required!">*</span></label>
                                                            <input id="appdate" value="<?php echo $applicationdate;?>" name="gdate" class="form-control" type="date" 
                                                                id="example-date-input" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-loanpurpose-input" class="form-label">Purpose of Loan <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input value="<?php echo $loanpurpose;?>" type="text" name="loanpurpose" class="form-control" id="formrow-nok-name-input" placeholder="Purpose of Loan" required>
                                                    </div>
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
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Submit Loan Application</button>
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
        <script>
            //Get today's date
            const today = new Date().toISOString().split('T')[0];
            //Set the max attribute to today's date
            document.getElementById("appdate").setAttribute("max", today);
        </script>

        <!--Script to disable second option in the <select>-->
        <script>
        function updateSecondSelect() {
        const select1 = document.getElementById('reptype').value;
        const select2 = document.getElementById('tenor');

        // Clear all options from select2
        select2.innerHTML = '';

        // Add options based on the selection of select1
        if (select1 === 'DAILY') {
            select2.innerHTML += '<option value="1 Month">1 Month</option>';
        }else if(select1 ==='WEEKLY'){
            select2.innerHTML += '<option value="12 Weeks">12 Weeks</option>';
            select2.innerHTML += '<option value="16 Weeks">16 Weeks</option>';
        }else if(select1 ==='MONTHLY'){
            select2.innerHTML += '<option value="4 MONTHS">4 MONTHS</option>';
            select2.innerHTML += '<option value="5 MONTHS">5 MONTHS</option>';
        }
        }
        </script>

    <!--Ensure only number is enter-->
    <!-- <script>
        function validateNumberInput(input) {
        input.value = input.value.replace(/[^0-9]/g, '');  // Replace anything that's not a digit
        }
    </script> -->
    <!--Ensure only number is enter in Guarantor Phone-->
    <script>
        const numberInput = document.getElementById('gpno');
        const errorMessage = document.getElementById('errorMessage');

        numberInput.addEventListener('input', function() {
        if (isNaN(numberInput.value) || numberInput.value === '') {
            errorMessage.style.display = 'inline';
        } else {
            errorMessage.style.display = 'none';
        }
        });
    </script>
    <!--Ensure only number is enter in BVN-->
    <script>
        const numberInput2 = document.getElementById('bvn');
        const errorMessage2 = document.getElementById('errorMessage2');

        numberInput2.addEventListener('input', function() {
        if (isNaN(numberInput2.value) || numberInput2.value === '') {
            errorMessage2.style.display = 'inline';
        } else {
            errorMessage2.style.display = 'none';
        }
        });
    </script>
    <!--Convert text to uppercase-->
    <script>
        // Add an event listener to the input field
        document.getElementById('gname').addEventListener('input', function(event) {
            // Convert the input value to uppercase
            event.target.value = event.target.value.toUpperCase();
        });
    </script>
    </body>
    </html>