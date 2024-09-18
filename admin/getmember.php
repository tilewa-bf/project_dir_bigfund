<?php 
include "../db.php";

if(isset($_GET['q'])){
	$groupname = $_GET['q'];
}


echo '<table id="datatable-buttons" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                <th>S/N</th>
                                                <th>SAV. TYPE</th>
                                                <th>MEMBER ID</th>
                                                <th>NAME</th>
                                                <th>PHONE NO.</th>
                                                <th>ACCOUNT OFFICER</th>
                                                <th>REG. DATE</th>
                                                <th>ACTION</th>
                                            </tr>
                                            </thead>
        
                                            <tbody>';
                                                $i=1;

                                                    // $sql2 = "SELECT * FROM members_master_tbl WHERE trans_type='RF' AND entry_type='Credit'";
                                                    // $query2 = mysqli_query($conn,$sql2);
                                                    // while($rows2 =mysqli_fetch_assoc($query2)){
                                                    //     $amount = $rows2['amount'];
                                             
                                                    $sql = "SELECT * FROM member WHERE group_name='$groupname' AND status2='Active'";
                                                    $query = mysqli_query($conn,$sql);
                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $savtype=$rows['savings_type'];
                                                        $surname=$rows['surname'];
                                                        $firstname=$rows['firstname'];
                                                        $fullname=$surname." ". $firstname;
                                                        
                                                ?>
                                            <tr>
                                                <td><?php echo $i; ?></td>
                                                <td><?php echo $savtype; ?></td>
                                                <td><?php echo $rows['member_id'];?></td>
                                                <td><?php echo strtoupper($fullname); ?></td>
                                                <td><?php echo $rows['phone']; ?></td>
                                                <td><?php echo $rows['account_officer']; ?></td>
                                                <td><?php echo $rows['reg_date']; ?></td>
                                                <td><a class="btn btn-info" href="loan-application.php?mid=<?php echo $rows['member_id'];?>">Apply for Loan</a></td>
                                            </tr>
                                            
                                            <?php $i++; }?>
                                            </tbody>
                                        </table>