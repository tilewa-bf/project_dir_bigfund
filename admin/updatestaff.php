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

//Update personal information
if($_SERVER["REQUEST_METHOD"] == "POST"){
  if(isset($_POST['submit'])){
        
        $staffinsertid  = test_input($_POST['staffinsertid']);

        $mid = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        $date = date("Y-m-d");
       
       /*Member Details*/
        if(!is_numeric($_POST['pno'])){
            $errors = "Phone number must be numeric";
        }else{
            $pno = test_input($_POST['pno']);
        }
        if(empty($_POST['gender'])){
            $errors = "Gender is empty";
        }else{
            $gender = test_input($_POST['gender']);
        }
        if(empty($_POST['dob'])){
            $errors = "Date of Birth is required";
        }else{
            $dob = test_input($_POST['dob']);
        }
        if($_POST['marital']=="Choose Marital Status"){
            $errors = "Select Marital Status";
        }else{
            $marital = test_input($_POST['marital']);
        }

        $qualification = test_input($_POST['qualification']);

        if($_POST['sor']=="Choose State"){
            $errors = "Select State of Origin";
        }else{
            $sor = test_input($_POST['sor']);
        }

        $midtype = test_input($_POST['mid']);
        $midno = test_input($_POST['midno']);
        $bvn = test_input($_POST['bvn']);
        
        if($_POST['usertype']=="Choose User"){
            $errors = "Select User";
        }else{
            $usertype = test_input($_POST['usertype']);
        }


        if($_POST['jurisdiction']=="Choose Jurisdiction"){
            $errors = "Select Jurisdiction";
        }else{
            $jurisdiction = test_input($_POST['jurisdiction']);
        }
        if($_POST['state']=="Choose State"){
            $errors = "Select State";
        }else{
            $state = test_input($_POST['state']);
        }
        if(empty($_POST['resadd'])){

            $errors = "Residential Address is Empty";
        }else{
            $resadd = $_POST['resadd'];
        }
        /*Gurantor Details*/
        $gname= test_input($_POST['gname']);

        if(!is_numeric($_POST['gphone'])){
            $errors = "Phone number must be numeric";
        }else{
            $gphone = test_input($_POST['gphone']);
        }

        $relationship = test_input($_POST['relationship']);
        $gpassport = test_input($_POST['gpassport']);
        $gaddress = test_input($_POST['gaddress']);


        //creation date
        $date = date_create(null,timezone_open('Africa/Lagos'));
        $date = date_format($date,'Y-m-d'); 

        

        /*Next of Kin Details*/
        $gname= test_input($_POST['gname']);

        if(!is_numeric($_POST['gphone'])){
            $errors = "Phone number must be numeric";
        }else{
            $gphone = test_input($_POST['gphone']);
        }

        $relationship = test_input($_POST['relationship']);

        $gaddress = test_input($_POST['gaddress']);
        $dob = $_POST['dob'];
        
        if(isset($errors)){
            $alerttype="warning";
            $msg = $errors;
        }else{

            $sql= "UPDATE staff_tbl SET phone='$pno',gender='$gender',dob='$dob',marital_status='$marital',qualification='$qualification',state_of_origin='$sor',midtype='$midtype',midno='$midno',bvn='$bvn',user_type='$usertype',jurisdiction='$jurisdiction',state='$state',address='$resadd',guarantor_name='$gname',guarantor_phone='$gphone',relationship='$relationship',guarantor_address='$gaddress',update_dt='$date', updated_by='$dbname' WHERE id='".$staffinsertid."'";

            $query = mysqli_query($conn,$sql) or die($sql);
            if($query){
                $alerttype = "success";
                echo "<script>window.alert('Staff profile updated successfully');
                window.location.href='edit-staff.php';
                </script>";
            }else{
                $alerttype ="warning";
                $msg = "Profile Update Not Successful";
            }
        
        }

           }
}

?>