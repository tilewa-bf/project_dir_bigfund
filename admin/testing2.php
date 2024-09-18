<?php declare(strict_types=1); // strict requirement

function addNumbers(int $a, int $b): float {
  return (float)$a + $b;
}
echo addNumbers(5, 6)."<br>";
echo addNumbers(2,6);
// since strict is enabled and "5 days" is not an integer, an error will be thrown
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		a{
			pointer-events: none;
		}
	</style>
</head>
<body>
<a href="https://google.com">Google.com</a>
</body>
</html>