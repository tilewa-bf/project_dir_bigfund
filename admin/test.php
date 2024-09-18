<?php

include "../db.php";
include "../auth.php";

$sql = "SELECT date_paid,status FROM deposit_count2 WHERE passbook_id='TP672532' ORDER BY date_paid DESC LIMIT 3";
$query = mysqli_query($conn,$sql);

//$row=array(array(mysqli_fetch_array($query)));
	$arralength = mysqli_num_rows($query);
	//echo $arralength;
while($row = mysqli_fetch_array( $query)){
	$array[] = $row['date_paid'];
}
for($i=0; $i < $arralength-3 ; $i++) { 
		echo $array[$i];
		echo "<br>";
	}

echo $array[0];
echo "<br/>";
echo $array[1];
echo "<br/>";
echo $array[2];
echo "<br/>";

$a = array(
  array(
    'id' => 5698,
    'first_name' => 'Peter',
    'last_name' => 'Griffin',
  ),
  array(
    'id' => 4767,
    'first_name' => 'Ben',
    'last_name' => 'Smith',
  ),
  array(
    'id' => 3809,
    'first_name' => 'Joe',
    'last_name' => 'Doe',
  )
);

$last_names = array_column($a, 'id');
print_r($last_names);



//$paid = "Paid";

//echo array_count_values(array_column($list, 'status'))[$paid];
/*
$list = [mysqli_fetch_assoc($query)];

$paid = "Paid";
echo array_count_values(array_column($list, 'status'))[$paid];
*/

//$list = [
 // mysqli_fetch_array($query)
//];

/*
$list = [
  ['id' => 1, 'status' => "Paid"],
  ['id' => 2, 'status' => "Paid"],
  ['id' => 3, 'userId' => 6],
];
$paid = "Paid";

echo array_count_values(array_column($list, 'status'))[$paid];
*/

?>