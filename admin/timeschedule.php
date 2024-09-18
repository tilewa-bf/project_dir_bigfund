<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Schedule</title>
	<style type="text/css">
		table, th, td {
			border:1px solid black;
			border-collapse: collapse;
			padding: 10px;
		}
	</style>
</head>
<body>

<table>
	<thead>
	<tr>
		<th>S/N</th>
		<th>Date</th>
	</tr>
	</thead>
	
	<tbody>
	<?php
		$n=1;
		$appdate = date("Y-m-d");
		$startdate=strtotime($appdate);
		$enddate=strtotime("+23 weeks", $startdate);

		while ($startdate < $enddate) {
		  $startdate = strtotime("+1 week", $startdate);
		  $sd= date("Y-m-d", $startdate);
		?>
		<tr>
			<td><?php echo $n;?></td>
			<td><?php echo $sd;?></td>
		</tr>
		
	<?php $n++; } ?>
</tbody>
</table>


</body>
</html>