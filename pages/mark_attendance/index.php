<?php
	require_once 'dbcon.php';

	if (isset($_GET["date"]) && isset($_GET["section_id"])) {
		$section_id = $_GET["section_id"];
		$date = $_GET["date"];
		echo "<h1>" . $date . "</h1>";
		echo "<h1>" . $section_id . "</h1>";
	} else {
?>
	
<?php
	
	}
	
?>
<?php
	// if(isset($_POST['chk'])=="")
	// {
 //        <script>
	// 	alert('At least one checkbox Must be Selected !!!');
	// 	window.location.href='index.php';
	// 	</script>
 //        <?php
	// }
	// $chk = $_POST['chk'];
	// $chkcount = count($chk);
	
	
	
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Attendance System</title>
<!--<link rel="stylesheet" href="style.css" type="text/css" />-->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<script src="jquery.js" type="text/javascript"></script>
<script src="js-script.js" type="text/javascript"></script>
</head>

<body>
<div style="font-family: georgian; text-align:center;"><h1>Attendance System</h1></div>


<div class="clearfix"></div><br />

<div class="container">
<form method="post" action="add_mul_query.php">



<table class='table table-bordered'>
<tr>
<th>Unique ID</th>
<th>Student Name</th>
<th>Status</th>
</tr>
<?php
	$res=$MySQLiconn->query("SELECT * FROM stu_master INNER JOIN stu_info ON stu_master.stu_master_stu_info_id = stu_info.stu_info_id WHERE stu_master.stu_master_section_id = '{$section_id}'");

	$rowcount=mysqli_num_rows($res);
	if ($rowcount == 0) {
		echo "<h1>" . "No Records Found...!" . "</h1>";
	}
for($i=0; $i<$rowcount; $i++)
{
				
	
	while($row=$res->fetch_array())
	{
		?>
		<tr>
		<td>
		<input type="hidden" name="date" value="<?php echo $date;?>" />
    	<input type="hidden" name="id[]" value="<?php echo $row['stu_master_id'];?>" />
		<input type="text" name="fn[]" value="<?php echo $row['stu_unique_id'];?>" class="form-control" readonly />
        </td>
        <td><input type="text" name="ln[]" value="<?php echo $row['stu_first_name'] . " " . $row['stu_middle_name'] . " " . $row['stu_last_name'];?>" class="form-control" readonly />	</td>
        <td>
        <select name="status[]" class="form-control">
        	<option value="1">Present</option>
        	<option value="2">Absent</option>
        	<option value="3">Leave</option>
        </select>
       	</td>
		</tr>
		<?php	
	}			
}
?>
<tr>
<td colspan="3">
<button type="submit" name="savemul" class="btn btn-primary"><i class="glyphicon glyphicon-edit"></i> &nbsp; Mark</button>
&nbsp;

<a href="add_mul.php" class="btn btn-large btn-danger"> <i class="glyphicon glyphicon-fast-backward"></i> &nbsp; Cancel</a>
</td>
</tr>
</table>
</form>
</div>
</body>
</html>