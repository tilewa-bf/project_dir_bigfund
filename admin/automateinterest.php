<?php
// MySQLi Database connection (replace with your database credentials)
include "../db.php";
include "../auth.php";

// // Fetch savings accounts from the database
$sql = "SELECT account_number, balance, interest_rate, last_interest_applied FROM deposit_savings_tbl WHERE savings_type='Fixed Savings'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$lastApplied = date($row['last_interest_applied']);

$currentDate = date("Y-m-d");
echo var_dump($lastApplied);
echo var_dump($currentDate);
$interval = $lastApplied->diff($currentDate)->m;
echo $interval;
// // Current date
// $currentDate = date("Y-m-d");

// // Loop through the accounts and apply interest
// while ($row = $result->fetch_assoc()) {
//     $accountId = $row['account_number'];
//     $balance = $row['balance'];
//     $interestRate = $row['interest_rate'];
//     $lastApplied = date($row['last_interest_applied']);

//     // Check if it's time to apply interest (assuming monthly interest application)
//     $interval = $lastApplied->diff($currentDate)->m; // Get number of months passed
//     echo $interval;
    
//     if ($interval >= 1) {
//         // Calculate the interest
//         $interest = ($balance * $interestRate) / 100;

//         // Update the balance
//         $newBalance = $balance + $interest;

//         // Update the last applied date to today
//         $lastAppliedDate = $currentDate->format('Y-m-d');

//         // Update the account in the database
//         $updateSql = "UPDATE deposit_savings_tbl SET balance = ?, last_interest_applied = ? WHERE id = ?";
//         $stmt = $conn->prepare($updateSql);
//         $stmt->bind_param("dsi", $newBalance, $lastAppliedDate, $accountId);
//         $stmt->execute();

//         echo "Interest applied to account ID: $accountId. New Balance: $newBalance\n";
//     }
// }

// // Close the connection
// $conn->close();

$date1 = new DateTime('2023-01-15');
$date2 = new DateTime('2023-09-16');

$interval = $date1->diff($date2);

$months = $interval->y*12 + $interval->m;

if($interval->d < 0){
    $months--;
}

echo "The difference is $months months."
?>
