<?php
include "../db.php";
include "../auth.php";


function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

//Code to Add group
$remamt = "";
if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){

        date_default_timezone_set('Africa/Lagos');
        $creation_date = date_create(null,timezone_open('Africa/Lagos'));
        $creation_date = date_format($creation_date,'Y-m-d'); 
        $dt= date('Y-m-d h:i:sa', time());


        if(empty($_POST['remamt'])){
            $errors = "Amount is empty";
        }else{
            $remamt = $_POST['remamt'];
            $remamt = str_replace(',', '', $remamt);
            if(is_numeric($remamt)){
            $remamt = $remamt;
        }else{
            $errors = "Amount Not Numeric";
            }
        }
        
        if($_POST['fullname']=="Select Account Officer"){
            $errors = "Select Account Officer";
        }else{
            $accoff = test_input($_POST['fullname']);
        }

        $narration = test_input($_POST['narration']);

        if(isset($errors)){
            $msg = $errors;
            $alerttype= "danger";
            $icon = "block-helper";
        }else{

            $sql ="INSERT INTO `weekly_remittance`(`rem_id`, `amount`, `post_by`, `narration`, `status`, `creation_date`, `creation_dt`, `confirm_by`, `confirm_date`, `confirm_dt`) VALUES (null,'$remamt','$dbname','$narration','pending','$creation_date','$dt',null,null,null)";

            $query = mysqli_query($conn,$sql) or mysqli_error($sql);

            if($query){
                $alerttype= "success";
                $icon = "check-all";
                $msg = "Amount Remitted Successful.";
                
            }else{
                $msg = "Amount Remittance Not Successful";
                $alerttype= "danger";
                $icon = "block-helper";
            }
        }
        }
        
    }




?>

<!doctype html>
<html lang="en">



<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Weekly Remittance </title>
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

                                    <h4 class="mb-sm-0 font-size-18">Weekly Remittance</h4>

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
                                        <h4 class="card-title mb-4">Weekly Remittance</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">
                                            
                                            <!--Group Creation Form-->
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-nok-income-input" class="form-label">Total Amount Remitted</label>
                                                        <input value="<?php echo $remamt;?>" type="text" name="remamt" class="form-control" id="input" placeholder="Enter Amount Remitted" required>
                                                    </div>
                                                </div>
                                                <div class="col-xl-3">
                                                    <label for="formrow-nok-income-input" class="form-label">Account Officer</label>
                                                    <select name="fullname" id="formrow-inputState" class="form-select" required>
                                                                <option value="">Select Account Officer</option>
                                                                <?php 
                                                                $sql ="SELECT * FROM staff_tbl WHERE status='undelete' AND status2='Active'";
                                                                $result= mysqli_query($conn,$sql);
                                                                while($rows = mysqli_fetch_assoc($result)){
                                                                    $lastname=$rows['lastname'];
                                                                    $firstname=$rows['firstname'];
                                                                    $fullname=$lastname." ".$firstname;
                                                                ?>
                                                                <option value="<?php echo $fullname;?>"><?php echo $fullname;?></option>
                                                                <?php }
                                                                ?>     
                                                    </select>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="mb-3">
                                                        <label for="formrow-group-input" class="form-label">Narration</label>
                                                        <textarea name="narration" class="form-control" value="">
                                                            
                                                        </textarea>
                                                        <!-- <input type="text" name="narration" class="form-control" id="formrow-linkicon-input" placeholder="Enter Narration" required> -->
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            </div>
                             
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
        <script>
               input.addEventListener('keyup', function(event) {
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

        <!-- jquery step -->
        <script src="assets/libs/jquery-steps/build/jquery.steps.min.js"></script>

        <!-- form wizard init -->
        <script src="assets/js/pages/form-wizard.init.js"></script>

        <script src="assets/js/app.js"></script>


    </body>


</html>
