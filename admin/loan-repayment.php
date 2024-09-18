<?php

include "../db.php";
include "../auth.php";

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$fullname=$loancode=$loangranted=$initialdeposit=$memberid=$member_id=$initial_deposit="";

/*Code to view member based on their loan code*/
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['vm'])){
$loancode = test_input($_POST['loancode']);
$sql = "SELECT * FROM loan_request WHERE loan_code ='".$loancode."'";
$query = mysqli_query($conn,$sql) or die($sql);
$row = mysqli_fetch_assoc($query);
$memberid = $row['member_id'];
$fullname = $row['member_name'];
$loangranted = $row['loan_amount'];
$initialdeposit = $row['compulsory_sav'];

}
}
?>


<!--Insert into deposit account-->
<?php

//include "../db.php";

function sanitize($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}



if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){

    $tid = "RP".rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');

    // if(empty($_POST['amount'])){
    //     $errors = "Contribution Amount is empty";
    // }else{
    //     $amount = $_POST['amount'];
    // }
    if(isset($_POST['memberid'])){
        $member_id = $_POST['memberid'];
    }
    if(isset($_POST['name'])){
        $member_name = test_input($_POST['name']);
    }

    if(empty($_POST['amount'])){
            $errors = "Amount is empty";
        }else{
            $amount = $_POST['amount'];
            $amount = str_replace(',', '', $amount);
            if(is_numeric($amount)){
                $amount = $amount;
            }else{
                $errors = "Number Not Numeric";
            }
        }

    if($_POST["entrytype"]=="Dr"){
        $reverseamount = $amount; 
        $repayment_amount = 0;
    }else{
        $reverseamount = 0; 
        $repayment_amount = $amount;
    }
    if(isset($_POST['loancode'])){
        $loan_code = $_POST['loancode'];
    }   
    if(isset($_POST['narration'])){
        $narration = test_input($_POST['narration']);
    }   
    // $upd = date_create(null,timezone_open('Africa/Lagos'));
    // $upd = date_format($upd,'Y-m-d'); 
    // $trans_date = date('Y-m-d');
    $dt = date('Y-m-d h:i:sa');

    if(isset($errors)){
        $alerttype = "danger";
        $msg = $errors;
    }else{

        $sql = "INSERT INTO temp_rep_tbl(temp_rp_id,trans_id,member_id,loan_code,member_name,loan_amount,reverseamount,compulsory_sav,total_payable,repayment_amount,status,narration,confirmed_by,created_by,creation_date,date_time,updated_by,update_dt,status2) VALUES (NULL,'$tid','$member_id','$loan_code','$member_name',NULL,'$reverseamount',NULL,'$reverseamount','$repayment_amount','pending','$narration',NULL,'$dbname',now(),'$dt',NULL,NULL,'undelete')";

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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <!--
        <script type="text/javascript">
            $(window).load(function() {
                $(".loader").fadeOut("slow");
            });
        </script>-->

        <!--Get Transaction Data from database-->
        <!--
            <script>
            function loadTrans() {
              var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if(this.readyState == 4 && this.status==200){
                  document.getElementById("trans").innerHTML =
                  this.responseText;
                }
              };
              xhttp.open("GET","getdeposit.php", true);
              xhttp.send();
            }
            </script>-->
            <!--
        <style type="text/css">
            .loader {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: url('images/roundloader.gif') 50% 50% no-repeat rgb(249,249,249);
            opacity: .8;
            }
        </style>-->

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
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <input type="text" name="loancode" value="<?php echo $loancode;?>" class="form-control" id="formrow-memberid-input" placeholder="Enter your Loan Code" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <button type="submit" name="vm" class="btn btn-primary waves-effect waves-light">View Member</button>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                 <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-name-input" class="form-label">Name</label>
                                                        <input type="text" required="" name="name" value="<?php echo $fullname;?>" class="form-control" id="formrow-name-input" readonly>
                                                    </div>
                                                </div>
                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Loan Granted</label>
                                                        <input type="number" required="" name="loangranted" value="<?php echo $loangranted;?>" class="form-control" id="formrow-contributionamount-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-entrytype-input" class="form-label">Entry Type</label>
                                                        <select class="form-control" name="entrytype">
                                                            <option value="Dr">Debit</option>
                                                            <option value="Cr" selected>Credit</option>
                                                        </select>
                                                    </div>

                                                    
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Amount</label>
                                                        <input type="text" name="amount" class="form-control" id="input">
                                                        <input hidden type="number" name="memberid" value="<?php echo $memberid;?>">
                                                        <input hidden type="number" name="initialdeposit" value="<?php echo $initialdeposit;?>">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-narration-input" class="form-label">Narration</label>
                                                        <textarea class="form-control" name="narration" id="formrow-narration-input">
                                                        </textarea>
                                                    </div>
                                                </div>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Post</button>
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
