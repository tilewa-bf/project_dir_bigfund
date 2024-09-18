<?php


$ref  = $_GET['reference'];

$pbkid = substr($ref,0,8);

if($ref==""){
  header("Location: javascript://history.go(-1)");
}
?>
<?php
  $curl = curl_init();
  
  curl_setopt_array($curl, array(
    CURLOPT_URL => "https://api.paystack.co/transaction/verify/".rawurlencode($ref),
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
      "Authorization: Bearer sk_live_4bc3137909c13899404fcff646a49772a776ec0a",
      "Cache-Control: no-cache",
    ),
  ));
  
  $response = curl_exec($curl);
  $err = curl_error($curl);
  curl_close($curl);
  
  if ($err) {
    echo "cURL Error #:" . $err;
  } else {
    //echo $response;
    

    $result = json_decode($response);
  }
   if($result->data->status=="success"){

    $status = $result->data->status;
    $reference = $result->data->reference;
    $channel = $result->data->channel;
    $total = $result->data->amount;
    $total = $total/100;
    $cus_email = $result->data->customer->email;
    date_default_timezone_set('Africa/Lagos');
    $trans_date = date('Y-m-d');
    $date_time= date('Y-m-d h:i:sa', time());
    
    //$pbkid= "TP12345";
    //$dbname = $lname. " ". $fname;

      include "../db.php";
      include "../auth2.php";
      

  $sql = "SELECT surname,firstname,othername,contribution,passbook_id FROM member INNER JOIN passbook ON member.member_id ='".$memberid."' AND passbook.member_id='".$memberid."'";


    $query = mysqli_query($conn,$sql) or die($sql);
    $row = mysqli_fetch_assoc($query);
    $surname = $row['surname'];
    $firstname = $row['firstname'];
    $othername = $row['othername'];
    $fullname = $surname. " ". $firstname. " ". $othername;

    
    $conamt = $row['contribution'];

    $nod = $total/$conamt;
    

        $sql = "INSERT INTO passbook_deposit(id,trans_id,ref_no,entry_type,pay_type,member_id,passbook_id,member_name,amount,no_of_days,total,status,status2,status3,deposit_by,confirm_by,trans_date, date_time) VALUES (NULL,'N/A','$reference','Deposit','$channel','$memberid','$pbkid','$fullname','$conamt','$nod','$total','1','Confirmed','undelete','$fullname','paystack','$trans_date','$date_time')";

        

        $query = mysqli_query($conn,$sql) or die($sql);
        if($query){
            $sql = "INSERT INTO deposit(id,member_id,passbook_id,total_contribution,status,trans_date,date_time,deposit_by)VALUES(NULL,'$memberid','$pbkid','$total','Confirmed','$trans_date','$date_time','$fullname') ";

            $query = mysqli_query($conn,$sql);
            header("Location: savplan.php?status=success");
            exit;
        }else{
            echo "Deposit was not Successful";
        }

    
  
  mysqli_close($conn);

  }else{
    header("Location:pages-404.html");
    exit;
  }
    
      

?>
