<?php
session_start();
include("config.php");
include("admin_function.php");
 if(!isset($_SESSION['usertype']))
 {
	 header("location:admin.php");
 }
?>
<!DOCTYPE html>
<html lang="en">
	<head>
			<?php include("admin_head.php");?>
	</head>
	<body>

<?php include("admin_topnav.php"); ?>
<div class="container" style="margin-top:70px;">
	<div class="row">
		<div class="col-sm-3">
			<?php include("admin_side_nav.php");?>
		</div>
		<div class="col-sm-9" >
			<h3 class='text-danger'> Add District </h3><hr>    
			<div class="row">
				<div class="col-md-6">
				<?php 
				if(isset($_POST["district_submit"]))
				{
					$sql="INSERT INTO district (DISTRICT_NAME,DIVISION_ID) VALUES ('".$_POST["districtname"]."',".$_POST["divisionname"].")";
					$con->query($sql);
					
				}
				
				?>
				
					<p id='out' class='text-success'></p>
					<form role="form" action="admin_district.php" method="post">
						<div class="form-group text-danger">
							<label for="district">District Name</label>
							<input id="district" required type="text" class="form-control" name="districtname">
						</div>
						<div class="form-group text-danger">
							<label for="division">Select Division</label>
							<select name="divisionname" required class="form-control">
								<option value="">Select Division</option>
								<?php
									$sql="SELECT DIVISION_ID,DIVISION_NAME FROM division ORDER BY DIVISION_NAME ASC";
									$result=$con->query($sql);
									if($result->num_rows>0)
									{
										while($row=$result->fetch_assoc())
										{
										echo "<option value='{$row['DIVISION_ID']}'>{$row['DIVISION_NAME']}	</option>";
										}
									}
								?>
							</select>
						</div>
						
						<div class="form-group">
							<input type="submit" class="btn btn-success" name='district_submit' value="Add District">
						</div>
						
					</form>
				</div>
				<div class="col-md-6">
					<?php 
						$sql="Select district.DISTRICT_NAME, DIVISION.DIVISION_NAME, district.DISTRICT_ID
From division Inner Join
  district On district.DIVISION_ID = division.DIVISION_ID  ORDER BY district.DISTRICT_ID DESC  LIMIT 0,25";
						$result=$con->query($sql);
						if($result->num_rows>0)
						{
								echo "<table class='table table-striped' >";
									echo "<tr>
											<th>Sno</th>
											<th>District</th>
											<th>Division</th>
											<th>Delete</th>
										</tr>";
										$i=0;
										while($row=$result->fetch_assoc())
										{
											$i++;
											echo"<tr>";
												echo "<td>$i</td>";
												echo "<td>".$row["DISTRICT_NAME"]."</td>";
												echo "<td>".$row["DIVISION_NAME"]."</td>";
												echo "<td><a href='admin_del_district.php?id=".$row["DISTRICT_ID"]."' class='btn btn-danger btn-sm'><i class='fa fa-trash'></i></a></td>";
											echo"</tr>";
										}
								echo "</table>";
						}		
					?>
				</div>
			</div>
		
		
		</div>
	</div>
</div>
  
   <hr>
 
	 <?php include("admin_footer.php"); ?>
  
	</body>
</html>