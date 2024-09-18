<?php
include "../db.php";

if(isset($_GET['q'])){
	$pid = $_GET['q'];
}


echo '<table id="example" class="table table-bordered dt-responsive nowrap w-100" class="display" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Debit</th>
                                                    <th>Credit</th>
                                                </tr>
                                            </thead>
                                            <tbody>';
                                                $i= 1;
                                              $sql = "SELECT SUM(loan_amount +compulsory_sav) AS debit,amount FROM loan_request INNER JOIN repayment_tbl ON loan_request.loan_code = repayment_tbl.loan_code GROUP BY loan_code";

												$query = mysqli_query($conn,$sql);

												$row = mysqli_fetch_array($query);
                                                $query = mysqli_query($conn,$sql);
                                                while($rows = mysqli_fetch_assoc($query)){
                                                    $loanamount = $rows['loan_amount'];
                                                    $compulsorysav  = $rows['compulsory_sav'];
                                                    $amount = $rows['amount'];
                                                    $debit = $rows['debit'];
                                                    $credit = $amount;
                                                    //$total = $rows['totalsaved'];
                                                ?>
                                                <tr>
                                                    <td><?php echo $i;?></td>
                                                    <td><?php echo $debit;?></td>
                                                    <td><?php echo $credit;?></td>
                                                </tr>
                                               <?php $i++; }?>
                                               
                                            </tbody>
                                            <tfoot>
                                                <!-- <tr>
                                                
                                                <?php
                                                	$sql2 = "SELECT SUM(total) as total FROM passbook_deposit WHERE passbook_id='".$_GET['q']."'";
                                                	$query2 = mysqli_query($conn,$sql2);
                                                	$row2 = mysqli_fetch_assoc($query2);
                                                	$total = $row2['total'];
                                                	//echo $total;
                                                ?>
                                                	
                                                    <th colspan="6" style="text-align:right">Total:</th>
                                                    <th colspan="7" style="text-align:left"><?php echo number_format($total,2);?></th>
                                                </tr> -->
                                            </tfoot>
                                        </table>


