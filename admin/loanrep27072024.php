<?php

include "../db.php";
include "../auth.php";

$lid = "";
if(isset($_GET['lid'])){
    $lid = $_GET['lid'];
}

$savings_amount=$memberid = $loancode = $dbloanmembername = $dbgroupname =$dbaccountofficer=$dbloanmemberid= $dbloancode= $dbloanpi = $dbloanappliedamount =$dbloanapprovedamount= $totalpayable =$dbloanapproveddate=$dbloanmaturitydate=$wkr=$noofweek=$dbloanbal="";

$loanmembersql = "SELECT loan_code,sum(debit) as debit, sum(savings_amount) as savamt,member_name,member_id,group_name,account_officer,tenor,applied_amount,approved_amount,approved_date,maturity_date,total_payable,SUM(repayment_amount) as tp, total_payable- SUM(repayment_amount) FROM rep_tbl WHERE loan_code = '$lid' AND status!='pending'";

$loanmemberquery = mysqli_query($conn,$loanmembersql) or die($loanmembersql);
if(mysqli_num_rows($loanmemberquery)==1){
    $loanmemberdata = mysqli_fetch_assoc($loanmemberquery);
    $dbloancode = $loanmemberdata['loan_code'];
    $dbloanmembername = $loanmemberdata['member_name'];
    $dbloanmemberid = $loanmemberdata['member_id'];
    $dbgroupname = $loanmemberdata['group_name'];
    $dbaccountofficer = $loanmemberdata['account_officer'];
    $dbtenor = $loanmemberdata['tenor'];
    $dbloanappliedamount = $loanmemberdata['applied_amount'];
    $dbloanapprovedamount = $loanmemberdata['approved_amount'];
    $dbloanapproveddate = $loanmemberdata['approved_date'];
    $dbloanmaturitydate = $loanmemberdata['maturity_date'];
    // $dbloanpurpose = $loanmemberdata['loan_purpose'];
    // $dbloanstatus = $loanmemberdata['status1'];
    $dbsavamt = $loanmemberdata['savamt'];
    $dbloanpi = $loanmemberdata['total_payable'];
    $dbloanpi2 = $loanmemberdata['debit'];
    $dbtotalPaid = $loanmemberdata['tp'];
    $dbloanbal = $dbloanpi2 - $dbtotalPaid;
    // $dbloanbal2 = $dbloanpi2 -($dbtotalPaid + $dbsavamt);


    //Getting of month
    if($dbloanapprovedamount>='400001' && $dbloanapprovedamount<='500000'){
        $mnt = 103400;
        $noofmon  = $dbloanbal/$mnt;
    }elseif($dbloanapprovedamount>='900000' && $dbloanapprovedamount<='1000000'){
        $mnt = 206800;
        $noofmon  = $dbloanbal/$mnt;
    }elseif($dbloanapprovedamount>='1000000' && $dbloanapprovedamount<='2000000'){
        $mnt = 413600;
        $noofmon  = $dbloanbal/$mnt;
    }  

    //Getting number of weeks
    if($dbloanapprovedamount>='100001' && $dbloanapprovedamount<='150000'){
        $wkr = 7800;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='0' && $dbloanapprovedamount<='50000'){
        $wkr = 2600;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='50001' && $dbloanapprovedamount<='100000'){
        $wkr = 5200;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='150001' && $dbloanapprovedamount<='200000'){
        $wkr = 10400;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='200001' && $dbloanapprovedamount<='300000'){
        $wkr = 15600;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='300001' && $dbloanapprovedamount<='400000'){
        $wkr = 20800;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='400001' && $dbloanapprovedamount<='500000'){
        $wkr = 26000;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='900000' && $dbloanapprovedamount<='1000000'){
        $wkr = 52000;
        $noofweek  = $dbloanbal/$wkr;
    }elseif($dbloanapprovedamount>='1000000' && $dbloanapprovedamount<='2000000'){
        $wkr = 104000;
        $noofweek  = $dbloanbal/$wkr;
    }                                      

    //Getting number of days
    if($dbloanapprovedamount>='1' && $dbloanapprovedamount<='30000'){
        $dr = 1500;
        $noofday = $dbloanbal/$dr;
    }elseif($dbloanapprovedamount>='30001' && $dbloanapprovedamount<='50000'){
        $dr = 2500;
        $noofday = $dbloanbal/$dr;
    }elseif($dbloanapprovedamount>='50001' && $dbloanapprovedamount<='70000'){
        $dr = 3500;
        $noofday = $dbloanbal/$dr;
    }elseif($dbloanapprovedamount>='70001' && $dbloanapprovedamount<='80000'){
        $dr = 4000;
        $noofday = $dbloanbal/$dr;
    }elseif($dbloanapprovedamount>='80001' && $dbloanapprovedamount<='90000'){
        $dr = 4500;
        $noofday = $dbloanbal/$dr;
    }elseif($dbloanapprovedamount>='90001' && $dbloanapprovedamount<='100000'){
        $dr = 5000;
        $noofday = $dbloanbal/$dr;
    }
    elseif($dbloanapprovedamount>='100001' && $dbloanapprovedamount<='120000'){
        $dr = 6000;
        $noofday = $dbloanbal/$dr;
    }
    $dbtotalPaid = $dbloanpi - $dbloanbal;
    // $dbtotalPaid2 = ($dbloanpi - $dbloanbal) + $dbsavamt;
    // $dbloancomments = $loanmemberdata['comments'];
}

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

//Insert into deposit account
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){

    $tid = rand(1,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');

    $tid2 = "1".rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');

    if(isset($_POST['memberid'])){
        $member_id = test_input($_POST['memberid']);
    }
    if(isset($_POST['groupname'])){
        $groupname = test_input($_POST['groupname']);
    }
    if(isset($_POST['accoff'])){
        $accoff = test_input($_POST['accoff']);
    }
    if(isset($_POST['tenor'])){
        $tenor = test_input($_POST['tenor']);
    }
    if(isset($_POST['loancode'])){
        $loancode = test_input($_POST['loancode']);
    }
    if(isset($_POST['name'])){
        $member_name = test_input($_POST['name']);
    }
    if(isset($_POST['totalpayable'])){
        $totalpayable = $_POST['totalpayable'];
    }

    if(empty($_POST['totalpayable'])){
            $errors = "Total Payable is empty";
        }else{
            $totalpayable = $_POST['totalpayable'];
            $totalpayable = str_replace(',', '', $totalpayable);
            if(is_numeric($totalpayable)){
                $totalpayable = $totalpayable;
            }else{
                $errors = "Number Not Numeric";
            }
    }

    if(isset($_POST['appliedamount'])){
        $appliedamount = $_POST['appliedamount'];
    }

    if(isset($_POST['approvedamount'])){
        $approvedamount = $_POST['approvedamount'];
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

    if(empty($_POST['savamount'])){
            $errors = "Amount is empty";
        }else{
            $savamount = $_POST['savamount'];
            $savamount = str_replace(',', '', $savamount);
            if(is_numeric($savamount)){
                $savamount = $savamount;
            }else{
                $errors = "Number Not Numeric";
            }
    }
    
    if($_POST["entrytype"]=="Dr"){
        $reverseamount = $amount; 
        $repayment_amount = 0;
        $entrytype='Debit';
        $debit=$amount;
        $credit=0;
    }elseif($_POST["entrytype"]=="Cr"){
        $reverseamount = 0; 
        $repayment_amount = $amount;
        $entrytype='Credit';
        $debit=0;
        $credit=$amount;
    }

    if(isset($_POST['loancode'])){
        $loan_code = $_POST['loancode'];
    }   
    if(isset($_POST['narration'])){
        $narration = test_input($_POST['narration']);
    }   

    if(isset($_POST['approveddate'])){
        $approveddate = $_POST['approveddate'];
    }   
    if(isset($_POST['approveddate'])){
        $approveddate = test_input($_POST['approveddate']);
    }

    if(isset($_POST['maturitydate'])){
        $maturitydate = $_POST['maturitydate'];
    }   
    if(isset($_POST['maturitydate'])){
        $maturitydate = test_input($_POST['maturitydate']);
    }
   
    date_default_timezone_set('Africa/Lagos');
    $dt = date('Y-m-d h:i:sa');

    if(isset($errors)){
        $alerttype = "danger";
        $msg = $errors;
    }else{
        $sql = "INSERT INTO rep_tbl(rp_id,trans_id,member_id,loan_code,member_name,group_name,account_officer,tenor,applied_amount,approved_amount,reverseamount,total_payable,repayment_amount,savings_amount,debit,credit,entry_type,status,narration,confirmed_by,created_by,creation_date,approved_date,maturity_date,date_time,updated_by,update_dt,status2) VALUES (NULL,'$tid','$member_id','$loancode','$member_name','$groupname','$accoff','$tenor','$appliedamount','$approvedamount','$reverseamount','$totalpayable','$repayment_amount','$savamount','$debit','$credit','$entrytype','pending','$narration',NULL,'$dbname',now(),'$approveddate','$maturitydate','$dt',NULL,NULL,'undelete')";
        $query2 = mysqli_query($conn,$sql) or die($sql);

        /*** Insert into income table ***/
        $sqlinc = "INSERT INTO rep_tbl(rp_id,trans_id,member_id,loan_code,member_name,group_name,account_officer,tenor,applied_amount,approved_amount,reverseamount,total_payable,repayment_amount,savings_amount,debit,credit,entry_type,status,narration,confirmed_by,created_by,creation_date,date_time,updated_by,update_dt,status2) VALUES (NULL,'$tid','$member_id','100129
','Loan Account',NULL,NULL,'$tenor','$appliedamount','$approvedamount','$reverseamount','$totalpayable','$savings_amount',NULL,'$credit','$debit',NULL,'pending','$narration',NULL,'$dbname',now(),'$dt',NULL,NULL,'undelete')";
        $queryinc = mysqli_query($conn,$sqlinc);


        /*** Insert into deposit_savings table ***/
        $sqlsav = "INSERT INTO `deposit_savings_tbl`(`mem_id`, `savings_type`, `trans_id`, `account_number`, `cust_name`, `account_officer`, `debit`, `credit`, `amount`, `narration`, `ref_no`, `trans_type`, `entry_type`, `pay_type`, `status`, `status2`, `status3`, `post_by`, `confirm_by`, `confirm_dt`, `trans_date`, `date_time`, `checked`) VALUES (null,'$tenor','$tid2','$member_id','$member_name','$accoff',0,'$savamount','$savamount','$narration','NA','CD','Credit','Cash','Processing','Undelete','unmove','$dbname',null,null,now(),'$dt',null)";
        $querysav = mysqli_query($conn,$sqlsav);

        //Insert the second leg into the depost_savings_tbl
        $sqldep = "INSERT INTO `deposit_savings_tbl`(`mem_id`,`savings_type`, `trans_id`, `account_number`, `cust_name`, `account_officer`,`debit`,`credit`, `amount`, `narration`,`ref_no`,`trans_type`, `entry_type`, `pay_type`, `status`, `status2`,`status3`, `post_by`, `confirm_by`,`confirm_dt`, `trans_date`, `date_time`,`checked`) VALUES (NULL,'$tenor','$tid2','100467','Savings Deposit','$accoff','$savamount',0,0,'$narration','NA','CD','Debit','Cash','Processing','undelete','unmove','$dbname',NULL,NULL,now(),'$dt',null)";
        $querydep = mysqli_query($conn,$sqldep) or die($sqldep);

        /*** Insert into income table ***/
        $sqlinc2 = "INSERT INTO `income_tbl`(`inc_id`,`trans_id`, `account_no`, `account_name`,`cust_acc`, `cust_name`, `debit`, `credit`,`status`,`status2`,`post_by`,`confirmed_by`,`confirm_dt`,`trans_date`,`date_time`) VALUES (NULL,'$tid2','100467','Savings Deposit','$member_id','$member_name',0,'$savamount','pending','undelete','$dbname',NULL,NULL,now(),'$dt')";
        $queryinc2 = mysqli_query($conn,$sqlinc2);

        
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
        <title>Geexsmith | Member Account Creation </title>
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
                                                        <input type="text" required="" name="name" value="<?php echo strtoupper($dbloanmembername);?>" class="form-control" id="formrow-name-input" readonly>
                                                    </div>
                                                </div>
                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Amount Granted</label>
                                                        <input type="number" required="" name="loangranted" value="<?php echo $dbloanapprovedamount;?>" class="form-control" id="formrow-contributionamount-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Total Payable</label>
                                                        <input type="number" required="" name="totalpayable" value="<?php echo $dbloanpi;?>" class="form-control" id="formrow-contributionamount-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Total Paid</label>
                                                        <input style="font-weight: bold;" type="number" required="" name="totalpaid2" value="<?php echo $dbtotalPaid;?>" class="form-control" id="formrow-contributionamount-input" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Balance</label>
                                                        <input style="font-weight: bold;" type="number" required="" name="balance" value="<?php echo $dbloanbal;?>" class="form-control" id="formrow-contributionamount-input" readonly>
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
                                                        <label for="formrow-contributionamount-input" class="form-label">Repayment Amount</label>
                                                        <input type="text" name="amount" class="form-control" id="input" required>
                                                        <input hidden type="number" name="memberid" value="<?php echo $dbloanmemberid;?>">
                                                         <input hidden type="text" name="groupname" value="<?php echo $dbgroupname;?>">
                                                         <input hidden type="text" name="accoff" value="<?php echo $dbaccountofficer;?>">
                                                         <input hidden type="text" name="tenor" value="<?php echo $dbtenor;?>">
                                                        <input hidden type="number" name="loancode" value="<?php echo $dbloancode;?>">
                                                        <input hidden type="text" name="name" value="<?php echo $dbloanmembername;?>">
                                                        <input hidden type="number" name="totalpayable" value="<?php echo $dbloanpi;?>">
                                                        <input hidden type="number" name="appliedamount" value="<?php echo $dbloanappliedamount;?>">
                                                        <input hidden type="number" name="approvedamount" value="<?php echo $dbloanapprovedamount;?>">
                                                        <input hidden type="date" name="approveddate" value="<?php echo $dbloanapproveddate;?>">
                                                        <input hidden type="date" name="maturitydate" value="<?php echo $dbloanmaturitydate;?>">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Savings Amount</label>
                                                        <input type="text" name="savamount" class="form-control" id="input2" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="formrow-week-input" class="form-label">Narration</label>
                                                    <select name="narration" id="formrow-inputnarration" class="form-select" required>
                                                                <option value="">Narration</option>
                                                                <?php 
                                                                if($dbtenor=='MONTHLY'){
                                                                $m=$noofmon;
                                                                $i = (6-$m)+1;
                                                                
                                                                    $month = "MONTH"."".$i;
                                                                ?>
                                                                <option value="<?php echo $month;?>"><?php echo $month;?></option>
                                                                <?php }?>

                                                                <?php 
                                                                if($dbtenor=='WEEKLY'){
                                                                $r=$noofweek;
                                                                $i = (23-$r)+1;
                                                                // $r= ($i + $r)-1;
                                                                // for($i;$i<=$r;$i++){
                                                                     $week = "WEEK"."".$i;
                                                                ?>
                                                                <option value="<?php echo $week;?>"><?php echo $week;?></option>
                                                                <?php }?>
                                                                
                                                                <!--For daily loan-->
                                                                <?php 
                                                                if($dbtenor=='DAILY'){
                                                                $r=$noofday;
                                                                $i = (24-$r)+1;
                                                                // $r= ($i + $r)-1;
                                                                // for($i;$i<=$r;$i++){
                                                                    $day = "DAY"."".$i;
                                                                ?>
                                                                <option value="<?php echo $day;?>"><?php echo $day;?></option>
                                                                <?php }?>
                                                                <option value="HOLIDAY">HOLIDAY</option>             
                                                    </select>
                                                </div>
                                                <!-- div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-narration-input" class="form-label">Narration</label>
                                                        <textarea class="form-control" name="narration" id="formrow-narration-input">
                                                        </textarea>
                                                    </div>
                                                </div> -->
                                            <div class="row" style="margin-top:25px;">
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
       
        <script type="text/javascript">
            input2.addEventListener('keyup', function(event) {
            event.target.value = event.target.value
            .replace(/\D/g, '')
            .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
            });
        </script>
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
