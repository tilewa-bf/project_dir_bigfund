<?php 
include "../db.php";

if(isset($_GET['q'])){
	$groupname = $_GET['q'];
}



echo '<table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                                <thead>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Loan Number</th>
                                                    <th>Member Number</th>
                                                    <th>Member Name</th>
                                                    <th>Group Name</th>
                                                    <th>Phone Number</th>
                                                    <th>Granted Date</th>
                                                    <th>Expiry Date</th>
                                                    <th>Applied Amount</th>
                                                    <th>Approved Amount</th>
                                                </tr>
                                                </thead>
            
                                                <tbody>';

                                                
                                                $i=1;
                                            
                                                $sql ="SELECT * FROM loan_request WHERE group_name='$groupname'";
                                                $result2 = mysqli_query($conn,$sql);
                                                while($rows = mysqli_fetch_assoc($result2)){
                                                    $loancode = $rows['loan_code'];
                                                    $memberid = $rows['member_id'];
                                                    $membername = $rows['member_name'];
                                                    $memberphone = $rows['member_phone'];
                                                    $groupname = $rows['group_name'];
                                                    $gdate = $rows['approved_date'];
                                                    $dbexdate = $rows['maturity_date'];
                                                    $loanamount = $rows['applied_amount'];
                                                    $approvedamount = $rows['approved_amount'];
                            
                                                ?>
                                                <tr>
                                                    <td><?php echo $i;?></td>
                                                    <td><?php echo $loancode;?></td>
                                                <td><?php echo $memberid;?></td>
                                                    <td><?php echo $membername;?></td>
                                                    <td><strong><?php echo $groupname;?></strong></td>
                                                    <td><strong><?php echo $memberphone;?></strong></td>
                                                    <td><?php echo $gdate;?></td>
                                                    <td><?php echo $dbexdate;?></td>
                                                    <td><?php echo number_format($loanamount);?></td>
                                                    <td><?php echo number_format($approvedamount);?></td>
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