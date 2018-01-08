<?php
	if (isset($_GET["section_id"])) {
		$section_id = $_GET["section_id"];
		echo "<h1>" . $section_id . "</h1>";
	} else {
?>
	<script>window.location.href='../index.php';</script>

<?php

	}


?>
<!DOCTYPE html>
<html>
<head>
	<title>Manual Calander</title>
</head>
<body>

<center>
<table border="1"  cellpadding="15%" cellspacing="15%">
<?php
	$month = date("m");
	$year = date("Y");
	for ($i=1; $i <= 31 ; $i++) { 
		if ($i == 1 || $i == 6 || $i == 16 || $i == 26 || $i == 31) {
			echo "<tr>";
		}

		if ($i != 31) {
			echo "<th>" . "<a href=\"mark_attendance/index.php?date={$year}-{$month}-{$i}&section_id={$section_id}\">" . $i . date("-m-") . date("Y") . "</a>" . "</th>";
		}

		if ($i == 31) {
			if ($month == 1 || $month == 3 || $month == 5 || $month == 7 || $month == 8 || $month == 10 || $month == 12) {
				echo "<th colspan=\"5\">" . "<a href=\"mark_attendance/index.php?date={$year}-{$month}-{$i}&section_id={$section_id}\">" . $i . date("-m-") . date("Y") . "</a>" . "</th>";
			}

		}	
		
		if ($i == 5 || $i == 10 || $i == 20 || $i == 30 || $i == 31) {
			echo "</tr>";
		} 
		
	}
?>
</table>
</center>


</body>
</html>