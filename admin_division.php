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
<div class="container"  style='margin-top:70px;'>
	<div class="row">
		<div class="col-sm-3">
			<?php include("admin_side_nav.php");?>
		</div>
		<div class="col-sm-9" >
			<h3 class='text-danger'> Add Division </h3><hr>    
			<div class="row">
				<div class="col-md-6">
				<?php 
				if(isset($_POST["division_submit"]))
				{
					$sql="INSERT INTO division (DIVISION_NAME,COUNTRY_ID) VALUES ('".$_POST["divisionname"]."',".$_POST["COUNTRY"].")";
					$con->query($sql);
					
				}
				
				?>
				
					<p id='out' class='text-success'></p>
					<form role="form" action="admin_division.php" method="post">
					
						
						  <div class="form-group">
								<label class="control-label text-danger" for="COUNTRY">Country</label>
                                <select name="COUNTRY" id="COUNTRY" required class="form-control">
								<option value="">Select Country</option>
								<?php
									$sql="SELECT COUNTRY_ID,COUNTRY_NAME FROM country ORDER BY COUNTRY_NAME ASC";
									$result=$con->query($sql);
									if($result->num_rows>0)
									{
										while($row=$result->fetch_assoc())
										{
											echo "<option value='{$row['COUNTRY_ID']}'>{$row['COUNTRY_NAME']}	</option>";
										}
									}
								?>
								</select>
                          </div>
						<div class="form-group text-danger">
							<label for="division">Division Name</label>
							<input id="division" required type="text" class="form-control" name="divisionname">
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-success" name='division_submit' value="Add Division">
						</div>
						
					</form>
				</div>
				<div class="col-md-6">
					<?php 
						$sql="Select country.COUNTRY_NAME, division.DIVISION_NAME,division.DIVISION_ID
From division Inner Join
  country On division.COUNTRY_ID = country.COUNTRY_ID ORDER BY DIVISION_ID desc LIMIT 0,10 ";
						$result=$con->query($sql);
						if($result->num_rows>0)
						{
								echo "<table class='table table-striped' >";
									echo "<tr>
											<th>Sno</th>
											<th>Country Name</th>
											<th>Division Name</th>
											<th>Delete</th>
										</tr>";
										$i=0;
										while($row=$result->fetch_assoc())
										{
											$i++;
											echo"<tr>";
												echo "<td>$i</td>";
												echo "<td>".$row["COUNTRY_NAME"]."</td>";
												echo "<td>".$row["DIVISION_NAME"]."</td>";
												echo "<td><a href='admin_del_division.php?id=".$row["DIVISION_ID"]."' class='btn btn-danger btn-sm'><i class='fa fa-trash'></i></a></td>";
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