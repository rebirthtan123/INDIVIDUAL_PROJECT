<?php include('db_connect.php');
	$sku = mt_rand(1,99999999);
	$sku = sprintf("%'.08d\n", $sku);
	$i = 1;
	while($i == 1){
		$chk = $conn->query("SELECT * FROM product_list where sku ='$sku'")->num_rows;
		if($chk > 0){
			$sku = mt_rand(1,99999999);
			$sku = sprintf("%'.08d\n", $sku);
		}else{
			$i=0;
		}
	}
?>

<div class="container-fluid">
	<div class="col-lg-12">
		<div class="row">
			<button class="col-md-2 float-right btn btn-primary btn-sm" id="new_product"><i class="fa fa-plus"></i> New Product</button>
		</div>
		<br>
		<div class="row">		
			<div class="col-md-12">
				<div class="card">
				<div class="card-header">
						<h4><b>Product List</b></h4>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th class="text-center">ID</th>
									<th class="text-center">Product Info</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								$i = 1;
								$prod = $conn->query("SELECT * FROM product_list order by id asc");
								while($row=$prod->fetch_assoc()):	
								?>
								<tr>
									<td class="text-center"><?php echo $i++ ?></td>
									<td class="">
										<p>Product Code : <b><?php echo $row['sku'] ?></b></p>
										<p><small>Product Name : <b><?php echo $row['name'] ?></b></small></p>
										<p><small>Description : <b><?php echo $row['description'] ?></b></small></p>
										<p><small>Price (RM) : <b><?php echo number_format($row['price'],2) ?></b></small></p>
									</td>
									<td class="text-center">
										<a class="btn btn-sm btn-primary" href="index.php?page=edit_product&id=<?php echo $row['id'] ?>">Edit</a>
										<button class="btn btn-sm btn-danger delete_product" type="button" data-id="<?php echo $row['id'] ?>">Delete</button>
									</td>
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
<style>
	
	td{
		vertical-align: middle !important;
	}
	td p{
		margin:unset;
	}
</style>

<script>
	$('table').dataTable()
	$('#new_product').click(function(){
		location.href = "index.php?page=manage_product"
	})
	
	$('.delete_product').click(function(){
		_conf("Are you sure to delete this product?","delete_product",[$(this).attr('data-id')])
	})
	function delete_product($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_product',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>