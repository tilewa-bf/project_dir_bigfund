<?php
include "../db.php";
include "../auth.php";



function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
  //Code to insert bank details
   
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST['banksubmit'])){
        if(isset($_POST['staffnumber'])){
            $staffnumber  =  $_POST['staffnumber'];
        }
        $accountname = $_POST['accountname'];
        $bankname = $_POST['bankname'];
        $accountnumber = $_POST['accountnumber'];

        $date = date("Y-m-d");

        $sql ="UPDATE bank SET account_name='$accountname',bank_name='$bankname',account_number='$accountnumber',updated_by='$dbname' WHERE member_id='".$staffnumber."'";
        $result = mysqli_query($conn,$sql) or die($sql);
        

        if($result){
            $msg = "Bank Details Save Successful";
            echo "<script>window.alert('Bank details updated successfully');
            window.location.href='edit-staff.php';
            </script>";
        }else{
        $msg= "Not Successuful";
        }
        

    }
    }

?>