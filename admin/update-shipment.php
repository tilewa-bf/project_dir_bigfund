<?php

include "../db.php";
include "../auth.php";

//Get shipment id
$sid ="";
if(isset($_GET['sid'])){
    $sid = $_GET['sid'];
}

//Query to get shipment details
$dbshipmentid=$dbtrackingid=$dbshippername=$dbshipperpno=$dbshipperaddress=$dbshipperemail=$dbreceivername=
$dbreceiverpno=$dbreceiveraddress=$dbreceiveremail=$dbshipmentmode=$dbweight=
$dbvalue=$dbdeparturecountry=$dbdeparturedate=$dbdeliverycountry=$dbexpdeliverydate=
$dbstatus=$dbstatus2=$dbcreatedby=$dbcreateddt=$dbupdatedby=$dbupdated_dt="";

$shipmentquery = mysqli_query($conn,"SELECT * FROM shipment_tbl WHERE shipment_id='$sid' AND status2!='deleted'");
$shipmentdata = mysqli_fetch_assoc($shipmentquery);
if(isset($shipmentdata)){
    $dbshipmentid  = $shipmentdata['shipment_id']; $dbtrackingid  = $shipmentdata['tracking_id'];
    $dbshippername  = $shipmentdata['shipper_name']; $dbshipperpno   = $shipmentdata['shipper_pno'];
    $dbshipperaddress = $shipmentdata['shipper_address']; $dbshipperemail = $shipmentdata['shipper_email'];
    $dbreceivername = $shipmentdata['receiver_name']; $dbreceiverpno = $shipmentdata['receiver_pno'];
    $dbreceiveraddress = $shipmentdata['receiver_address']; $dbreceiveremail = $shipmentdata['receiver_email'];
    $dbshipmentmode = $shipmentdata['shipment_mode']; $dbweight = $shipmentdata['weight'];
    $dbvalue = $shipmentdata['value']; $dbdeparturecountry = $shipmentdata['departure_country'];
    $dbdeparturedate = $shipmentdata['departure_date']; $dbdeliverycountry = $shipmentdata['delivery_country'];
    $dbexpdeliverydate = $shipmentdata['exp_delivery_date']; $dbstatus = $shipmentdata['status'];
    $dbstatus2 = $shipmentdata['status2']; $dbcreatedby = $shipmentdata['created_by']; 
    $dbcreateddt = $shipmentdata['created_dt']; $dbupdatedby = $shipmentdata['updated_by']; $dbupdated_dt= $shipmentdata['updated_dt'];
}

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$shipmentid=$fullname=$pno=$address=$email=$rname=$rpno=$raddress=$remail=$mode=$weight=$depdate=$expdate=$status=$value=$delcountry="";

if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){

        
        $regdate = date("Y-m-d");
       
       /*Shipper Details*/
        $shipmentid = test_input($_POST['shipmentid']);
        $fullname = test_input($_POST['fullname']);
        if(!is_numeric($_POST['pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $pno = test_input($_POST['pno']);
        }
        $address= test_input($_POST['address']);
        $email= test_input($_POST['email']);

        /*Receiver Details*/
        $rname = test_input($_POST['rname']);
        if(!is_numeric($_POST['rpno'])){
            $errors = "Phone number must be numeric";
        }else{
            $rpno = test_input($_POST['rpno']);
        }
        $raddress= test_input($_POST['raddress']);
        $remail= test_input($_POST['remail']);
            
        /*Shipment Details*/
        if($_POST['mode']=="Choose Mode of Shipment"){
            $errors = "Select Mode of Shipment";  
        }else{
            $mode = test_input($_POST['mode']);
        }
        
        $weight = test_input($_POST['weight']);
        $value = test_input($_POST['value']);
        $depcountry = test_input($_POST['depcountry']);
        $depdate = test_input($_POST['depdate']);
        $delcountry = test_input($_POST['delcountry']);
        $expdate = test_input($_POST['expdate']);
        $status = test_input($_POST['status']);
    
        date_default_timezone_get();
        $dt = date("Y-m-d h:i:sa");
        
        if(isset($errors)){
            $msg = $errors;
            $alerttype= "danger";
        }else{
        
            $sql= "UPDATE `shipment_tbl` SET `shipper_pno`='$pno', `shipper_address`='$address', `shipper_email`='$email',
             `receiver_name`='$rname', `receiver_pno`='$rpno', `receiver_address`='$raddress', `receiver_email`='$remail', 
             `shipment_mode`='$mode', `weight`='$weight',`value`='$value', `departure_country`='$depcountry', 
             `departure_date`='$depdate', `delivery_country`='$delcountry', `exp_delivery_date`='$expdate', `status`='$status', 
             `updated_by`='$dbname', `updated_dt`='$dt' WHERE shipment_id=$shipmentid";

            $query = mysqli_query($conn,$sql) or die($sql);
            if($query){
                $alerttype="success";
                $msg = "Shipment Updated Successful.";
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
        <title>Bigfund | Logistics </title>
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
                            <strong><?php echo $msg;?></strong>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div> <?php } ?>

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">

                                    <h4 class="mb-sm-0 font-size-18" style="color:green;">Add Shipment</h4>

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
                                        <h4 class="card-title mb-4" style="color:green;">Shipper Details</h4>
                                        <form autocomplete="off" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" autocomplete="off">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-fullname-input" class="form-label">Shipper Name</label>
                                                        <input readonly type="text" name="fullname" value="<?php echo $dbshippername;?>" class="form-control" id="formrow-fullname-input" placeholder="Enter your fullname" required>
                                                        <input hidden type="text" name="shipmentid" value="<?php echo $dbshipmentid;?>" class="form-control" id="formrow-shipmentid-input" required>
                                                    </div> 
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Shipper Phone Number</label>
                                                        <input type="text" name="pno" value="<?php echo $dbshipperpno;?>" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-address-input" class="form-label">Shipper Address</label>
                                                        <input type="text" name="address" value="<?php echo $dbshipperaddress;?>" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Address" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-fullname-input" class="form-label">Shipper Email</label>
                                                        <input type="text" name="email" value="<?php echo $dbshipperemail;?>" class="form-control" id="formrow-fullname-input" placeholder="Enter your email" required>
                                                    </div>
                                                </div>
                                          
                                            </div>
                                            
                                            <hr></hr>
                                            <!--Receiver Details-->
                                            <h4 class="card-title mb-4" style="color:green;">Receiver Details</h4>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-fullname-input" class="form-label">Receiver Name</label>
                                                        <input type="text" name="rname" value="<?php echo $dbshippername;?>" class="form-control" id="formrow-fullname-input" placeholder="Enter your fullname" required>
                                                    </div> 
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Receiver Phone Number</label>
                                                        <input type="text" name="rpno" value="<?php echo $dbshipperpno;?>" class="form-control" id="formrow-phonenumber-input" placeholder="Enter only numbers"required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label for="formrow-address-input" class="form-label">Receiver Address</label>
                                                        <input type="text" name="raddress" value="<?php echo $dbshipperaddress;?>" class="form-control" id="formrow-residentialaddress-input" placeholder="Enter your Address" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-fullname-input" class="form-label">Receiver Email</label>
                                                        <input type="text" name="remail" value="<?php echo $dbshipperemail;?>" class="form-control" id="formrow-email-input" placeholder="Enter your email" required>
                                                    </div>
                                                </div>
                                               
                                                <hr></hr>
                                            <!--Shipment Details-->
                                            <h4 class="card-title mb-4" style="color:green;">Shipment Details</h4>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputGender" class="form-label">Mode of Shipment</label>
                                                        <select name="mode" id="formrow-inputmodeofshipment" value="<?php echo $dbshipmentmode;?>"class="form-select">
                                                            <option selected value="<?php echo $dbshipmentmode;?>"><?php echo $dbshipmentmode;?></option>
                                                            <option value="Air Shipping">Air Shipping</option>
                                                            <option value="Land Shipping">Land Shipping</option>
                                                            <option value="Sea Shipping">Sea Shipping</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-phonenumber-input" class="form-label">Weight (KG)</label>
                                                        <input type="text" name="weight" value="<?php echo $dbweight;?>" class="form-control" id="formrow-weight-input" placeholder="Enter the weight" required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-value-input" class="form-label">Value</label>
                                                        <input type="text" name="value" value="<?php echo $dbvalue;?>" class="form-control" id="formrow-value-input" placeholder="Enter the value" required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-departurecountry-input" class="form-label">Departure Country</label>
                                                        <input readonly type="text" name="depcountry" value="Nigeria" class="form-control" id="formrow-depcountry-input" required maxlength="11">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Departure Date</label>
                                                        <input type="date" name="depdate" value="<?php echo $dbdeparturedate;?>" class="form-control" id="formrow-departuredate-input" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-delcountry-input" class="form-label">Delivery Country</label>
                                                        <input type="text" name="delcountry" value="<?php echo $dbdeliverycountry;?>" class="form-control" id="formrow-delcountry-input" placeholder="Enter delivery country" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-residentialaddress-input" class="form-label">Expected Delivery Date</label>
                                                        <input type="date" name="expdate" value="<?php echo $dbexpdeliverydate;?>" class="form-control" id="formrow-expecteddeliverydate-input" required="">
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-inputStatus" class="form-label">Shipping Status</label>
                                                        <select name="status" id="formrow-inputshippingstatus" value="<?php echo $dbstatus;?>"class="form-select">
                                                        <option selected value="<?php echo $dbstatus;?>"><?php echo $dbstatus;?></option>
                                                            <option value="Pending">Pending</option>
                                                            <option value="On Transit">On Transit</option>
                                                            <option value="Delivered">Delivered</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div id="txtHint"></div>
                                            <div>
                                                <button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Update</button>
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
