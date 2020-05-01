<?php include"config.php";?>
<!DOCTYPE html>
<html lang="en">
<?php include"head.php";?>
<body>

<?php
	 include"top_nav.php";
?>

    <div class="container" style="margin-top:70px;">

			<div class="row">
				<div class="col-md-6">
				<?php
					if(isset($_POST["submit"]))
					{
					 $sql="INSERT INTO messages (NAME, CONTACT, EMAIL, MESSAGE, STATUS,LOGS) VALUES ('{$_POST["name"]}', '{$_POST["phone"]}', '{$_POST["email"]}', '{$_POST["message"]}', 1,NOW());";
						if($con->query($sql))
				{
					echo '
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Success!</strong> Your message has been Successfully sent.
					</div>
					
					
					';
				}
					}
				?>
		
				<h3 class='text-danger'>Send us a Message</h3>
            </br>
            </br>
            </br>
                <form method="post" action="contact.php" role="form" >
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Full Name:</label>
                            <input type="text" class="form-control" name="name" required>
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Phone Number:</label>
                            <input type="tel" class="form-control" name="phone" required>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Email Address:</label>
                            <input type="email" class="form-control" name="email"  >
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Message:</label>
                            <textarea rows="5" cols="100" class="form-control" name="message" required maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-success" name="submit"> Send Message</button>
                </form>
				
			</div>
			
            <div class="col-md-4">
                <h3 class='text-danger'>Contact Details</h3>
                <p>
                    AIUB Blood Bank<br>
					Kuratoli,Kuril<br>
					Dhaka North<br>
                </p>
                <p><i class="fa fa-phone"></i> 
                    <abbr title="Phone">Mobile:</abbr>: 01715606162</p>
                <p><i class="fa fa-envelope-o"></i> 
                    <abbr title="Email">Email:</abbr>: <a href="#" >contact@aiub.edu</a>
                </p>
                <p><i class="fa fa-clock-o"></i> 
                    <abbr title="Hours">Hours:</abbr>: 24*7</p>
				<p><i class="fa fa-globe"></i> 
                    <abbr title="Website">Website:</abbr>: <a href="index.php">www.aiub.edu</a></p>
                    
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2232.0416053177087!2d90.42794516091135!3d23.822297358613998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc47f7c3e8e2263f2!2sAmerican+International+University-Bangladesh!5e1!3m2!1sen!2sbd!4v1563998003879!5m2!1sen!2sbd" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>


        <hr>
		<?php include"footer.php"; ?>

    </div>

    <script src="js/jquery.js"></script>

    <script src="js/bootstrap.min.js"></script>


</body>

</html>
