<?php
// MySQLi Database connection
include "../db.php";
include "../auth.php";

// Fetch savings accounts from the database
$sql = "SELECT * FROM deposit_savings_tbl WHERE savings_type='Fixed Savings'";
$result = $conn->query($sql);

// Current date
$currentDate = new DateTime();

// Loop through the accounts and apply interest
while ($row = $result->fetch_assoc()) {
    $tid = "1".rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).date('Y').date('m').date('d');
    $accountId = $row['account_number'];
    $balance = $row['balance'];
    $interestRate = $row['interest_rate'];
    $savtype = $row['savings_type'];
    $name = $row['cust_name'];
    $accountoff = $row['account_officer'];
    $lastApplied = new DateTime($row['last_interest_applied']);
  
    // Check if it's time to apply interest (assuming monthly interest application)
    $interval = $lastApplied->diff($currentDate)->m; // Get number of months passed
    echo $interval;
    if($interval>=1) {
        // Calculate the interest
        $interest = ($balance * $interestRate)/100;

        // Update the balance
        $newBalance = $balance + $interest;

        // Update the last applied date to today
        $lastAppliedDate = $currentDate->format('Y-m-d');

        // //Update the account in the database
        // $updateSql = "UPDATE deposit_savings_tbl SET interest_applied = ?, balance = ?, last_interest_applied = ? WHERE savings_type = ?";
        // $stmt = $conn->prepare($updateSql);
        // $stmt->bind_param("ddss",$interest,$newBalance, $lastAppliedDate,$savtype);
        // $stmt->execute();

        // //Insert into deposit_savings_tbl
        $dt = Date("Y-m-d h:i:sa");
        $sql = "INSERT INTO `deposit_savings_tbl`(`mem_id`,`savings_type`, `trans_id`, `account_number`, `cust_name`, `account_officer`,`debit`,`credit`, `amount`,`balance`,`interest_rate`,`interest_applied`,`last_interest_applied`, `narration`,`ref_no`, `entry_type`, `status`, `status2`,`status3`, `post_by`, `confirm_by`,`confirm_dt`, `trans_date`, `date_time`)
         VALUES (NULL,'$savtype','$tid','$accountId','$name','$accountoff',0,'$interest','$interest','$newBalance','$interestRate','$interest','$lastAppliedDate','Interest Applied','NA','Credit','Confirmed','undelete','unmove','$dbname',NULL,NULL,'$lastAppliedDate','$dt')";
        $query2 = mysqli_query($conn,$sql) or die($sql);

        echo "Successful";
        // //Insert the second leg into the depost_savings_tbl
        // $sqldep = "INSERT INTO `deposit_savings_tbl`(`mem_id`,`savings_type`, `trans_id`, `account_number`, `cust_name`, `account_officer`,`debit`,`credit`, `amount`, `narration`,`ref_no`,`trans_type`, `entry_type`, `pay_type`, `status`, `status2`,`status3`, `post_by`, `confirm_by`,`confirm_dt`, `trans_date`, `date_time`) 
        // VALUES (NULL,'$savtype','$tid','$glaccno','$glaccname','$accountoff','$credit','$debit','$amt','$narration','NA','$transtype','$entrytype2','Cash','Pending','undelete','unmove','$dbname',NULL,NULL,'$trans_date','$dt')";
        // $querydep = mysqli_query($conn,$sqldep) or die($sqldep);

        // echo "Interest applied to account ID: $accountId. New Balance: $newBalance\n";
    }
}

// Close the connection
$conn->close();
?>
