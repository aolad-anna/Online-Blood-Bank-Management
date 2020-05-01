<?php 
include("config.php");


if(isset($_POST['G_DISTRICT_ID']))
{
$sql="Select DIVISION.DIVISION_ID, DIVISION.DIVISION_NAME, DISTRICT.DISTRICT_NAME, DISTRICT.DISTRICT_ID
From state Inner Join
DISTRICT On DISTRICT.DIVISION_ID = DIVISION.DIVISION_ID
Where DISTRICT.DISTRICT_ID ={$_POST['G_DISTRICT_ID']}";

$result=$con->query($sql);
if($result->num_rows>0)
{
if($row=$result->fetch_assoc())
{
echo "<option value='{$row['DIVISION_NAME']}'>{$row['DIVISION_NAME']}</option>";
}
}

}
	
if(isset($_POST['G_DIVISION_ID']))
{
$sql="Select DIVISION_ID,DIVISION_NAME FROM DIVISION WHERE COUNTRY_ID=".$_POST['G_DIVISION_ID'];

$result=$con->query($sql);
if($result->num_rows>0)
{
while($row=$result->fetch_assoc())
{
echo "<option value='{$row['DIVISION_ID']}'>{$row['DIVISION_NAME']}</option>";
}
}

}
	
?>