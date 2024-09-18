<?php

include "../db.php";
include "../auth.php";


function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$custid=$dbcustacc=$surname=$firstname=$othername=$fullname=$dbaccoff="";
/*Code to view member based on their ID number*/
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['vc'])){


        $custacc = test_input($_POST['custacc']);

        $sql = "SELECT * FROM dailysaving WHERE cust_acc ='".$custacc."'";
        $query = mysqli_query($conn,$sql) or die($sql);

        $row = mysqli_fetch_assoc($query);
        $dbcustid = $row['cust_id'];
        $dbcustacc = $row['cust_acc'];
        $surname = $row['surname'];
        $firstname = $row['firstname'];
        $othername = $row['othername'];
        $fullname = $surname. " ". $firstname. " ". $othername;
        $dbaccoff = $row['account_officer'];
    }
}
?>


<!--Insert into deposit account-->
<?php

include "../db.php";

function sanitize($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

/////////////////////////////////////////////////////
//Code to add new entry into the database
if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['addentry'])){

        $alerttype=$accountno=$name=$accountoff=$amt="";

        $tid = "TD".rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');

        if(empty($_POST['accountno'])){
            $errors = "Account Number is Empty";
        }else{
            $accountno = test_input($_POST['accountno']);
        }

        if(empty($_POST['name'])){
            $errors = "Account Name name is Empty";
        }else{
            $name = $_POST['name'];
        }

        if(empty($_POST['accoff'])){
            $errors = "Account Officer is Empty";
        }else{
            $accountoff = $_POST['accoff'];
        }

        if(empty($_POST['amt'])){
            $errors = "Contribution Amount is empty";
        }else{
            $amt = $_POST['amt'];
        }

        $trans_date = date('Y-m-d');
        $dt = date('Y-m-d h:i:s a');

        if(isset($errors)){
            $msg = $errors;
            $alerttype = 'danger';
        }else{

            $sql = "INSERT INTO `data_entry_tbl`(`d_id`, `trans_id`, `cust_acc`, `cust_name`, `account_officer`, `amount`, `narration`,`ref_no`, `entry_type`, `pay_type`, `status`, `status2`,`status3`, `post_by`, `confirm_by`, `trans_date`, `date_time`) VALUES (NULL,'$tid','$accountno','$name','$accountoff','$amt','Daily Sav. Deposit','N/A','Deposit','Cash','Pending','undelete','unmove','$dbname',NULL,'$trans_date','$dt')";

            $query2 = mysqli_query($conn,$sql) or die($sql);
            if($query2){
                $msg = "Entry Added";
                $alerttype = 'success';
            }else{
                $msg= "Entry was not added successful";
                $alerttype = 'danger';
            }

        }

    }
}
?>


<?php

include "../db.php";

if(isset($_POST['post'])){

    $sql = "UPDATE data_entry_tbl SET status = 'Processing' WHERE status='Pending' AND post_by='$dbname'"; 
    $result = mysqli_query($conn,$sql);
    if($result){
        $msg = "Transaction Posted Successful";
        $alerttype = 'success';
    }
}
?>


<!DOCTYPE html>
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
        <style type="text/css">
            .my-custom-scrollbar {
                position: relative;
                height: 400px;
                overflow: auto;
            }
            .table-wrapper-scroll-y {
                display: block;
            }
        </style>

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

                                        <h4 class="mb-sm-0 font-size-18">Daily Savings Deposit</h4>

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
                                        <h4 class="card-title mb-4"> Daily Savings Deposit</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">


                                            <div class="row">

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <!--<label for="formrow-memberid-input" class="form-label">MEMBER ID</label>-->
                                                        <input type="text" name="custacc" value="<?php echo $custid;?>" class="form-control" id="formrow-customerid-input" placeholder="Enter Customer Number">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <!--<label for="formrow-memberid-input" class="form-label">Click button below to view member</label>-->
                                                        <button type="submit" name="vc" class="btn btn-primary waves-effect waves-light">View Customer</button>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-passbookid-input" class="form-label">Account Number</label>
                                                        <input type="text" required="" name="accountno" value="<?php echo $dbcustacc;?>" class="form-control" id="formrow-passbookid-input" readonly>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-name-input" class="form-label">Name</label>
                                                        <input type="text" required="" name="name" value="<?php echo $fullname;?>" class="form-control" id="formrow-name-input" readonly>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-accountofficer-input" class="form-label">Account officer</label>
                                                        <input type="text" required="" name="accoff" value="<?php echo $dbaccoff;?>" class="form-control" id="formrow-accountofficer-input" readonly>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Amount</label>
                                                        <input type="number" name="amt" value="" class="form-control" id="formrow-contributionamount-input">
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
                                                            <th>Account Officer</th>
                                                            <th>Amount</th>
                                                        </tr>                                          
                                                    </thead>
                                                    <tbody style="overflow-y:scroll; height:100px;">                                     
                                                        <?php
                                                        $total = 0;
                                                        $i = 1;
                                                        $sql = "SELECT * FROM data_entry_tbl WHERE status = 'Pending' AND post_by='".$dbname."'";

                                                        $result= mysqli_query($conn, $sql) or die($sql);

                                                        while($rows = mysqli_fetch_assoc($result)){

                                                            $dbaccno = $rows['cust_acc'];
                                                            $dbcustname = $rows['cust_name'];
                                                            $dbaccoff = $rows['account_officer'];
                                                            $amount = $rows['amount'];
                                                            $total = $total + $amount;
                                                            ?>
                                                            <tr>
                                                                <td><?php echo $i; ?></td>
                                                                <td><?php echo $dbaccno; ?></td>
                                                                <td><?php echo $dbcustname; ?></td>
                                                                <td><?php echo $dbaccoff; ?></td>
                                                                <td><?php echo number_format($amount,2); ?></td>
                                                    <!--<td>
                                                    <li style="list-style-type: none;"><a href="javascript:deletemenu(<?php echo $rows['id']; ?>)">Delete</a></li>
                                                </td>-->

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
                                    <label style="margin-bottom: 20px; font-weight: bold;font-size: 15px;">Recipient Account</label>
                                    <hr>
                                    <div class="row">
                                        <!-- <div class="col-md-3">
                                            <div class="mb-3">
                                                <label for="formrow-glaccno-input" class="form-label">Account Number</label>
                                                <input type="text" required="" name="glaccno" value="<?php echo $dbcustacc;?>" class="form-control" id="formrow-glaccno-input">
                                            </div>
                                        </div> -->
                                        <div class="col-lg-3">
                                            <div class="mb-3">
                                                <label for="formrow-glaccname" class="form-label">GL Account Name</label>
                                                <select name="glaccname" id="formrow-glaccname" class="form-select">
                                                    <option value="Daily Savings Income" selected>Daily Savings Income</option>      
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="mb-3">
                                                <label for="formrow-inputState" class="form-label">Entry Type</label>
                                                <select name="entrytype2" id="formrow-inputState" class="form-select">
                                                    <option value="Debit">Debit</option>
                                                    <option value="Credit" selected>Credit</option>      
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="mb-3">
                                                <label for="formrow-contributionamount-input" class="form-label">Amount</label>
                                                <input type="number" name="amt2" value="" class="form-control" id="formrow-contributionamount-input">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="mb-3">
                                            <button type="submit" name="post" class="btn btn-primary waves-effect waves-light">Post Deposit</button>
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
  </script>



</body>
</html>
