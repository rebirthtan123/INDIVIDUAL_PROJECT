
<?php include('db_connect.php');?>
<div class="containe-fluid">

	<div class="row">
		<div class="col-lg-12">
			
		</div>
	</div>

	<div class="row mt-3 ml-3 mr-3">
			<div class="col-lg-12">
			<div class="card">
				<div class="card-body">
				<?php echo "<h3><b> Welcome, ".$_SESSION['login_name']." </h3></b>"  ?>					
				</div>

				<hr>
				<div class="alert alert-success col-md-4 ml-4">
					<p><b><large>Daily Total Sales</large></b></p>
				<hr>
					<p class="text-right"><b><large>
						<?php 
					
					$salesDaily = $conn->query("SELECT SUM(total_amount) as amount FROM sales_list where date(date_updated)= '".date('Y-m-d')."'");
					echo $salesDaily->num_rows > 0 ? number_format($salesDaily->fetch_array()['amount'],2) : "0.00";

					 ?>
					 </large></b></p>
				</div>

				<hr>
				<div class="alert alert-success col-md-4 ml-4">
					<p><b><large>Current Month Total Sales</large></b></p>
				<hr>
					<p class="text-right"><b><large>
						<?php 
					
					$salesMonth = $conn->query("SELECT MONTH(date_updated), SUM(total_amount) as amount FROM sales_list where MONTH(date_updated) = MONTH(CURRENT_DATE()) ");
					echo $salesMonth->num_rows > 0 ? number_format($salesMonth->fetch_array()['amount'],2) : "0.00";
					
					 ?>
					 </large></b></p>
				</div>
			</div>
			
		</div>
		</div>
	</div>

</div>