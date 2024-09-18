<?php
include "../db.php";
include "../auth2.php";


//Query to get the number of total amount saved.
$sql2= "SELECT SUM(total) AS totalsaved, SUM(no_of_days) AS totaldays FROM passbook_deposit WHERE member_id='$memberid' AND status2='Confirmed' AND status3='undelete'";
$result2 = mysqli_query($conn,$sql2);
$row3 = mysqli_fetch_assoc($result2);
$totalsaved = $row3['totalsaved'];
$totalsaved = number_format($totalsaved,2);

$sql2 ="SELECT SUM(contribution) AS contr FROM passbook WHERE member_id='".$memberid."' AND status='active'";
$result2 = mysqli_query($conn,$sql2);
 while($rows = mysqli_fetch_assoc($result2)){
 $contribution = $rows['contr'];
 $expectedcontribution = $contribution * 30;
}
 
////////////////////////////////////////////////////////////////////////////////////////////////////

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['submit'])){


//$memberid = test_input($_POST['memberid']);

$pid = "TP". rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);

if(isset($_POST['passbook_name'])){
    $passbook_name = test_input($_POST['passbook_name']);
}else{
    $errors = "Please Enter Your Passbook Title";
    $alerttype= "danger";
}

if($_POST['conamt'] < 500){
    $errors = "Please Enter the correct amount";
    $alerttype = "danger";
}elseif ($_POST['conamt'] > 10000) {
    $errors = "Please Enter the correct amount";
    $alerttype = "danger";
}
else{
    $contribution = $_POST['conamt'];
}
$nod = $_POST['nod'];


//creation date of passbook
$creation_date = date_create(null,timezone_open('Africa/Lagos'));
$creation_date = date_format($creation_date,'Y-m-d'); 

//stop date, the date the passbook will expired or the member can start withdrawing
$date=date_create(null,timezone_open('Africa/Lagos'));
$stop_date = date_add($date,date_interval_create_from_date_string("30 days"));
$stop_date= date_format($date,"Y-m-d");

//Querying the database to check if there is an active passbook.

/*$activesql = "SELECT * FROM passbook where member_id='".$memberid."' AND no_of_days > 0";
$activequery = mysqli_query($conn,$activesql) or die($activesql);
$numrows = mysqli_num_rows($activequery);
if($numrows > 0){
    $errors = "Sorry!, You still have an active passbook";
}*/
if(isset($errors)){
    $msg = $errors;
    $alerttype = "danger";
}else{

$sql = "INSERT INTO passbook(id,member_id,passbook_id,passbook_name,contribution,no_of_days,product_type,creation_date,stop_date,status)VALUES(null,'$memberid','$pid','$passbook_name','$contribution','$nod','ThriftPay','$creation_date','$stop_date','active')";

$query = mysqli_query($conn,$sql) or die($sql);
if($query){
    $alerttype = "success";
    $msg = "Passbook Created Successfully. Your Passbook ID is:". " ". $pid;
}else{
    $msg = mysqli_error($conn);
}
//mysqli_close($conn);

}

}
}
?>

<!doctype html>
<html lang="en">

    

<head>
        
        <meta charset="utf-8" />
        <title>THRIFT PLAN | THRIFTPAY</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- DataTables -->
        <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />     

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body data-sidebar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->


        <?php echo include 'navigation.php';?>
            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                                                <?php echo $msg; ?>
                                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            </div><?php } ?>
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    
                                    <h4 class="mb-sm-0 font-size-18">Welcome To ThriftPay</h4>
                                    <!--
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Data Tables</li>
                                        </ol>
                                    </div>
                                    -->
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
                            <div class="col-md-3">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Available Balance</p>
                                                        <h4 class="mb-0">&#8358;<?php if(isset($totalsaved)){ echo $totalsaved;
                                                        }else{ echo "0.00";}
                                                ?></div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Exp. Contr.</p>
                                                        <h4 class="mb-0">&#8358;<?php if(isset($expectedcontribution)){ echo $expectedcontribution;
                                                        }else{ echo "0.00";}
                                                ?></h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Total Saved</p>
                                                        <h4 class="mb-0">&#8358;<?php if(isset($totalsaved)){ echo $totalsaved;
                                                        }else{ echo "0.00";}
                                                ?></h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                                        <p class="text-muted fw-medium">Interest Earned</p>
                                                        <h4 class="mb-0">&#8358;<?php if(isset($intearned)){ echo $intearned;
                                                        }else{ echo "0.00";}
                                                ?></h4>
                                                    </div>

                                                    <div class="avatar-sm rounded-circle bg-primary align-self-center mini-stat-icon">
                                                        <span class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bx-archive-in font-size-24"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        </div>

                            <!--Savings Passbook Info Alert-->
                            <?php
                            $sql3 = "SELECT passbook_id FROM passbook WHERE member_id ='".$memberid."'";
                            $result3 = mysqli_query($conn,$sql3);

                            $numrow = mysqli_num_rows($result3);
                            if($numrow==0){
 
                            ?>
                            <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">

                                      <div class="alert alert-info mb-0" role="alert">
                                                You don't have an active Savings Passbook! Create Your Savings Passbook Below.
                                      </div>      
                                      

                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div><?php } ?>
                        <!-- end row -->

                        <!--End Savings Passbook Alert-->

                        <!--Create Savings Passbook-->
                            <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Create Savings Passbook</h4>
                                        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            
                                            <!--
                                            <div class="row">
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-memberid-input" class="form-label">MEMBER ID</label>
                                                        <input type="text" name="memberid" class="form-control" id="formrow-memberid-input" placeholder="Enter Member ID" required>
                                                    </div>
                                                    
                                                </div>
                                            </div>-->
    
                                            

                                            <div class="row">

                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Passbook Title</label>
                                                        <input type="text" name="passbook_name" class="form-control" id="formrow-passbooktitle-input" placeholder="Enter Your Passbook Title" required>
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-contributionamount-input" class="form-label">Deposit Range.(Min.&#8358;500-Max.&#8358;10,000)</label>
                                                        <input type="number" name="conamt" class="form-control" id="formrow-contributionamount-input" placeholder="Enter Your Daily Contribution" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label for="formrow-noofdays-input" class="form-label">No. of Days</label>
                                                        <input type="text" name="nod" value="30" class="form-control" id="formrow-noofdays-input" readonly>
                                                    </div>
                                                </div>
                                                
                                            </div>

                                            <div>
                                                <button type="submit" name="submit" class="btn btn-primary btn-sm waves-effect waves-light">Create Passbook</button>
                                                <!--<a href="mypassbook.php"><button type="button" class="btn btn-primary btn-sm">Make Deposit</button></a>-->
                                            </div>
                                        </form>

                                        
                                            
                                        </div>

                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->

                        <!--End Savings Passbook Creation-->
                        
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                    
                                        <h4 class="card-title">My Savings Passbook</h4>
                                        <p class="card-title-desc">
                                        </p>
                                        
                                        
                                        <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>Passbook Name</th>
                                                <th>Contribution</th>
                                                <th>Total Saved</th>
                                                <th>No of Days left</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th>ACTION</th>
                                                
                                            </tr>
                                            </thead>
                                        
                                            
                                            <tbody>
                                            <?php 

                                            $sql2 = "SELECT p.passbook_id,p.passbook_name,p.status,p.contribution,p.no_of_days,p.creation_date, ROUND(SUM(d.total_contribution)/10) as totalsaved FROM passbook as p, deposit as d WHERE d.member_id='".$memberid."' GROUP BY d.passbook_id";

                                            //$sql2 ="SELECT * FROM passbook WHERE member_id='".$memberid."' AND status='active'";
                                            $result2 = mysqli_query($conn,$sql2);
                                            while($rows = mysqli_fetch_assoc($result2)){
                                                $passbookid = $rows['passbook_id'];
                                                $passbook_name = $rows['passbook_name'];
                                                $contribution = $rows['contribution'];
                                                $totalcontribution = $rows['totalsaved'];
                                                $totalnod = $rows['no_of_days'];
                                                $status = $rows['status'];
                                                $creation_date = $rows['creation_date'];
                                            ?>
                                            <tr>
                                                <td><?php echo $passbook_name;?></td>
                                                <td><?php echo $contribution;?></td>
                                                <td><?php echo $totalcontribution;?></td>
                                                <td><?php echo $totalnod;?></td>
                                              
                                                <td><?php echo $status;?></td>
                                                <td><?php echo $creation_date;?></td>
                                                <td><a href="pay.php?pid=<?php echo $passbookid;?>"><button type="button" class="btn btn-primary btn-sm">Make Deposit</button></a>
                                                    <a href="withdraw.php?pid=<?php echo $passbookid;?>"><button type="button" class="btn btn-primary btn-sm">Make Withdrawal</button></a>
                                                </td>
                                                
                                            </tr>
                                            <?php }mysqli_close($conn);?>
                                            </tbody>
                                        </table>
        
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->
            
                        

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
                                    Design & Develop by Jobastech.
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

        <!-- Required datatable js -->
        <script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
        <script src="assets/libs/jszip/jszip.min.js"></script>
        <script src="assets/libs/pdfmake/build/pdfmake.min.js"></script>
        <script src="assets/libs/pdfmake/build/vfs_fonts.js"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>
        
        <!-- Responsive examples -->
        <script src="assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

        <!-- Datatable init js -->
        <script src="assets/js/pages/datatables.init.js"></script>    

        <script src="assets/js/app.js"></script>

    </body>

<!-- Mirrored from themesbrand.com/skote/layouts/tables-datatable.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Mar 2021 14:29:51 GMT -->
</html>
