<?php 
include("config.php");
	
if(isset($_POST['G_DIVISION_ID']))
{
$sql="Select DISTRICT_ID,DISTRICT_NAME FROM district WHERE DIVISION_ID=".$_POST['G_DIVISION_ID'];

$result=$con->query($sql);
if($result->num_rows>0)
{
	echo '<option value="">Select District</option>';
while($row=$result->fetch_assoc())
{
echo "<option value='{$row['DISTRICT_NAME']}'>{$row['DISTRICT_NAME']}</option>";
}
}

}
	
?>