<footer>
  <div class=" container-fluid">
    <div class="row">
      <div class="col-sm-12" >
		<p align="center"><b>Copyright &copy; Anna & Sajid</b></p>
      </div>
    </div>
  </div>
</footer>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
	$(function() {

	$(".DATES").datepicker({ 

dateFormat: "yy-mm-dd",
changeMonth: true,
changeYear: true,
yearRange: '1900:' + new Date().getFullYear()
 }).val();
	});
</script>
