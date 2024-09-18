<?php
include "../db.php";
include "../auth.php";

if(isset($_GET['confirmdeposit'])){
    $id = $_GET['confirmdeposit'];

    date_default_timezone_set('Africa/Lagos');
    $lastinterestApplied = date("Y-m-d");
    $confirmdt = date("Y-m-d h:i:sa");

    //Fixed Savings account selection
    // $sql = "SELECT * FROM deposit_savings_tbl WHERE savings_type = 'Fixed Savings'";
    // $resultfs = mysqli_query($conn,$sql);
    // $datafs = mysqli_fetch_assoc($resultfs);
    // $firstdepositdate = $datafs['last_interest_applied'];

    // if(isset($firstdepositdate)){
    //     $query = "UPDATE deposit_savings_tbl SET status='Confirmed', confirm_by='$dbname',confirm_dt='$confirmdt' WHERE status='Processing' AND status2= 'undelete' AND trans_id = '".$id."'";
    // $result = mysqli_query($conn,$query);
    // }else{
    //     $query = "UPDATE deposit_savings_tbl SET last_interest_applied='$lastinterestApplied', status='Confirmed', confirm_by='$dbname',confirm_dt='$confirmdt' WHERE status='Processing' AND status2= 'undelete' AND trans_id = '".$id."'";
    // $result = mysqli_query($conn,$query);
    // }
    $query = "UPDATE deposit_savings_tbl SET last_interest_applied='$lastinterestApplied', status='Confirmed', confirm_by='$dbname',confirm_dt='$confirmdt' WHERE status='Processing' AND status2= 'undelete' AND trans_id = '".$id."'";
    $result = mysqli_query($conn,$query);
    
    
    if($result){
        $query2 = "UPDATE income_tbl SET status='Confirmed',confirmed_by='$dbname',confirm_dt='$confirmdt' WHERE status='Processing' AND status2 = 'undelete' AND trans_id='".$id."'";
        $result2 = mysqli_query($conn,$query2);

        echo "<script>window.alert('Transaction Posted Successfully');
        window.location.href='confirmmemsaving.php'</script>";
     }
    }else{
    echo "Check your Query";
    
    }

?>

