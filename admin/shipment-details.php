<?php
include "../db.php";
include "../auth.php";

$shipmentid="";
if(isset($_GET['sid'])){
	$shipmentid = $_GET['sid'];
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
        <title>Bigfund | Shipment Details</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />

        <link href="assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css">
        <link href="assets/libs/spectrum-colorpicker2/spectrum.min.css" rel="stylesheet" type="text/css">
        <link href="assets/libs/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css">
        <link href="assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="assets/libs/%40chenfengyuan/datepicker/datepicker.min.css">

        <!-- App favicon -->
        <!-- <link rel="shortcut icon" href="assets/images/favicon.ico"> -->
        <link rel="icon" type="image/x-icon" href="assets/images/bigfund.png">

        <!-- DataTables -->
        <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />   
        <!--For column datatables -->  
        <link href="assets/cs/jquery.dataTables.min.css"/>
        <link href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css"/>

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />


</head>
<body>

<div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <?php include "shipmentreport-header.php"?>

                                        <h4 class="card-title" style="margin-top:30px;margin-bottom: -20px; color:green;">Shipment Details</h4><br/>
                                        
                                        
                                            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                            <div style="margin-top: 20px;" class="row">

                                            <div class="col-xl-3">
                                                
                                            </div>
                                        <div class="row" style="margin-top:50px;">
                                        <table class="table table-bordered table-striped dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>TRACKER ID</th>
                                                <th>SHIPPER NAME</th>
                                                <th>SHIPPER PHONE NO.</th>
                                                <th>SHIPPER ADDDRESS</th>
                                                <th>SHIPPER EMAIL</th> 
                                                <th>STATUS</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                               
                                                $sql = "SELECT * FROM shipment_tbl WHERE status2!='deleted' and shipment_id='$shipmentid'";
                                                $query = mysqli_query($conn,$sql);
                                                    $rows = mysqli_fetch_assoc($query);
                                                    $sid = $rows['shipment_id'];
                                                    $tid = $rows['tracking_id'];
                                                    $shippername = $rows['shipper_name'];
                                                    $shipperpno = $rows['shipper_pno'];
                                                    $receivername = $rows['receiver_name'];
                                                    $receiverpno = $rows['receiver_pno'];
                                                    $status = $rows['status'];
                                            
                                                    $dbshipperaddress = $rows['shipper_address']; $dbshipperemail = $rows['shipper_email'];
                                                    $dbreceivername = $rows['receiver_name']; $dbreceiverpno = $rows['receiver_pno'];
                                                    $dbreceiveraddress = $rows['receiver_address']; $dbreceiveremail = $rows['receiver_email'];
                                                    $dbshipmentmode = $rows['shipment_mode']; $dbweight = $rows['weight'];
                                                    $dbvalue = $rows['value']; $dbdeparturecountry = $rows['departure_country'];
                                                    $dbdeparturedate = $rows['departure_date']; $dbdeliverycountry = $rows['delivery_country'];
                                                    $dbexpdeliverydate = $rows['exp_delivery_date']; $dbstatus = $rows['status'];
                                                    $dbstatus2 = $rows['status2']; $dbcreatedby = $rows['created_by']; 
                                                    $dbcreateddt = $rows['created_dt']; $dbupdatedby = $rows['updated_by']; $dbupdated_dt= $rows['updated_dt'];
                                                ?>
                                            <tr>
                                                <td><?php echo $tid; ?></td>
                                                <td><?php echo $shippername; ?></td>
                                                <td><?php echo $shipperpno; ?></td>
                                                <td><?php echo $dbshipperaddress; ?></td>
                                                <td><?php echo $dbshipperemail; ?></td>
                                                <td>
                                                    <?php
                                                        if($status=='Pending'){
                                                            $badge = "warning";
                                                            }elseif($status=='On Transit'){
                                                                $badge = "info";
                                                            }elseif($status=='Delivered'){
                                                                $badge = "success";
                                                            }
                                                    ?>
                                                    <span class="badge bg-<?php echo $badge;?>"><?php echo $status;?></span>
                                                    <!-- <a class="btn btn-info" href="member-details2.php?mid=<?php echo $rows['id'];?>">Details</a> -->
                                                </td>
                                            </tr>
                                            <!--Receiver Details-->
                                            <tr>
                                                <th>RECEIVER NAME</th>
                                                <th>SHIPPER PHONE NO.</th>
                                                <th>SHIPPER ADDRESS</th>
                                                <th>SHIPPER EMAIL</th> 
                                                <th>SHIPMENT MODE</th>
                                                <th>WIEIGHT</th>
                                            </tr>
                                            <tr>
                                                <td><?php echo $dbreceivername; ?></td>
                                                <td><?php echo $dbreceiverpno; ?></td>
                                                <td><?php echo $dbreceiveraddress; ?></td>
                                                <td><?php echo $dbreceiveremail; ?></td>
                                                <td><?php echo strtoupper($dbshipmentmode); ?></td>
                                                <td><?php echo $dbweight; ?></td>
                                            </tr>
                                            <!--Shipment Details-->
                                            <tr>
                                                <th>AMOUNT</th>
                                                <th>DEPARTURE COUNTRY</th> 
                                                <th>DEPARTURE DATE</th> 
                                                <th>DELIVERY COUNTRY</th> 
                                                <th>EXPECTED DELIVERY DATE</th>
                                            </tr>
                                            <tr>
                                                <td><?php echo $dbvalue,2; ?></td>
                                                <td><?php echo $dbdeparturecountry; ?></td>
                                                <td><?php echo $dbdeparturedate; ?></td>
                                                <td><?php echo $dbdeliverycountry; ?></td>
                                                <td><?php echo $dbexpdeliverydate; ?></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                                    
                                            </div>
                                            
                                        </form>
                                        <button onclick="window.print()" class="btn btn-primary waves-effect waves-light">Print</button>
                                    </div>
                                    
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

                        

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


          <!-- form advanced init -->
        <script src="assets/js/pages/form-advanced.init.js"></script>
        <script src="assets/js/app.js"></script>


        <!-- Datepicker-->
        <script src="assets/libs/select2/js/select2.min.js"></script>
        <script src="assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/libs/spectrum-colorpicker2/spectrum.min.js"></script>
        <script src="assets/libs/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
        <script src="assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
        <script src="assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
        <script src="assets/libs/%40chenfengyuan/datepicker/datepicker.min.js"></script>

        <!-- form advanced init -->
        <script src="assets/js/pages/form-advanced.init.js"></script>
        <script src="assets/js/app.js"></script>

</body>
</html>