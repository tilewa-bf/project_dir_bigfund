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
                                                <th>NAME</th>
                                                <th>PHONE NO.</th>
                                                <th>ACCOUNT OFFICER</th>
                                              
                                                <th>ACTION</th>
                                            </tr>
                                            </thead>
        
                                            <tbody>';

                                                
                                                $i=1;

                                                    $sql = "SELECT * FROM member WHERE group_name='$groupname'";
                                                    $query = mysqli_query($conn,$sql);
                                                    while($rows = mysqli_fetch_assoc($query)){
                                                        $surname = $rows['surname'];
                                                        $firstname = $rows['firstname'];
                                                        $fullname = $surname." ". $firstname;
                                                ?>
                                            <tr>
                                                <td><?php echo $i; ?></td>
                                                <td><?php echo $rows['member_id'];?></td>
                                                <td><?php echo $fullname; ?></td>
                                                <td><?php echo $rows['phone']; ?></td>
                                                <td><?php echo $rows['account_officer']; ?></td>
                                                
                                                <td><a class="btn btn-info" href="memsavingsdetails.php?mid=<?php echo $rows['member_id'];?>">History</a></td>
                                            </tr>
                                            
                                            <?php $i++; }?>
                                            </tbody>
                                        </table>

