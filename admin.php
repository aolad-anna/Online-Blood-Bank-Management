<!DOCTYPE html>
<?php
session_start();
include("config.php");
?>
<html lang="en">

<head>

	<?php include("head.php");?>

</head>

<body>

<?php include("top_nav.php"); ?>


    <div class="container" style="margin-top:70px;">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header text-danger"> Admin Login
                  
                </h1>
              
            </div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-4">
				<?php
				if(isset($_POST["submit"]))
					{
						if($_POST["user"]=="admin"&&$_POST["pass"]=="admin")
						{
							 $_SESSION['usertype'] ='admin';
							 $_SESSION['username']='admin';
							
							header("location:admin_inbox.php");
						}
						else
						{
							echo "<div class='alert alert-danger'><b>Error</b> User Name and Password Incorrect.</div>";
						}
					}
				?>
					<form role="form" action="admin.php" method="post">
			    	  	<div class="form-group">
							 <label for="user_name" class="text-danger">User Name</label>
			    		    <input class="form-control" name="user"  id="user" type="text" required>
			    		</div>
			    		<div class="form-group">
							<label for="pass" class="text-danger">Password</label>
			    			<input class="form-control" id="pass" name="pass" type="password" value="" required>
			    		</div>
						
						
			    		<button class="btn btn-success pull-right" name="submit" type="submit"><i class="fa fa-sign-in"></i> Log In</button>
			      	</form>
				</div>
				<div class="col-md-3"></div>
			</div>
        </div>
     

     <hr>
       <?php include"footer.php";?>
  
        </div>
      
  
</body>

</html>
