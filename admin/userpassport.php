<?php
include "db_config.php";
include "auth.php";


$sid=$img=$dbstid=$dbimg="";
if(isset($_GET['sid'])){
	$sid = $_GET['sid'];
}  

$sql1 = "SELECT * FROM student_tbl WHERE std_id='".$sid."'";
$query1  =  mysqli_query($conn,$sql1) or die($sql1);
$rs1 = mysqli_fetch_assoc($query1);
if(isset($rs1['std_id'])){
	$dbstid = $rs1['std_id'];
}
if(isset($rs1['student_image'])){
	$dbimg  = $rs1['student_image'];
}



// if(isset($_POST['submit'])){		
// 		$image_name = $_FILES['newimage']['name'];
// 		$image_temp = $_FILES['newimage']['tmp_name'];
// 		$previous = "../admin/images/$dbimg";
// 		$exp = explode(".", $image_name);
// 		$end = end($exp);
// 		//$name = time().".".$end;
// 		if(!is_dir("./images"))
// 			mkdir("images");
// 		$path = $image_name;
// 		$allowed_ext = array("gif", "jpg", "jpeg", "png");
// 		if(in_array($end, $allowed_ext)){
// 			if(unlink($previous)){
// 				if(move_uploaded_file($image_temp, $path)){
// 					mysqli_query($conn, "UPDATE student_tbl SET `student_image` = '$path' WHERE `std_id` = '$dbstid'") or die(mysqli_error());
// 					echo "<script>alert('Image Updated Successfully!')</script>";
// 					header("location: index.php");
// 				}
// 			}		
// 		}else{
// 			echo "<script>alert('Image only')</script>";
// 		}
// 	}
$alerttype = "";
if(isset($_POST['submit'])){
		$target_dir = "images/";
        $target_file = $target_dir . basename($_FILES["newimage"]["name"]);
        //$uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        // Check if file already exists
        if(file_exists($target_file)){
          $errors= "Sorry, image already exists.";
          //$uploadOk = 0;
        }

        // Check file size
        if($_FILES["newimage"]["size"] > 500000){
            $alerttype="danger";
          $errors= "Sorry, your image is too large.";
         // $uploadOk = 0;
        }

        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
          $errors= "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
          //$uploadOk = 0;
        }

        $newimage = $_FILES["newimage"]["name"];
        $newid = $_POST['newid'];

        if(isset($_POST['oldimg'])){
        	$oldimg = $_POST['oldimg'];
        }else{
        	$errors = "Ooops! No such Image in that directory";
        }
        if(isset($errors)){
            $msg = $errors;
            $alerttype="danger";
        }elseif(unlink("../admin/images/".$oldimg))
        {

		$updatequery = mysqli_query($conn,"UPDATE student_tbl SET student_image='$newimage' WHERE std_id='".$newid."'")or die(mysqli_error($conn));
		if($updatequery){
			
			move_uploaded_file($_FILES["newimage"]["tmp_name"], $target_file);
			echo '<script>alert("Image Successfully Updated");
				window.location="manage_students.php";
			</script>';
			// $msg = "Image Updated Successfully.";
   //          $alerttype = "success";
		}else{
			echo '<script>alert("Image not Updated Successfully");
				window.location="manage_students.php";
			</script>';
			$msg  =  mysqli_error($conn);
		}

	}
	}

?>



<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>JSMS - Edit Image</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
	
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&amp;display=swap">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
	
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			
			<?php include "hrm.php";?>
			<?php //include "navigation.php";?>
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				<?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
							<?php echo $msg; ?>
							<a href="#" class="alert-link"></a>.
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							</button>
						</div><?php }?>
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<?php if(isset($dbimg)){
								$dbimg = $dbimg;
							}?>
							<div class="col-sm-12">
								<img src="../admin/images/<?php echo $dbimg;?>" alt="student image" width="150px" height="160px"><br/><br/>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-sm-12">
							<form method="POST" action="edit_student_image.php" enctype="multipart/form-data">
								<input type="file" name="newimage"><br/>
								<input hidden type="text" value="<?php echo $dbstid;?>" name="newid">
								<input hidden type="text" value="<?php echo $dbimg;?>" name="oldimg">
								<button type="submit" name="submit" class="btn  btn-info">Change Image</button>
							</form>
						</div>			
					</div>
					
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<!-- Custom JS -->
		<script  src="assets/js/script.js"></script>
		
    </body>



</html>