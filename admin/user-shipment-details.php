<?php
include "../db.php";
include "../auth.php";

$trackingid="";
if(isset($_GET['sid'])){
	$trackingid = $_GET['sid'];
}
?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- App favicon -->
<link rel="icon" type="image/x-icon" href="assets/images/bigfund.png">
<style>
table{max-width:90px;}
h2,p{
  text-align:center;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th,td{
  padding: 10px 20px;
  text-align: left;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
.print{
  margin-top:10px;
  margin-left:180px;
  background-color: #04AA6D; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
}
.close{
  margin-top:10px;
  margin-left:30px;
  background-color: #04AA6D; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
}

tr:nth-child(even) {background-color: #f2f2f2;}
.badge{
  white-space:nowrap;
  color: white;
  padding: 4px 8px;
  text-align: center;
  border-radius: 5px;
  font-weight:bold;
}
.bg-success{
  background-color: green;
}
.bg-warning{
  background-color: tomato;
}
.bg-info{
  background-color: slateblue;
}
</style>
</head>
<body>

<h2 style="color:green;">Shipment Details</h2>
<p>Below is the status of your shipment and status.</p>

<div>
<table class="center">
<thead>
  <tr>
    <th>TRACKING ID</th>
    <th>SHIPPER NAME</th>
    <th>SHIPPER PHONE NO.</th>
    <th>SHIPPER ADDDRESS</th>
    <th>SHIPPER EMAIL</th> 
    <th>STATUS</th>
  </tr>
</thead>
<tbody>
  <?php
                                             
  $sql = "SELECT * FROM shipment_tbl WHERE status2!='deleted' and tracking_id='$trackingid'";
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
                                                <td><?php echo strtoupper($shippername); ?></td>
                                                <td><?php echo $shipperpno; ?></td>
                                                <td><?php echo strtoupper($dbshipperaddress); ?></td>
                                                <td><?php echo strtoupper($dbshipperemail); ?></td>
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
                                                <th>RECEIVER PHONE NO.</th>
                                                <th>RECEIVER ADDRESS</th>
                                                <th>RECEIVER EMAIL</th> 
                                                <th>SHIPMENT MODE</th>
                                                <th>WIEIGHT</th>
                                            </tr>
                                            <tr>
                                                <td><?php echo strtoupper($dbreceivername); ?></td>
                                                <td><?php echo $dbreceiverpno; ?></td>
                                                <td><?php echo strtoupper($dbreceiveraddress); ?></td>
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
                                                <td><?php echo $dbvalue; ?></td>
                                                <td><?php echo strtoupper($dbdeparturecountry); ?></td>
                                                <td><?php echo $dbdeparturedate; ?></td>
                                                <td><?php echo strtoupper($dbdeliverycountry); ?></td>
                                                <td><?php echo $dbexpdeliverydate; ?></td>
                                            </tr>
 </tbody>
</table>
</div>
<button onclick="window.print()" class="print">Print</button>
<button onclick="redirect()" class="close">Close</button>

<script>
  function redirect(){
    location.replace('tracker.html');
  }
</script>
</body>
</html>