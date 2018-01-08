<?php
include_once 'dbcon.php';
$id = $_POST['id'];
$status = $_POST['status'];
$date = date("Y-m-d");
$chkcount = count($id);

for($i=0; $i<$chkcount; $i++)
{
	$result = $MySQLiconn->query("INSERT INTO attendance (attendance_std_master_id, attendance_status, created_at) VALUES ('{$id[$i]}', '{$status[$i]}', '{$date}')");
}

	if (!$result) {
		echo "Query Failed...!";
	} else {
		echo "Attendance Marked...!";
	}
header("Location: ../index.php");
?>
<!-- <br>
 <?php
	// echo $chkcount . '<br>';
	// ////////Working with arrays////////////
	// var_dump($id);
	// 	echo "<br>";
	// var_dump($status);
?> -->

<?php
	//echo $date;
?>