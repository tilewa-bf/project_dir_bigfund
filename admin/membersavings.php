<?php

include "../db.php";
include "../auth.php";

$mid = $st = "";
if(isset($_GET['mid'])){
    $mid = $_GET['mid'];
}
if(isset($_GET['st'])){
    $st = $_GET['st'];
}

$dbsavtype=$dbsurname=$dbfirstname=$dbothername=$dbmembername= $dbmemberid = $dbaccountofficer =$dbloanmemberid= $dbloancode= $dbloanpi = $dbloanapprovedamount= $totalpayable= "";

$membersql = "SELECT * FROM member WHERE member_id='$mid'";
$memberquery = mysqli_query($conn,$membersql) or die($membersql);
if(mysqli_num_rows($memberquery)==1){
    $memberdata = mysqli_fetch_assoc($memberquery);
    $dbsavtype = $memberdata['savings_type'];
    $dbid = $memberdata['id'];
    $dbmemberid = $memberdata['member_id'];
    $dbsurname = $memberdata['surname'];
    $dbfirstname = $memberdata['firstname'];
    $dbothername = $memberdata['othername'];
    $dbmembername = $dbsurname." ".$dbfirstname." ".$dbothername; 
    $dbaccountofficer = $memberdata['account_officer'];   
}



function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

// $custid=$dbcustacc=$surname=$firstname=$othername=$fullname=$glacc=$dbaccoff="";
// /*Code to view member based on their ID number*/
// if($_SERVER["REQUEST_METHOD"] == "POST"){
//     if(isset($_POST['vc'])){
//         $custacc = test_input($_POST['custacc']);
//         $sql = "SELECT * FROM dailysaving WHERE cust_acc ='".$custacc."'";
//         $query = mysqli_query($conn,$sql) or die($sql);
//         $row = mysqli_fetch_assoc($query);
//         $dbcustid = $row['cust_id'];
//         $dbcustacc = $row['cust_acc'];
//         $surname = $row['surname'];
//         $firstname = $row['firstname'];
//         $othername = $row['othername'];
//         $fullname = $surname. " ". $firstname. " ". $othername;
//         $dbaccoff = $row['account_officer'];
//     }
// }
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


//Code to add new entry into the database
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['addentry'])){
        $alerttype=$accountno=$name=$amt=$glaccno=$entrytype=$entrytype2=$narration=$glaccno=$glaccname="";
        $newbal= $prevbal= "";
        $tid = "1".rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');

        if(empty($_POST['accountno'])){
            $errors = "Account Number is Empty";
            $alerttype = 'danger';
        }else{
            $accountno = test_input($_POST['accountno']);
        }

        if(empty($_POST['savtype'])){
            $errors = "Savings Type Is Empty";
            $alerttype = 'danger';
        }else{
            $savtype = $_POST['savtype'];
        }

        if(empty($_POST['name'])){
            $errors = "Account Name name is Empty";
            $alerttype = 'danger';
        }else{
            $name = $_POST['name'];
        }

        if(isset($_POST['transtype'])){
            if(!empty($_POST)){
                $transtype = test_input($_POST['transtype']);
            }else{
                $errors = "Choose Transaction Type";
                $alerttype = 'danger';
            }
        }

        if(isset($_POST['entrytype'])){
            if(!empty($_POST)){
                $entrytype = test_input($_POST['entrytype']);
            }else{
                $errors = "Choose an Entry Type";
                $alerttype = 'danger';
            }
        }

        if(isset($_POST['entrytype2'])){
            if(!empty($_POST)){
                $entrytype2 = test_input($_POST['entrytype2']);
            }else{
                $errors = "Choose an Entry Type";
                $alerttype = 'danger';
            }
        }

        if($entrytype==$entrytype2){
            $errors = "Select different entry type";
            $alerttype = 'danger';
        }

        if(empty($_POST['approveamount'])){
            $errors = "Amount is empty";
            $alerttype = "danger";
        }else{
            $amt = $_POST['approveamount'];
            $amt = str_replace(',', '', $amt);
            if(is_numeric($amt)){
                $amt = $amt;
            }else{
                $errors = "Number Not Numeric";
                $alerttype = 'danger';
            }
        }

        if($entrytype=="Debit"){
            $credit=0;
            $debit=$amt;
        }elseif($entrytype=='Credit'){
           $debit=0;
           $credit=$amt;
        }

        if(empty($_POST['accoff'])){
            $errors = "Account Officer is Empty";
            $alerttype = "danger";
        }else{
            $accountoff = $_POST['accoff'];
        }

        if(isset($_POST['total'])){
            $total = $_POST['total'];    
        }

        if($_POST['glaccount']=="Select GL account"){
            $errors = "Select GL account";
            $alerttype = 'danger';
        }else{
            $glaccount = test_input($_POST['glaccount']);
            if(isset($glaccount)){
              $glaccno = preg_replace("/[^0-9]/", '', $glaccount);
              //$_SESSION['glaccno'] = $glaccno;
              $glaccname = preg_replace('/[^a-zA-Z]/', " ", $glaccount);  
              $glaccname = trim($glaccname);
          }
      }


    if(isset($_POST['narration'])){
        if(!empty($_POST['narration'])){
            $narration = test_input($_POST['narration']);
        }
        else{
            $errors = "Narration is Empty";
            $alerttype = 'danger';
        }
    }   
    //Query to get the interest rate from deposit_savings_tbl
    $savquery = "SELECT * FROM savings_type_tbl WHERE status='active' AND savings_name='FIXED SAVINGS'";
    $savres = mysqli_query($conn,$savquery);
    $savrows = mysqli_fetch_assoc($savres);
    $dbsi = $savrows['savings_loan_int'];

    //Query to select user balance from the savings_deposit_tbl
    $sqlbalance = "SELECT sum(credit)-sum(debit) as bal FROM `deposit_savings_tbl` WHERE account_number='$accountno' AND status='Confirmed';";
    $querybalance = mysqli_query($conn,$sqlbalance);
    $balrows = mysqli_fetch_assoc($querybalance);
    if(isset($balrows['bal'])){
        $balance = $balrows['bal'];
        $balance = $balance + $credit;
    }else{
        $balance = 0;
        $balance = $balance + $credit;
    }
    



    date_default_timezone_set('Africa/Lagos');
    $trans_date = date('Y-m-d');
    $dt = date('Y-m-d h:i:sa');

    if(isset($errors)){
        $msg = $errors;
        $alerttype = 'warning';
    }else{

        $sql = "INSERT INTO `deposit_savings_tbl`(`mem_id`,`savings_type`, `trans_id`, `account_number`, `cust_name`, `account_officer`,`debit`,`credit`, `amount`,`balance`,`interest_rate`, `narration`,`ref_no`,`trans_type`, `entry_type`, `pay_type`, `status`, `status2`,`status3`, `post_by`, `confirm_by`,`confirm_dt`, `trans_date`, `date_time`) 
        VALUES (NULL,'$savtype','$tid','$accountno','$name','$accountoff','$debit','$credit','$amt','$balance','$dbsi','$narration','NA','$transtype','$entrytype','Cash','Pending','undelete','unmove','$dbname',NULL,NULL,'$trans_date','$dt')";
        $query2 = mysqli_query($conn,$sql) or die($sql);

        //Insert the second leg into the depost_savings_tbl
        $sqldep = "INSERT INTO `deposit_savings_tbl`(`mem_id`,`savings_type`, `trans_id`, `account_number`, `cust_name`, `account_officer`,`debit`,`credit`, `amount`, `narration`,`ref_no`,`trans_type`, `entry_type`, `pay_type`, `status`, `status2`,`status3`, `post_by`, `confirm_by`,`confirm_dt`, `trans_date`, `date_time`) 
        VALUES (NULL,'$savtype','$tid','$glaccno','$glaccname','$accountoff','$credit','$debit','$amt','$narration','NA','$transtype','$entrytype2','Cash','Pending','undelete','unmove','$dbname',NULL,NULL,'$trans_date','$dt')";
        $querydep = mysqli_query($conn,$sqldep) or die($sqldep);

        // //Insert sms into the depost_savings_tbl
        // $sqlsms = "INSERT INTO `deposit_savings_tbl`(`mem_id`,`savings_type`, `trans_id`, `account_number`, `cust_name`, `account_officer`,`debit`,`credit`, `amount`, `narration`,`ref_no`,`trans_type`, `entry_type`, `pay_type`, `status`, `status2`,`status3`, `post_by`, `confirm_by`,`confirm_dt`, `trans_date`, `date_time`) 
        // VALUES (NULL,'$savtype','$tid','100468','SMS','$accountoff',0,0,0,'SMS','NA','NA','Debit','NA','Processing','undelete','unmove','$dbname',NULL,NULL,'$trans_date','$dt')";
        // $querydep = mysqli_query($conn,$sqlsms) or die($sqlsms);

        /*** Insert into income table ***/
        $sqlinc = "INSERT INTO `income_tbl`(`inc_id`,`trans_id`, `account_no`, `account_name`,`cust_acc`, `cust_name`, `debit`, `credit`,`status`,`status2`,`post_by`,`confirmed_by`,`confirm_dt`,`trans_date`,`date_time`) VALUES (NULL,'$tid','$glaccno','$glaccname','$accountno','$name','$debit','$credit','Processing','undelete','$dbname',NULL,NULL,'$trans_date','$dt')";
        $queryinc = mysqli_query($conn,$sqlinc);

        if($query2){
            $msg2 = "Entry Added";
            $alerttype2 = 'success';
        }else{
            $msg2 = "Entry was not added successful";
            $alerttype2 = 'danger';
        }
    }

}  
}
?>


<?php

//include "../db.php";

$total = $glaccno= $amt2= $alerttype=$errors="";
if(isset($_POST['post'])){


    $trans_date = date('Y-m-d');
    $dt = date('Y-m-d h:i:s a');

    $sql = "UPDATE deposit_savings_tbl SET status = 'Processing' WHERE status='Pending' AND trans_type='CD' AND post_by='$dbname'"; 
    $result = mysqli_query($conn,$sql);

    if($result){
        $msg3 = "Transaction Posted Successful";
        $alerttype = 'success';
    }
        // }

}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Bigfund | Member Savings </title>
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

                        <?php if(isset($msg)){?><div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <?php echo $msg;?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div> <?php } ?>

                            <?php if(isset($msg2)){?><div class="alert alert-<?php echo $alerttype2;?> alert-dismissible fade show" role="alert">
                            <?php echo $msg2;?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div> <?php } ?>

                            <?php if(isset($msg3)){?><div class="alert alert-success alert-dismissible fade show" role="alert">
                            <?php echo $msg3;?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div> <?php } ?>
                            <!-- start page title -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                        <h4 class="mb-sm-0 font-size-18"><a href="savingsdeposit.php">Members / </a>Member Savings (DEPOSIT)</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li><a href="savingsdeposit.php">Members / </a></li>
                                            <li class="breadcrumb-item active">Member Savings (DEPOSIT)</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Member Savings</h4>
                                        <p style="color:red;">All asterisk(*) field are mandatory</p>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">


                                            <!-- <div class="row">

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <!--<label for="formrow-memberid-input" class="form-label">MEMBER ID</label>-->
                                                       <!--  <input type="text" name="custacc" value="<?php echo $custid;?>" class="form-control" id="formrow-customerid-input" placeholder="Enter Customer Number"> -->
                                                  <!--   </div>
                                                </div> -->
                                                <!-- <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <!--<label for="formrow-memberid-input" class="form-label">Click button below to view member</label>-->
                                                       <!--  <button type="submit" name="vc" class="btn btn-primary waves-effect waves-light">View Customer</button> -->
                                               <!--      </div>
                                                </div> -->
                                            <!-- /div> --> 

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-accountno-input" class="form-label">Account Number</label>
                                                        <input type="text" required name="accountno" value="<?php echo $dbmemberid;?>" class="form-control" id="formrow-passbookid-input" readonly>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-name-input" class="form-label">Name</label>
                                                        <input type="text" required name="name" value="<?php echo $dbmembername;?>" class="form-control" id="formrow-name-input" readonly>
                                                        <input type="text" required="" name="accoff" value="<?php echo $dbaccountofficer;?>" class="form-control" id="formrow-accountofficer-input" readonly hidden>
                                                        <input hidden type="text" required name="savtype" value="<?php echo $dbsavtype;?>" class="form-control" id="formrow-savtype-input" readonly>
                                                        
                                                    </div>
                                                </div>

                                                <div style="width: 100px;" class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Trans Type</label>
                                                        <select name="transtype" id="formrow-inputState" class="form-select">
                                                            <option value="CD">CD</option>     
                                                        </select>
                                                    </div>
                                                </div>

                                                <div style="width: 110px;" class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Entry Type</label>
                                                        <select name="entrytype" id="formrow-inputState" class="form-select">
                                                            <option value="Credit" selected>Credit</option>      
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-approveamount-input" class="form-label">Amount <span style="color:red;" title="This field is required!">*</span></label>
                                                        <input type="text" name="approveamount" value="" class="form-control" id="input">
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div hidden id="glaccount" class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputglacc" class="form-label">GL account</label>
                                                        <select required name="glaccount" id="glaccount" class="form-select">
                                                            <option>Select GL account</option>
                                                            <?php 
                                                            $sql ="SELECT * FROM general_ledger_tbl WHERE status='Active' AND status2!='deleted' AND gl_type='$dbsavtype'";
                                                            // $sql ="SELECT * FROM general_ledger_tbl WHERE status='Active' AND status2!='deleted'";
                                                            $result= mysqli_query($conn,$sql);
                                                            while($rows = mysqli_fetch_assoc($result)){
                                                                $dbglaccno = $rows['account_no'];
                                                                $dbglaccname = $rows['account_name'];
                                                                $dbglacc = $dbglaccno." ". $dbglaccname;
                                                                $dbgltype = $rows['gl_type'];
                                                                ?>
                                                                <option selected value="<?php echo $dbglacc;?>"><?php echo $dbglacc;?></option>
                                                            <?php }
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div hidden class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputState" class="form-label">Entry Type</label>
                                                        <select name="entrytype2" id="formrow-inputState" class="form-select">
                                                            <option value="Debit" selected="">Debit</option>
                                                            <option value="Credit">Credit</option>      
                                                        </select>
                                                    </div>
                                                </div>
                                            
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-narration-input" class="form-label">Narration <span style="color:red;" title="This field is required!">*</span></label>
                                                        <textarea style="text-align:left;" class="form-control" name="narration">Deposit</textarea>
                                                    </div>
                                                </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <div class="mb-3">
                                                            <button type="submit" name="addentry" class="btn btn-primary waves-effect waves-light" onclick="loadTrans()">Add Entry</button>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="table-wrapper-scroll-y my-custom-scrollbar" id="trans">
                                                    <table id="trans" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>SN</th>
                                                                <th>Account Number</th>
                                                                <th>Customer Name</th>
                                                                <th>Entry Type</th>
                                                                <th>Amount</th>
                                                                <th>Action</th>
                                                            </tr>                                          
                                                        </thead>
                                                        <tbody style="overflow-y:scroll; height:100px;">                                     
                                                            <?php
                                                            $total = 0;
                                                            $i = 1;
                                                            $sql = "SELECT * FROM deposit_savings_tbl WHERE status = 'Pending' AND post_by='$dbname' AND status2 = 'undelete' AND trans_type!='Deposit' AND credit!=0 AND account_number NOT LIKE '%100467%' ORDER BY mem_id ASC ";

                                                            $result= mysqli_query($conn, $sql) or die($sql);

                                                            while($rows = mysqli_fetch_assoc($result)){
                                                                $id = $rows['mem_id'];
                                                                $dbaccno = $rows['account_number'];
                                                                $transid = $rows['trans_id'];
                                                                $dbcustname = $rows['cust_name'];
                                                                $dbentrytype = $rows['entry_type'];
                                                                $amount = $rows['amount'];
                                                                $total = $total + $amount;
                                                                ?>
                                                                <tr>
                                                                    <td><?php echo $i; ?></td>
                                                                    <td><?php echo $dbaccno; ?></td>
                                                                    <td><?php echo $dbcustname; ?></td>
                                                                    <td><?php echo $dbentrytype; ?></td>
                                                                    <td><?php echo number_format($amount,2); ?></td>
                                                                    <input type="number" name="total" value="<?php echo $total;?>" class="form-control" id="formrow-contributionamount-input" hidden>
                                                                    <td>
                                                                        <input type="button" class="btn btn-danger" onclick="deletemembersaving(<?php echo $transid; ?>)" value="Delete" />
                                                                    </td>
                                                                </tr>
                                                                <?php $i++; }

                                                                mysqli_close($conn);

                                                                ?>

                                                            </tbody>

                                                            <tfoot>
                                                                <tr>
                                                                    <th>Total</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th style="font-size:16px;" id="total"><?php echo number_format($total,2);?></th>
                                                                </tr>
                                                            </tfoot>
                                                        </table>

                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <div class="mb-3">
                                                                <button type="submit" name="post" class="btn btn-primary waves-effect waves-light">Post Entry</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

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
                                <script>document.write(new Date().getFullYear())</script> © Nikol Empowerment.
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
        <script src="assets/js/pages/addcomma.js"></script>

        <script>
            function deletemembersaving(id){
                var r=confirm("Are You Sure You Want To Delete This Transaction."); 
                if (r==true) 
                { 
                 window.location.href='deletememsavdep.php?deletedeposit='+id;
             } 
             else 
             { 
                 alert("You pressed Cancel!"); 
             } 
         }
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

        <script>
            function deletedeposit(id){
                if(confirm('Are You Sure You Want To Delete This Entry')){
                    window.location.href='deletedailysaving2.php?deletedeposit='+id;
                }
            }
        </script>

        <script>
            function loadTrans() {
              var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if(this.readyState == 4 && this.status==200){
                  document.getElementById("trans").innerHTML =
                  this.responseText;
              }
          };
          xhttp.open("GET","getmemberdeposit.php", true);
          xhttp.send();
      }
  </script>



</body>
</html>
