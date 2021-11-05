<div class="container-fluid">
	<div class="col-lg-12">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<h4><b>Inventory</b></h4>
					</div>
					<div class="card-body">
						<table class="table table-bordered">
							<thead>
								<th class="text-center">ID</th>
								<th class="text-center">Product Name</th>
								<th class="text-center">Stock In</th>
								<th class="text-center">Stock Out</th>
								<th class="text-center">Stock Available</th>
							</thead>
							<tbody>
							<?php 
								include 'db_connect.php';
								$i = 1;
								$product = $conn->query("SELECT * FROM product_list r order by name asc");
								while($row=$product->fetch_assoc()):
								$inn = $conn->query("SELECT sum(qty) as inn FROM inventory where type = 1 and product_id = ".$row['id']);
								$inn = $inn && $inn->num_rows > 0 ? $inn->fetch_array()['inn'] : 0;
								$out = $conn->query("SELECT sum(qty) as `out` FROM inventory where type = 2 and product_id = ".$row['id']);
								$out = $out && $out->num_rows > 0 ? $out->fetch_array()['out'] : 0;
								$available = $inn - $out;
							?>
								<tr>
									<td class="text-center"><?php echo $i++ ?></td>
									<td class=""><?php echo $row['name'] ?></td>
									<td class="text-right"><?php echo $inn ?></td>
									<td class="text-right"><?php echo $out ?></td>
									<td class="text-right"><?php echo $available ?></td>
								</tr>
							<?php endwhile; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$('table').dataTable()
	
</script>