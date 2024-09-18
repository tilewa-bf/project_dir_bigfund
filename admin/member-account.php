<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$savtype=$surname=$firstname=$othername=$pno=$occupation=$dob=$email=$gender=$groupname=$mid=$nin=$bvn=$regfee=$accoff=$resadd=$busadd=$state=$nok_name=$nok_pno=$relationship=$nok_address=$qualification=$regdate=$upd="";

if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){
        // $target_dir = "pictures/";
        // $target_file = $target_dir . basename($_FILES["propic"]["name"]);
        // $uploadOk = 1;
        // $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        $memberid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        $regdate = date("Y-m-d");

        if(isset($_POST['savtype'])){
            if($_POST['savtype']=="Choose Savings Type"){
            $errors = "Choose Savings Type";
            }else{
                $savtype = test_input(strtoupper($_POST['savtype']));
            }
        }
       
       /*Member Details*/
        $surname = test_input(strtoupper($_POST['surname']));
        $firstname = test_input(strtoupper($_POST['firstname']));
        $othername = test_input(strtoupper($_POST['othername']));
        $fullname = $surname." ".$firstname." ".$othername;

        if(!is_numeric($_POST['pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $pno = test_input($_POST['pno']);
        }
            $mid = test_input($_POST['mid']);
            $nin = test_input($_POST['nin']);
            if(empty(test_input($_POST['bvn']))){
                $errors = "Enter the BVN!";
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
        

        $email = test_input($_POST['email']);
        $email = mysqli_real_escape_string($conn,$email);
       
        if($_POST['mid']=="Choose Means of ID"){
            $errors = "Select Means of ID";
        }else{
            $mid = test_input($_POST['mid']);
        }

        if($_POST['gender']=="Choose Gender"){
            $errors = "Select Gender";
        }else{
            $gender = test_input($_POST['gender']);
        }
        if($_POST['groupname']=="Choose Group"){
            $errors = "Select Group";
        }else{
            $groupname = test_input($_POST['groupname']);
        }
        if(isset($_POST['accoff'])){
            if($_POST['accoff']=="Choose Account Officer"){
            $errors = "Select Account Officer";
            }else{
                $accoff = test_input(strtoupper($_POST['accoff']));
            }
        }
        
        
        // // Check file size
        // if ($_FILES["propic"]["size"] > 500000) {
        //     $alerttype="danger";
        //   $errors= "Sorry, your file is too large.";
        //   $uploadOk = 0;
        // }else{
        //     move_uploaded_file($_FILES["propic"]["tmp_name"], $target_file);
        //     $picture = $_FILES["propic"]["name"];
        // }

        

        $occupation = test_input($_POST['occupation']);
        $dob = test_input($_POST['dob']);

        //$picture = $_POST['propic'];
        
        $state = test_input($_POST['state']);
        $resadd= test_input($_POST['resadd']);
        $resadd = mysqli_real_escape_string($conn,strtoupper($resadd));
        $busadd = test_input($_POST['busadd']);
        $busadd = mysqli_real_escape_string($conn,strtoupper($busadd));

        /*Next of Kin Details*/
        $nok_name= test_input(strtoupper($_POST['nok-name']));

        if(!is_numeric($_POST['nok-pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $nok_pno = test_input($_POST['pno']);
        }

        $relationship = test_input(strtoupper($_POST['relationship']));
        $relationship = mysqli_real_escape_string($conn,$relationship);
        $nok_address = test_input(strtoupper($_POST['nok-address']));
        $nok_address = mysqli_real_escape_string($conn,$nok_address);
        // $qualification = test_input($_POST['qualification']);
        date_default_timezone_set('Africa/Lagos');
        $regdate = date('Y-m-d');

        $dt = date("Y-m-d h:i:sa");
        //if($numrows > 0){
          //$alerttype="danger";
        //$errors = "You have registered before!";
        //}
        if(isset($errors)){
            $msg = $errors;
            $alerttype= "danger";
        }else{
        
            $sql= "INSERT INTO member(id,savings_type,member_id,surname,firstname,othername,phone,occupation,date_of_birth,email,gender,group_name,mid,midno,bvn,picture,account_officer,res_address,bus_address,state,country,kin_name,kin_phone,relationship,kin_address,reg_date,upd,created_by,updated_by,status,status2) 
            VALUES (null,'$savtype','$memberid','$surname','$firstname','$othername','$pno','$occupation','$dob','$email','$gender','$groupname','$mid','$nin','$bvn',NULL,'$accoff','$resadd','$busadd','$state','Nigeria','$nok_name','$nok_pno','$relationship','$nok_address','$regdate',null,'$dbname',NULL,'undelete','Inactive')";

            $query = mysqli_query($conn,$sql) or die($sql);
            if($query){
                 //Insert into bank tbl
            $bankq= "INSERT INTO bank(id,member_id,account_name,bank_name,account_number,creation_date,updated_by) VALUES(null,'$memberid','$fullname',null,null,now(),null)";
            mysqli_query($conn,$bankq);

           //  //Insert reg. fee into members_master_tbl
           // $sqlregfee="INSERT INTO `members_master_tbl`(`mem_id`, `trans_id`, `cust_acc`, `cust_name`, `account_officer`, `amount`, `narration`, `ref_no`, `trans_type`, `entry_type`, `pay_type`, `status`, `status2`, `status3`, `post_by`, `confirm_by`, `confirm_dt`, `trans_date`, `date_time`) VALUES (NULL,'N/A','$memberid','$fullname','$accoff','$regfee','Registration Fee','N/A','X/D','Credit','Cash','Processing','N/A','N/A','$dbname',NULL,NULL,'$regdate','$dt')";
           //  mysqli_query($conn,$sqlregfee);

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
        <title>Bigfund | Member Account Creation </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <!-- <link rel="shortcut icon" href="assets/images/favicon1.ico"> -->
        <link rel="icon" type="image/x-icon" href="assets/images/bigfund.png">

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
                                        <form autocomplete="off" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">

                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Savings Type</label>
                                                        <select name="savtype" value="<?php echo $savtype;?>" class="form-select">
                                                            <option selected>Choose Savings Type</option>
                                                            <?php 
                                                                $savquery = "select * from savings_type_tbl where status='active'";
                                                                $savres = mysqli_query($conn,$savquery);
                                                                while($savrows = mysqli_fetch_assoc($savres)){
                                                                    $dbsn = $savrows['savings_name'];
                                                                    ?>
                                                                    <option value="<?php echo $dbsn; ?>"><?php echo $dbsn; ?></option>
                                                            <?php }?>
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-surname-input" class="form-label">Surname</label>
                                                        <input type="text" name="surname" value="<?php echo $surname;?>" class="form-control" id="formrow-surname-input" placeholder="Enter your Surname" required>
                                                    </div>
                                                    
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-firstname-input" class="form-label">First name</label>
                                                        <input type="text" name="firstname" value="<?php echo $firstname;?>" class="form-control" id="formrow-firstname-input" placeholder="Enter your first name" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-othername-input" class="form-label">Other name</label>
                                                        <input type="text" value="<?php echo $othername;?>" name="othername" class="form-control" id="formrow-othername-input" placeholder="Enter your Other name">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Phone Number</label>
                                                        <input type="text" name="pno" value="<?php echo $pno;?>" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="useremail" class="form-label">Email</label>
                                                        <input type="email" name="email" value="<?php echo $email;?>" class="form-control" id="useremail" placeholder="Enter email">  
                                                        <div class="invalid-feedback">
                                                            Please Enter Email
                                                        </div>        
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Gender</label>
                                                        <select name="gender" id="formrow-inputState" value="<?php echo $gender;?>"class="form-select">
                                                            <option selected>Choose Gender</option>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        
                                                        <label for="formrow-inputgroup" class="form-label">Group</label>
                                                        <select onchange="showAccOff(this.value)" name="groupname" value="<?php echo $groupname;?>" id="inputgroup" class="form-select">
                                                            <option value="Choose Group" selected>Choose Group</option>
                                                            <?php 
                                                            $groupquery = mysqli_query($conn,"SELECT * FROM group_tbl WHERE status='Active' AND status!='deleted'");
                                                            while($groupdata = mysqli_fetch_assoc($groupquery)){
                                                            $dbgroup = $groupdata['group_name'];?>
                                                            
                                                            <option value="<?php echo $dbgroup; ?>"><?php echo $dbgroup; ?></option>
                                                            <?php }?>
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label>Means of ID</label>
                                                        <select name="mid" value="<?php echo $mid;?>" class="form-select">
                                                            <option selected>Choose Means of ID</option>
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
                                                        <label for="formrow-nin-input" class="form-label">Means of ID Number</label>
                                                        <input type="text" name="nin" value="<?php echo $nin;?>" class="form-control" id="formrow-nin-input" placeholder="Enter your NIN number">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Bank Verication Number(BVN)</label>
                                                        <input type="text" name="bvn" value="<?php echo $bvn;?>" class="form-control" id="formrow-bvn-input" placeholder="Enter your BVN number" maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-occupation-input" class="form-label">Occupation</label>
                                                        <input type="text" name="occupation" value="<?php echo $occupation;?>" class="form-control" id="formrow-occupation-input" placeholder="Enter Occupation">
                                                    </div>
                                                </div>
                                                <!-- <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-bvn-input" class="form-label">Registration Fee</label>
                                                        <input type="text" name="regfee" value="<?php echo $regfee;?>" class="form-control" id="input" placeholder="Enter Amount">
                                                    </div>
                                                </div> -->
                                                <!-- <div class="col-lg-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputaccountofficer" class="form-label">Account Officer</label>
                                                        <select name="accoff" id="formrow-inputState" value="<?php echo $accoff;?>" class="form-select">
                                                            <option value="Choose Account Officer" selected>Choose Account Officer</option>
                                                            <?php 
                                                            $sql ="SELECT firstname,lastname FROM staff_tbl WHERE user_type!='Admin'";
                                                            $result= mysqli_query($conn,$sql);
                                                            while($rows = mysqli_fetch_assoc($result)){
                                                            ?>
                                                            <option value="<?php echo $rows['lastname']." ".$rows['firstname'];?>"><?php echo $rows['lastname']." ".$rows['firstname'];?></option>
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
                                                        <label for="formrow-dateofbirth-input" class="form-label">Date of Birth</label>
                                                        <input type="date" name="dob" value="<?php echo $dob;?>" class="form-control" id="example-date-input">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-state-input" class="form-label">State of Residence</label>
                                                        <input type="text" name="state" value="<?php echo $state;?>" class="form-control" id="formrow-state-input" placeholder="State" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Residential Address</label>
                                                        <input type="text" name="resadd" value="<?php echo $resadd;?>" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Residential Address" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                
                                                
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-businessaddress-input" class="form-label">Business Address</label>
                                                        <input type="text" name="busadd" value="<?php echo $busadd;?>" class="form-control" id="formrow-businessaddress-input" placeholder="Enter your Business Address" required="">
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
                                                <!-- <input class="btn btn-warning" type="reset" name="reset" value="Reset"> -->
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
