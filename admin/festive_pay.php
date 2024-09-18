<?php

include "../db.php";
include "../auth.php";

$feid = "";

if(isset($_GET['feid'])){
    $feid = $_GET['feid'];
}

 $dbfestiveid = $dbfestivememberid = $dbfestivemembername = $dbcategory = $dbaccountofficer = $dbppd = $dbmp = "";

$festivemembersql = "SELECT * FROM festive WHERE fe_id='$feid'";
$festivememberquery = mysqli_query($conn,$festivemembersql) or die($festivemembersql);
if(mysqli_num_rows($festivememberquery)==1){
    $festivememberdata = mysqli_fetch_assoc($festivememberquery);
    $dbfestiveid = $festivememberdata['fe_id'];
    $dbfestivememberid = $festivememberdata['member_id'];
    $dbfestivemembername = $festivememberdata['fullname'];
    $dbcategory = $festivememberdata['category'];
    $dbaccountofficer = $festivememberdata['account_officer'];
    $dbppd = $festivememberdata['price_per_day'];
    $dbmp = $festivememberdata['monthly_price'];
}

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

//Insert into festive_pay_tbl
$member_id = $fullname = $category = $accoff = $month = $ppd = $mp = $narration= $created_by = $creation_date = $creation_dt="";

if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){

    $tid = rand(1,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');

    if(isset($_POST['memberid'])){
        $member_id = test_input($_POST['memberid']);
    }
    if(isset($_POST['fullname'])){
        $fullname = test_input($_POST['fullname']);
    }
    if(isset($_POST['category'])){
        $category = test_input($_POST['category']);
    }
    if(isset($_POST['accoff'])){
        $accoff = test_input($_POST['accoff']);
    }
     if(isset($_POST['ppd'])){
        $ppd = test_input($_POST['ppd']);
    }    
     if(isset($_POST['mp'])){
        $mp = test_input($_POST['mp']);
    }

    if($_POST['month']=="Choose Month"){
        $errors = "Select a Month";
    }else{
        $month = test_input($_POST['month']);
    }

    date_default_timezone_set('Africa/Lagos');
    $year = date('Y');
   
   //Query to check if a transaction existed before
    $query="select * from festive_pay_tbl where month='".$_POST['month']."' AND member_id='".$_POST['memberid']."' AND year='".$year."'";

    if($result=mysqli_query($conn,$query)){
        if(mysqli_num_rows($result)>0){
        $errors = "You have paid for $month! Select another month.";
        }
    }
    date_default_timezone_set('Africa/Lagos');
    $year = date('Y');
    $dt = date('Y-m-d h:i:sa');

    if(isset($errors)){
        $alerttype = "danger";
        $msg = $errors;
    }else{
        $sql = "INSERT INTO `festive_pay_tbl`(`fepa_id`, `trans_id`, `member_id`, `fullname`, `category`, `account_officer`, `month`,`year`,`price_per_day`, `monthly_price`, `narration`, `created_by`, `creation_date`, `date_time`, `updated_by`, `update_dt`, `status`, `status2`) VALUES (null,'$tid','$member_id','$fullname','$category','$accoff','$month','$year','$ppd','$mp','Monthly Contribution','$dbname',now(),'$dt',null,null,'PAID','undelete')";
        $query2 = mysqli_query($conn,$sql) or die($sql);
        
        if($query2){
            $alerttype = "success";
            $msg = "Transaction Posted Successful";
        }else{
            $alerttype = "danger";
            $msg= "Transaction was not Successful";
        }

    }
  

}
}
?>
<!doctype html>
<html lang="en">


    
<head>
        
        <meta charset="utf-8" />
        <title>Geexsmith | Festive Pay </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/geexsmith.ico">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        

    </head>

    <body data-sidebar="dark">
        <!--<div class="loader"></div>-->
    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <?php include "navigation.php";?>
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                            <?php echo $msg;?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div> <?php } ?>
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4 class="mb-sm-0 font-size-18">Post Loan Transaction</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4"> Loan Transaction</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div class="row">
                                                 <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-name-input" class="form-label">Name</label>
                                                        <input type="text" required="" name="fullname" value="<?php echo $dbfestivemembername;?>" class="form-control" id="formrow-name-input" readonly>

                                                        <input hidden type="text" required="" name="festiveid" value="<?php echo $dbfestiveid;?>" class="form-control" id="formrow-name-input" readonly>

                                                        <input hidden type="text" required="" name="memberid" value="<?php echo $dbfestivememberid;?>" class="form-control" id="formrow-name-input" readonly>

                                                         <input hidden type="text" required="" name="category" value="<?php echo $dbcategory;?>" class="form-control" id="formrow-category-input" readonly>

                                                         <input hidden type="text" required="" name="accoff" value="<?php echo $dbaccountofficer;?>" class="form-control" id="formrow-category-input" readonly>

                                                         <input hidden type="text" required="" name="category" value="<?php echo $dbcategory;?>" class="form-control" id="formrow-category-input" readonly>

                                                         <input hidden type="number" required="" name="ppd" value="<?php echo $dbppd;?>" class="form-control" id="formrow-category-input" readonly>

                                                         <input hidden type="number" required="" name="mp" value="<?php echo $dbmp;?>" class="form-control" id="formrow-category-input" readonly>
                                                    </div>
                                                </div>
                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Monthly Contribution</label>
                                                        <input type="text" required="" name="mc" value="<?php echo $dbmp;?>" class="form-control" id="formrow-contributionamount-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-month-input" class="form-label">Choose Month</label>
                                                        <select id="month" name="month" id="month" class="form-select" required>
                                                                    <option selected>Choose Month</option>
                                                                    <option value="JAN">JAN</option>
                                                                    <option value="FEB">FEB</option>
                                                                    <option value="MAR">MAR</option>
                                                                    <option value="APR">APR</option>
                                                                    <option value="MAY">MAY</option>
                                                                    <option value="JUN">JUN</option>
                                                                    <option value="JUL">JUL</option>
                                                                    <option value="AUG">AUG</option>
                                                                    <option value="SEPT">SEPT</option>
                                                                    <option value="OCT">OCT</option>
                                                                    <option value="NOV">NOV</option>
                                                                    <option value="DEC">DEC</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Pay</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <?php mysqli_close($conn);?>
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
       
        <!--
        <script>
            function getmemberID(str) {
              var xhttp;
              if (str == "") {
                document.getElementById("trans").innerHTML = "";
                return;
              }
              xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                }
              };
              xhttp.open("GET", "getdeposit.php?q="+str, true);
              xhttp.send();
            }
        </script>-->


    </body>


</html>
