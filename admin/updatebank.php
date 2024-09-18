<?php
include "../db.php";
include "../auth.php";

// if(isset($_GET['id'])){
//     $id = $_GET['id'];
// }

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
 if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST['banksubmit'])){

        if(isset($_POST['membernumber'])){
            $membernumber  =  $_POST['membernumber'];
        }
        $accountname = $_POST['accountname'];
        $bankname = $_POST['bankname'];
        $accountnumber = $_POST['accountnumber'];

        $date = date("Y-m-d");

        $sql ="UPDATE bank SET account_name='$accountname',bank_name='$bankname',account_number='$accountnumber',updated_by='$dbname' WHERE member_id='".$membernumber."'";
        $result = mysqli_query($conn,$sql) or die($sql);
        

        if($result){
            $msg = "Bank Details Save Successful";
            echo "<script>window.alert('Bank Details Save Successuful');
            window.location.href='viewmember.php';
            </script>";
        }else{
        $msg= "Not Successuful";
        }
        

    }
    }

?>