<?php 
include "../db.php";

if(isset($_GET['q'])){
	$shipmentid = $_GET['q'];
}



echo '<table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                                <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>TRACKER ID</th>
                                                    <th>SHIPPER NAME</th>
                                                    <th>RECEIVER NAME</th>
                                                    <th>RECEIVER PHONE NO.</th>
                                                    </tr>
                                                </thead>
            
                                                <tbody>';

                                                
                                                $i=1;
                                            
                                                $sql = "SELECT * FROM shipment_tbl WHERE status2!='deleted'";
                                                $query = mysqli_query($conn,$sql);
                                                while($rows = mysqli_fetch_assoc($query)){
                                                    $sid = $rows['shipment_id'];
                                                    $tid = $rows['tracking_id'];
                                                    $shippername = $rows['shipper_name'];
                                                    $receivername = $rows['receiver_name'];
                                                    $receiverpno = $rows['receiver_pno'];
                                                    $status = $rows['status'];
                                                
                                                ?>
                                                <tr>
                                                    <td><?php echo $i;?></td>
                                                    <td><?php echo $tid; ?></td>
                                                    <td><?php echo $shippername; ?></td>
                                                    <td><?php echo $receivername; ?></td>
                                                    <td><?php echo $receiverpno; ?></td>
                                                </tr>
                                            <?php $i++; }
                                                    ?>
                                                </tbody>
                                                
                                            </table>
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