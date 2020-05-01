
<?php 
$sql="SELECT * FROM messages WHERE STATUS=1";
$result=$con->query($sql);
$n=$result->num_rows;
if($n!=0)
{
	$mes='<span class="badge pull-right">'.$n.' Unread</span>';
}
else
{
	$mes="";
}
?>
<h3 class="text-danger">Dashboard</h3>
<hr>

<ul class="nav nav-stacked">
	<li><a href="admin_inbox.php" class="btn btn-warning"> Inbox <?php echo $mes;?></a></li>
	<li><a href="admin_donor.php" class="btn btn-info">Search Donors</a></li>
	<li><a href="admin_adonor.php" class="btn btn-success"> Active Donors</a></li>
	<li><a href="admin_ndonor.php" class="btn btn-danger"> Not Active Donors</a></li>
	<li><a href="admin_need_blood.php" class="btn btn-info">Search Need Blood</a></li>
	<hr>
	<li><a href="#add" data-toggle="collapse" class="btn btn-warning"> Settings</a></li>
	<ul class="nav collapse" id="add">
		<li><a href="admin_country.php" class="btn btn-success"> + Add Country</a></li> </br>
		<li><a href="admin_division.php" class="btn btn-success"> + Add Division</a></li> </br>
		<li><a href="admin_district.php" class="btn btn-success"> + Add District</a></li> </br>
		</li>
	</ul>
</ul>

<hr>