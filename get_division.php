<?php 
include("config.php");
	
if(isset($_POST['G_DIVISION_ID']))
{
$sql="Select DIVISION_ID,DIVISION_NAME FROM division WHERE COUNTRY_ID=".$_POST['G_DIVISION_ID'];

$result=$con->query($sql);
if($result->num_rows>0)
{
	echo '<option value="">Select Division</option>';
while($row=$result->fetch_assoc())
{
echo "<option value='{$row['DIVISION_ID']}'>{$row['DIVISION_NAME']}</option>";
}
}

}
?>