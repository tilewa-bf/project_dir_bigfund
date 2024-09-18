<?php
if(isset($_POST['submit'])){
	$a = $_POST['amt'];
	$a = str_replace(",", '', $a);
	$b = 500.00;

	if($b < $a){
	echo 'balance is too small';
	}else{
		echo 'You can withdrawal';
	}
	}
?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
<form action="test2.php" method="post">
	<input type="text" name="amt" id="input">
	<input type="submit" name="submit" value="Submit">
</form>

<script type="text/javascript">
	input.addEventListener('keyup', function(event) {
        event.target.value = event.target.value
        .replace(/\D/g, '')
        .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        });
</script>
</body>
</html>

