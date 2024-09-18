<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['sid'])){
    $id = $_GET['sid'];
}

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

//Code to Submit User Priviledges
if($_SERVER["REQUEST_METHOD"]=="POST"){
    if(isset($_POST['submit'])){

        $creation_date = date_create(null,timezone_open('Africa/Lagos'));
        $creation_date = date_format($creation_date,'Y-m-d'); 
        $dt= date('Y-m-d h:i:sa', time());

        $linkid = $_POST['linkid'];
        if(empty($_POST['sublinkname'])){
            $errors = "Sublink Name is Empty";
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $sublinkname = test_input($_POST['sublinkname']);
        }
        
        if(empty($_POST['sublink_url'])){
            $errors = "Sublink Url is Empty";
            $alerttype= "danger";
            $icon = "block-helper";
        }else{
            $sublink_url = test_input($_POST['sublink_url']);
        }

        if($_POST['status']=="Choose Status"){
            $errors = "Select Status";
        }else{
            $status = test_input($_POST['status']);
        }

        if(isset($errors)){
            $msg = $errors;
            $alerttype= "danger";
            $icon = "block-helper";
        }else{

        
        $sql = "SELECT * FROM sublink_tbl WHERE sublink_name='".$sublinkname."'";   
        $query = mysqli_query($conn,$sql);
        $numrows = mysqli_num_rows($query);

        if($numrows > 0){
            $alerttype= "danger";
            $icon = "block-helper";
            $msg = "Link registered before!";
        }else{
            $query2 = mysqli_query($conn,"INSERT INTO sublink_tbl(sublink_id,sublink_name,link_id,status,sublink_url,create_by,creation_date,date_time,update_by,update_dt)VALUES(NULL,'$sublinkname','$linkid','$status','$sublink_url','$dbname','$creation_date','$dt',NULL,NULL)");

            if($query2){
                
                $alerttype= "success";
                $icon = "check-all";
                $msg = "Sub Link Registered Successful.";
                
            }else{
                $msg = "Sub Link Registration Not Successful";
            }
        }
        }
        mysqli_close($conn);
    }
}



?>

<!doctype html>
<html lang="en">



<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Add Link </title>
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

                                    <h4 class="mb-sm-0 font-size-18">Priviledges</h4>

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
                        <div class="col-sm-12">
                        <form method="POST" action="user_permission.php">
                            <table class="table table-bordered">
                                <tr>
                                    <th>S/N</th>
                                    <th>Links</th>
                                    <th>Sub Links</th>
                                    <th>User Permission</th>
                                </tr>
                                <tr>
                                    <?php
                                    $i = 1;
                                     
                                        $linkqr = "SELECT * FROM sublink_tbl INNER JOIN link_tbl ON link_tbl.link_id = sublink_tbl.link_id WHERE sublink_tbl.status='active' AND link_tbl.status='Active'";
                                        $linkqres = mysqli_query($conn,$linkqr);
                                        while($linkdata = mysqli_fetch_assoc($linkqres)){
                                            $linkname = $linkdata['link_name'];
                                            $sublinkname = $linkdata['sublink_name'];

                                        ?>
                                        <input hidden type="text" name="link_id[]" value="<?php echo $linkdata['link_id'];?>">
                                        <input hidden type="text" name="sublink_id[]" value="<?php echo $sublinkid =  $linkdata['sublink_id'];?>">
                                        <td><?php echo $i;?></td>
                                        <td><?php echo $linkname;?></td>
                                        <td><?php echo $sublinkname;?></td>
                                        <td>
                                            <?php

                                                $permissionqry = "SELECT user_permission FROM link_useraccess WHERE sublink_id='$sublinkid' AND user_id='$id'";
                                                $permissionres = mysqli_query($conn,$permissionqry) or die($permissionqry);
                                                $permissiondata = mysqli_fetch_assoc($permissionres);
                                                if(isset($permissiondata['user_permission'])){
                                                    $dbuser_permission = $permissiondata['user_permission'];
                                                }else{
                                                    $dbuser_permission = 'False';
                                                }
                                            ?>
                                            <select name="userpermission[]" class="form-control" style="width: 30%;">
                                                <?php
                                                    if($dbuser_permission){
                                                        ?>
                                                        <option value="<?php echo $dbuser_permission;?>"><?php echo $dbuser_permission;?></option>  
                                                    <?php } ?>
                                                <option value="False">False</option>
                                                <option value="True">True</option>
                                            </select>
                                        </td>
                                </tr>
                                <?php $i++; } ?>
                            </table>
                            <button style="margin-top: 10px;margin-bottom: 10px;" name="submitpermission" class="btn btn-primary">Update Priviledge</button>

                            <input hidden type="text" name="user_id" value="<?php echo $id;?>">

                        </form>
                        </div>          
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


    </body>


</html>
