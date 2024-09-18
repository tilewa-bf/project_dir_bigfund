<?php
	include "../db.php";

	if(isset($_POST['submitpermission'])){

		$creation_date = date_create(null,timezone_open('Africa/Lagos'));
		$creation_date = date_format($creation_date,'Y-m-d'); 

		$user_id = $_POST['user_id'];
		if($user_id!=''){
			$deleteqry = "DELETE FROM link_useraccess WHERE user_id='$user_id'";
			$queryres = mysqli_query($conn,$deleteqry);

			foreach($_POST['userpermission'] as $key => $value){
				$userpermission = $_POST['userpermission'][$key];
				$link = $_POST['link_id'][$key];
				$sublink = $_POST['sublink_id'][$key];

				$insertqry = "INSERT INTO link_useraccess(permission_id,link_id,sublink_id,user_id,user_permission,creation_date)VALUES(NULL,'$link','$sublink','$user_id','$userpermission','$creation_date')";
				$insertres = mysqli_query($conn,$insertqry);
			}
		}
	}
	echo '<script>alert("Permission Added Successfully");
			window.location="dashboard.php";
	</script>';
?>