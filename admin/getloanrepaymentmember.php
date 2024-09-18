<?php 
include "../db.php";

if(isset($_GET['q'])){
    $groupname = $_GET['q'];
}

echo '<table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>S/N</th>
                                                <th>MEMBER ID</th>
                                                <th>LOAN CODE</th>
                                                <th>NAME</th>
                                                <th>PHONE NO.</th>
                                                <th>ACCOUNT OFFICER</th>
                                                <th>APPLICATION DATE</th>
                                                <th>ACTION</th>
                                            </tr>
                                            </thead>
        
                                            <tbody>';

                                                
                                                $i=1;

                                                    $sql = "SELECT * FROM loan_request WHERE group_name='$groupname' AND status='Confirmed'";
                                                    $query = mysqli_query($conn,$sql);
                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $fullname=$rows['member_name'];
                                                ?>
                                            <tr>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo $i; ?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo $rows['member_id'];?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo $rows['loan_code'];?></td>
                                                <td style="font-weight: bold;font-size: 14px;"><?php echo $fullname; ?></td>
                                                <td><?php echo $rows['member_phone'];?></td>
                                                <td><?php echo $rows['account_officer']; ?></td>
                                                <td><?php echo $rows['app_date']; ?></td>
                                                <td><a class="btn btn-info" href="loanrep.php?lid=<?php echo $rows['loan_code'];?>">Loan Repayment</a></td>
                                            </tr>
                                            
                                            <?php $i++; }?>
                                            </tbody>
                                        </table>

