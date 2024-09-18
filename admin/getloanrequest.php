<?php 
include "../db.php";

if(isset($_GET['q'])){
	$groupname = $_GET['q'];
}

echo '<table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                                    <thead>
                                                        <tr>
                                                            <th>SN</th>
                                                            <th>Member ID</th>
                                                            <th>Loan Number</th>
                                                            <th>Member Name</th>
                                                            <th>Application Date</th>
                                                            <th>Applied Amount</th>
                                                            <th>Approved Amount</th>
                                                            <th>Interest</th>
                                                            <th>Total Payable</th>
                                                            <th>Status</th>
                                                            <th>Reason</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>';

                                                        
                                                        $i=1;


                                                        $sql ="SELECT * FROM loan_request WHERE group_name='$groupname'";
                                                        $result2 = mysqli_query($conn,$sql);
                                                        while($rows = mysqli_fetch_assoc($result2)){
                                                            $loanid = $rows['loan_id'];
                                                            $loancode = $rows['loan_code'];
                                                            $membername = $rows['member_name'];
                                                            $memberid = $rows['member_id'];
                                                            $adate = $rows['app_date'];
                                                            $appliedamount = $rows['applied_amount'];
                                                            $approvedamount = $rows['approved_amount'];
                                                            $totalpayable = $rows['total_payable'];
                                                            $Interest = $totalpayable - $approvedamount;
                                                            $status = $rows['status'];
                                                            $comments = $rows['comments'];

                                                            if($status=='Confirmed'){
                                                            $badge = "success";
                                                            $status = 'Approved';
                                                            }
                                                            elseif($status=='pending'){
                                                                $badge = 'danger';
                                                                $status = 'Pending';
                                                            }else{
                                                                $badge = 'danger';
                                                                $status = 'Decline';
                                                            }
                                                            ?>
                                                            <tr>
                                                                <td><?php echo $i;?></td>
                                                                <td><?php echo $memberid;?></td>
                                                                <td><?php echo $loancode;?></td>
                                                                <td><?php echo $membername;?></td>
                                                                <td><?php echo $adate;?></td>
                                                                <!-- <td><?php echo $exdate;?></td> -->
                                                                <td><?php echo number_format($appliedamount,2);?></td>
                                                                <td><?php echo number_format($approvedamount,2);?></td>
                                                                <td><?php echo number_format($Interest,2);?></td>
                                                                <td><?php echo number_format($totalpayable,2);?></td>
                                                                <td><span class="badge bg-<?php echo $badge;?>"><?php echo $status;?></span></td>
                                                                <td><b><?php echo $comments;?></b></td>
                                                                <!-- <td>
                                                                    <a href="view-loanrequest.php?lid=<?php echo $loanid;?>&mid=<?php echo $memberid;?>"><button type="button" class="btn btn-primary btn-sm">View  Details</button></a>
                                                                    <a href="javascript:deleteloanrequest(<?php echo $rows['loan_id']; ?>)"><button class="btn btn-warning btn-sm">Decline</button></a>
                                                                    <a href="javascript:confirmloanrequest(<?php echo $rows['loan_id']; ?>)"><button class="btn btn-success btn-sm">Confirm</button></a>
                                                                </td> -->
                                                            </tr>
                                                            <?php $i++; }
                                                            ?>
                                                        </tbody>

                                                    </table>
