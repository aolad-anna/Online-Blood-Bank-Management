<!DOCTYPE html>
<html lang="en">
<head>
<?php include("head.php");?>
</head>
<body>
    
   
<?php
include("top_nav.php");
?>
    <div class="container-fluid"  style='margin-top:70px;'>
        <div class="row">
            <div class="col-lg-12">
			 <h3 class=" text-danger"><b> Search Donor Avalibility</b></h3>
			 <hr>
            </div>    
        </div>

		  		<div class="row  centered-form ">
		    <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center" style="padding:5px;font-size:16px;font-weight:bold"><b> Search Donor Avalibility</b></h3>
                    </div>
                    <div class="panel-body">
					<form  name="frm" id="frm" >
						<div class="form-group">
							<label class="control-label text-danger">Search Type</label>
								<select name="STYPE"  id="STYPE" required class="form-control input-sm">
									<option value="POST_CODE">Post_Code</option>
								</select>
						</div>
						<div class="form-group">
							<label class="control-label text-danger">Required Blood Group</label>
								<select name="BLOOD" id="BLOOD" required  class="form-control input-sm">
							<option value="A+">A+</option>
							<option value="B+">B+</option>
							<option value="O+">O+</option>
							<option value="AB+">AB+</option>
							<option value="A-">A-</option>
							<option value="B-">B-</option>
							<option value="O-">O-</option>
							<option value="AB-">AB-</option>
								</select>
						</div>
						<div class="form-group">
							<label class="control-label text-danger">Search Text</label>
							<input type="text" name="str" id="str" required placeholder="Type Here" class="form-control input-sm">
						</div>
						
						 <div class="form-group">
							<button class="btn btn-success" name="submit" type="button" id="submit"> Search Donor</button>
						  </div>
						
                    </div>
                </div>
            </div>
			 <div class="col-xs-12 col-sm-12 col-md-6" id="feedback">
			 <p>
				Please fill the correct details and search your nearest donor.For more queries contact our admin.
			 </p>
			  </div>
			
			
			
            </div>
		  
           </div>

<hr>
 <?php include("footer.php"); ?>

 <script>
	$(document).on('click','#submit',function(){
		
		$.ajax({
					url:"search_don.php",
					method:"POST",
					data:$("#frm").serialize(),
					success:function(data)
					{
						$("#feedback").html(data);
						
					}
				});
		
	});
 </script>
	
</body>
</html>