<?php 
			include "config.php";
			if(!empty($_POST["str"]))
			{
				$sql="SELECT * FROM blood_donor WHERE ({$_POST["STYPE"]} LIKE '%{$_POST["str"]}%'  AND BLOOD='{$_POST["BLOOD"]}' AND STATUS=1)";
				$result=$con->query($sql);
				if($result->num_rows>0)
				{
						$i=0;
					echo "<div class='table-responsive '><table class='table table-striped table-bordered'>
								<tr class='text-primary'>	
									<th>Sno</th>
									<th>Picture</th>
									<th>Blood Group</th>
									<th>Name</th>
									<th>Post_code</th>
									<th>District</th>
									<th>Division</th>
									<th>Contact No</th>
								</tr>
							";
						
					while($row=$result->fetch_assoc())
					{
						$sdate=$row["LAST_D_DATE"];
						$n=null;
						$date2=date_create($sdate);
						$cdate=date_create(date("Y-m-d"));
						$days=date_diff($date2,$cdate);
						$n=$days->format("%R%a");
						if($n>90)
						{
							$i++;
							echo"<tr>";
							echo"<td>$i</td>";
							echo"<td><img src='{$row["DONOR_PIC"]}' class='don_img' height='50px' width='50px'></td>";
							echo"<td>{$row["BLOOD"]}</td>";
							echo"<td>{$row["NAME"]}</td>";
							echo"<td>{$row["POST_CODE"]}</td>";
							echo"<td>{$row["DISTRICT"]}</td>";
							echo"<td>{$row["DIVISION"]}</td>";
							echo"<td>{$row["CONTACT_1"]}</td>";
							echo"</tr>";
						}
						
					}
					echo "</table></div>";
					
					if($i==0)
					{
						
					echo "<div class='alert alert-danger'> Our Donors already donated</div>";
					}
				}
				else
				{
					echo "<div class='alert alert-danger'> No Donors Found</div>";
				}
			}
			else
			{
				echo "<script>alert('Please Type Search Text..');</script>";
			}
			

?>
<script>
	$(document).ready(function(){
		$(".don_img").click(function(){
			var a=$(this).attr("src");
			$("#md_img").attr("src",a);
			$("#Mymodal").modal();
		});
		
	});
</script>

