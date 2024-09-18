<?php

include "../db.php";

include "../auth.php";

if($_SERVER["REQUEST_METHOD"]=="POST"){
  if(isset($_POST['save'])){

    if(isset($_GET['id'])){
    $admin_id = $_GET['id'];
    }
    
  if(isset($_POST['am'])){
    $am = "Yes";
  }else{
    $am = "No";
  }
  
  if(isset($_POST['vm'])){
    $vm = "Yes";
  }else{
    $vm = "No";
  }

  if(isset($_POST['mf'])){
    $mf = "Yes";
  }else{
    $mf = "No";
  }

  if(isset($_POST['cp'])){
    $cp = "Yes";
  }else{
    $cp = "No";
  }
   
   if(isset($_POST['pd'])){
    $pd = "Yes";
  }else{
    $pd = "No";
  }
   if(isset($_POST['pw'])){
    $pw = "Yes";
  }else{
    $pw = "No";
  }
   if(isset($_POST['cd'])){
    $cd = "Yes";
  }else{
    $cd = "No";
  }
   if(isset($_POST['cw'])){
    $cw= "Yes";
   }else{
    $cw = "No";
   }
   if(isset($_POST['ca'])){
    $ca = "Yes";
  }else{
    $ca = "No";
  }
  if(isset($_POST['cj'])){
    $cj = "Yes";
  }else{
    $cj = "No";
  }
   if(isset($_POST['roles'])){
    $roles = "Yes";
  }else{
    $roles = "No";
  }


//Attempt query execution
$sql2 = "UPDATE admin SET add_mem='".$am."',view_mem='".$vm."',mem_fee='".$mf."',create_pb='".$cp."',pb_dep='".$pd."',pb_wtd='".$pw."',con_dep='".$cd."',con_wtd='".$cw."',create_admin='".$ca."',create_jur='".$cj."',roles='".$roles."' WHERE admin_id='".$admin_id."'";
$result2= mysqli_query($conn,$sql2) or die($sql2);

if($result2){
  echo "<script>window.alert('Privilege(s) Successfully Set');
  window.location.href= 'priviledge.php'</script>";
  }else{
    mysqli_error($conn);
}
    
}
mysqli_close($conn);
}

?>