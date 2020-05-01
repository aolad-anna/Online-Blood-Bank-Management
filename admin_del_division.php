<?php
include("config.php");
if(isset($_GET["id"]))
{
	$id=$_GET["id"];
	$sql="DELETE FROM division WHERE DIVISION_ID=$id";
	$con->query($sql);
	echo "<script>
		alert('division Deleted');
		window.open('admin_division.php','_self');
	</script>";
}
?>