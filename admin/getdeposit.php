<?php
include '../db.php'; 
include '../auth.php';

?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--CSS Link-->
<link rel="stylesheet" type="text/css" href="bootstrapcss/bootstrap.min.css">
<!--Javascript Link-->
<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

	<title></title>
</head>
<body>
   <div id="trans">
                                            <table id="trans" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                    <th>Account Number</th>
                                                    <th>Customer Name</th>
                                                    <th>Account Officer</th>
                                                    <th>Amount</th>
                                                    </tr>                                         
                                                </thead>
                                                <tbody>                                     
                                            <?php

                                            $sql = "SELECT * FROM data_entry_tbl WHERE status = 'Pending' AND post_by='$dbname' ORDER BY d_id ASC ";

                                            $result= mysqli_query($conn, $sql) or die($sql);

                                                while($rows = mysqli_fetch_array($result)){

                                             	$dbaccno = $rows['cust_acc'];
                                                $dbcustname = $rows['cust_name'];
                                                $dbaccoff = $rows['account_officer'];
                                                $amount = $rows['amount'];

                                                ?>
                                                
                                                    <td><?php echo $dbaccno; ?></td>
                                                    <td><?php echo $dbcustname; ?></td>
                                                    <td><?php echo $dbaccoff; ?></td>
                                                    <td><?php echo $amount; ?></td>
                                                    <!--
                                                    <td>
                                                    <li><a href="javascript:deletemenu(<?php echo $rows['id']; ?>)">Delete</a></li>
                                                    </td>-->

                                                </tr>
                                                <?php

                                                	//mysqli_close($conn);
                                                 }?>

                                            </tbody>
                                            
                                            <tfoot>
                                                <tr>
                                                    <th>Total</th>
                                                    <th></th>
                                                    <th></th>
                                                    <th style="font-size:20px;" id="total"></th>
                                                    <th></th>
                                                    
                                                    
                                                </tr>
                                            </tfoot>
                                            </table>
                                        </div>
</body>
</html>


