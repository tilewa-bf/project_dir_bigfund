<?php

if(empty($_SESSION)) // if the session not yet started 
session_start();

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

$alerttype="";
if($_SERVER["REQUEST_METHOD"] =="POST"){
    if(isset($_POST['submit'])){

$branchcode = test_input($_POST['branchcode']);

$connection = mysqli_connect("localhost","root","","branch_db");
if(!$connection){
    die("Wrong Connection to Branch Database").mysqli_connect_error();
}else{
    $branchsql = "SELECT * FROM setting_tbl WHERE branch_code='$branchcode'";
    $branchresult = mysqli_query($connection,$branchsql) or die($branchsql);
    if(mysqli_num_rows($branchresult)==1){
            $branchdata = mysqli_fetch_assoc($branchresult);
            $branchdatabase = $branchdata['db_name']; 
            $databasebranchname = $branchdata['branch_name'];
            $databasebranchcode = $branchdata['branch_code'];

            $_SESSION['branchdatabase'] = $branchdatabase;
            $_SESSION['databasebranchname'] = $databasebranchname;
            $_SESSION['databasebranchcode'] = $databasebranchcode;
        }
}

$conn = mysqli_connect("localhost","root","","$branchdatabase");
if(!$conn){
    die("Wrong Connection").mysqli_connect_error();
}

$email = test_input($_POST['email']);
$email = filter_var($email, FILTER_SANITIZE_EMAIL);
$email = filter_var($email, FILTER_VALIDATE_EMAIL);
if(!$email){
    $msg="Invalid email address, please type valid email address";
    $alerttype="danger";
}else{
 $sql = "SELECT * FROM staff_tbl WHERE email='$email' AND status2='Active'";
$result = mysqli_query($conn, $sql) or die($sql);
}

if(mysqli_num_rows($result)==1){
    while($row = mysqli_fetch_assoc($result))
    {
        $dbemail= $row['email']; 
        $key=bin2hex(random_bytes(16));
        date_default_timezone_set('Africa/Lagos');
        $expFormat = mktime(
        date("H"), date("i"), date("s"), date("m")+30 ,date("d"), date("Y")
        );
        $expDate = date("Y-m-d H:i:s",$expFormat);
        $sqlins="INSERT INTO `pwd_reset`(`pwd_id`, `email`, `key`, `expDate`) VALUES (NULL,'$dbemail','$key','$expDate')";
        $queryins=mysqli_query($conn,$sqlins);
 
        // Sending email
        $to = $dbemail;

        //sender
        $from = 'noreply@nikolemp.com.ng';
        $fromName = 'NIKOL EMPOWERMENT LTD';

        //email subject
         
        $subject = 'PASSWORD RESET LINK '."Date ".date('Y-m-d') ; 

        //email body content
        $htmlContent = "<h4>Your password rest link is:</h4>
            <a href='forgot-password.php?token=<php echo $key;?>'>Password Reset</a>";

        //header for sender info
        $headers = "From: $fromName"." <".$from.">";

        /*
        // Cc email
        $headers .= "\nCc: bigbrovtnl@gmail.com";

        // Bcc email
        $headers .= "\nBcc: kkyy@gmail.com";

        */
        //boundary 
        $semi_rand = md5(time()); 
        $mime_boundary = "==Multipart_Boundary_x{$semi_rand}x"; 

        //headers for attachment 
        $headers .= "\nMIME-Version: 1.0\n" . "Content-Type: multipart/mixed;\n" . " boundary=\"{$mime_boundary}\""; 

        //multipart boundary 
        $message = "--{$mime_boundary}\n" . "Content-Type: text/html; charset=\"UTF-8\"\n" .
        "Content-Transfer-Encoding: 7bit\n\n" . $htmlContent . "\n\n"; 

        //preparing attachment
        if(!empty($file) > 0){
            if(is_file($file)){
                $message .= "--{$mime_boundary}\n";
                $fp =    @fopen($file,"rb");
                $data =  @fread($fp,filesize($file));

                @fclose($fp);
                $data = chunk_split(base64_encode($data));
                $message .= "Content-Type: application/octet-stream; name=\"".basename($file)."\"\n" . 
                "Content-Description: ".basename($file)."\n" .
                "Content-Disposition: attachment;\n" . " filename=\"".basename($file)."\"; size=".filesize($file).";\n" . 
                "Content-Transfer-Encoding: base64\n\n" . $data . "\n\n";
            }
        }
        $message .= "--{$mime_boundary}--";
        $returnpath = "-f" . $from;

        //send email
        $mail = @mail($to, $subject, $message, $headers, $returnpath); 
        if(email){
            $msg = "Message Sent Successfully";
        }else{
            $msg = "Message not Sent Successfully";
        }
        
    }  
}
  
else{
    $msg =  "Branch Code or Invalid Email or Inactive Account";
    $alerttype="danger";
}

    mysqli_close($conn);
}
}
?>

<!doctype html>
<html lang="en">

<head>
        
        <meta charset="utf-8" />
        <title>Bigfund | Password Recovery</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/bigfund.png">

        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body>
        <div class="account-pages my-5 pt-sm-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card overflow-hidden">
                            <div class="bg-primary bg-soft">
                                <?php if(isset($msg)){?><div class="alert alert-<?php echo $alerttype;?> alert-dismissible fade show" role="alert">
                            <?php echo $msg;?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div> <?php } ?>
                                <div class="row">
                                    <div class="col-7">
                                        <div class="text-primary p-4">
                                            <h5 class="text-primary"> Reset Password</h5>
                                        </div>
                                    </div>
                                    <div class="col-5 align-self-end">
                                        <img src="assets/images/profile-img.png" alt="" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body pt-0"> 
                                <div>
                                    <a href="login.php">
                                        <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="assets/images/logo.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                                
                                <div class="p-2">
                                    <div class="alert alert-success text-center mb-4" role="alert">
                                        Select your Branch Code and enter your Email to receive instructions in your inbox!
                                    </div>
                                    <form class="form-horizontal" action="pwdrecovery.php" method="POST">
                                        <div class="mb-3">
                                                    <label for="useremail" class="form-label">Branch Code</label>
                                                    <select name="branchcode" class="form-control" required>
                                                        <option value="">Choose Branch Code</option>
                                                        <option value="OKEARO">OKEARO</option> 
                                                        <option value="ABULEEGBA">ABULEEGBA</option>
                                                    </select>        
                                        </div>
                                        <div class="mb-3">
                                            <label for="useremail" class="form-label">Email</label>
                                            <input type="email" name="email" class="form-control" id="useremail" placeholder="Enter email">
                                        </div>
                    
                                        <div class="text-end">
                                            <button type="submit" name="submit" class="btn btn-primary w-md waves-effect waves-light">Reset</button>
                                        </div>
                                    </form>
                                </div>
            
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            <p>Remember It ? <a href="login.php" class="fw-medium text-primary"> Sign In here</a> </p>
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- JAVASCRIPT -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>
        
        <!-- App js -->
        <script src="assets/js/app.js"></script>
    </body>
</html>
