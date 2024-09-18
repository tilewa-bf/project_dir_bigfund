<?php
include "../db.php";

include "../auth.php";

$roleid ="";
$admin_id="";

if(isset($_GET['id'])){
    $roleid = $_GET['id'];
    echo $roleid;
}

$query = "SELECT * FROM admin WHERE admin_id ='".$roleid."'";
$result = mysqli_query($conn,$query) or die($query);

$rows = mysqli_fetch_assoc($result);
$am = $vm = $cp = $mf = $pd = $pw = $cd = $cw = $ca = $roles="";

    $dam = $rows['add_mem'];
    $dvm = $rows['view_mem'];
    $dmf = $rows['mem_fee'];
    $dcp = $rows['create_pb'];
    $dpd = $rows['pb_dep'];
    $dpw = $rows['pb_wtd'];
    $dcd = $rows['con_dep'];
    $dcw = $rows['con_wtd'];
    $dca = $rows['create_admin'];
    $dcj = $rows['create_jur'];
    $droles = $rows['roles'];

   
    if($dam=='Yes'){
    $checked1 = 'checked';
    }
    if($dvm=='Yes'){
    $checked2 = 'checked';
    }
    if($dmf=='Yes'){
    $checked3 = 'checked';
    }
    if($dcp=='Yes'){
    $checked4 = 'checked';
    }
    if($dpd=='Yes'){
    $checked5 = 'checked';
    }
    if($dpw=='Yes'){
    $checked6 = 'checked';
    }
    if($dcd=='Yes'){
    $checked7 = 'checked';
    }
    if($dcw=='Yes'){
    $checked8 = 'checked';
    }
    if($dca=='Yes'){
    $checked9 = 'checked';
    }
    if($dcj=='Yes'){
    $checked10 = 'checked';
    }
    if($droles=='Yes'){
    $checked11 = 'checked';
    }
    


if($_SERVER["REQUEST_METHOD"]=="POST"){
  if(isset($_POST['save'])){

    if(isset($_GET['id'])){
    $admin_id = $_GET['id'];
    }
    
  if(isset($_POST['am'])){
    $am = "Yes";
  }else{
    $am = "No";
  }
  
  if(isset($_POST['vm'])){
    $vm = "Yes";
  }else{
    $vm = "No";
  }

  if(isset($_POST['mf'])){
    $mf = "Yes";
  }else{
    $mf = "No";
  }

  if(isset($_POST['cp'])){
    $cp = "Yes";
  }else{
    $cp = "No";
  }
   
   if(isset($_POST['pd'])){
    $pd = "Yes";
  }else{
    $pd = "No";
  }
   if(isset($_POST['pw'])){
    $pw = "Yes";
  }else{
    $pw = "No";
  }
   if(isset($_POST['cd'])){
    $cd = "Yes";
  }else{
    $cd = "No";
  }
   if(isset($_POST['cw'])){
    $cw= "Yes";
   }else{
    $cw = "No";
   }
   if(isset($_POST['ca'])){
    $ca = "Yes";
  }else{
    $ca = "No";
  }
  if(isset($_POST['cj'])){
    $cj = "Yes";
  }else{
    $cj = "No";
  }
   if(isset($_POST['roles'])){
    $roles = "Yes";
  }else{
    $roles = "No";
  }


//Attempt query execution
$sql2 = "UPDATE admin SET add_mem='".$am."',view_mem='".$vm."',mem_fee='".$mf."',create_pb='".$cp."',pb_dep='".$pd."',pb_wtd='".$pw."',con_dep='".$cd."',con_wtd='".$cw."',create_admin='".$ca."',create_jur='".$ca.",roles='".$roles."' WHERE admin_id='".$admin_id."'";
$result2= mysqli_query($conn,$sql2) or die($sql2);

if($result2){
  $msg= "Priviledges Successfully Set";
  }else{
    mysqli_error($conn);
}
    
}
mysqli_close($conn);
}

?>

<!doctype html>
<html lang="en">

    
<head>
        
        <meta charset="utf-8" />
        <title>Priviledges | Savepay</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

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

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Privileges</h4>
                                    <?php if(isset($msg)){?>
                                        <div class="alert alert-success alert-dismissible fade show" role="alert"><?php echo $msg;?>
                                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            </div>
                                            <?php }?>

                                             
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Utility</a></li>
                                            <li class="breadcrumb-item active">Starter Page</li>
                                        </ol>
                                    </div>
                                    -->
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                       

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <form method="post" action="rolesupdate.php?id=<?php echo $roleid;?>">
                                        <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="am" type="checkbox" id="formCheck2" <?php if(isset($checked1)){
                                                            echo $checked1;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Add Memebr</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="vm" type="checkbox" id="formCheck2"<?php if(isset($checked2)){
                                                            echo $checked2;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">View Member</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="mf" type="checkbox" id="formCheck2" <?php if(isset($checked3)){
                                                            echo $checked3;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Membership Fee</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="cp" type="checkbox" id="formCheck2" <?php if(isset($checked4)){
                                                            echo $checked4;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Create Passbook</label>
                                                    </div>
                                                </div><br/><br/>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="pd" type="checkbox" id="formCheck2" <?php if(isset($checked5)){
                                                            echo $checked5;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Passbook Deposit</label>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="pw" type="checkbox" id="formCheck2" <?php if(isset($checked6)){
                                                            echo $checked6;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Passbook Withdrawal</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="cd" type="checkbox" id="formCheck2" <?php if(isset($checked7)){
                                                            echo $checked7;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Confrim Deposit</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="cw" type="checkbox" id="formCheck2" <?php if(isset($checked8)){
                                                            echo $checked8;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Confrim Withdrawal</label>
                                                    </div>
                                                </div><br/><br/>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="ca" type="checkbox" id="formCheck2" <?php if(isset($checked9)){
                                                            echo $checked9;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Create Admin</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="cj" type="checkbox" id="formCheck2" <?php if(isset($checked10)){
                                                            echo $checked10;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Create Jurisdiction</label>
                                                    </div>
                                                </div>
                                                <br/><br/>
                                                <div class="col-md-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" name="roles" type="checkbox" id="formCheck2" <?php if(isset($checked11)){
                                                            echo $checked11;
                                                        } ?>>
                                                        <label class="form-check-label" for="formCheck2">Roles and Permission</label>
                                                    </div>
                                                </div><br/><br/>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <button type="submit" name="save" class="btn btn-primary waves-effect waves-light">Submit</button>
                                                    </div>
                                                </div>
                                            
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © ThriftPay.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Jobastech
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

        <script src="assets/js/app.js"></script>

    </body>


</html>
