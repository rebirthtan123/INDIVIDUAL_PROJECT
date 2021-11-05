<?php include('db_connect.php');?>

<div class="container-fluid">
	
	<div class="col-lg-12">
	<div class="row">
			<button class="col-md-2 float-right btn btn-primary btn-sm" id="new_supplier"><i class="fa fa-plus"></i> New Supplier</button>
		</div>
		<br>
	<div class="row">
			<div class="col-md-12">
				<div class="card">
				<div class="card-header">
						<h4><b>Supplier List</b></h4>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th class="text-center">ID</th>
									<th class="text-center">Supplier Info</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								$i = 1;
								$cats = $conn->query("SELECT * FROM supplier_list order by id asc");
								while($row=$cats->fetch_assoc()):
								?>
								<tr>
									<td class="text-center"><?php echo $i++ ?></td>
									<td class="">
										<p>Name : <b><?php echo $row['supplier_name'] ?></b></p>
										<p><small>Contact : <b><?php echo $row['contact'] ?></b></small></p>
										<p><small>Address : <b><?php echo $row['address'] ?></b></small></p>
									</td>
									<td class="text-center">
										<a class="btn btn-sm btn-primary" href="index.php?page=edit_supplier&id=<?php echo $row['id'] ?>">Edit</a>
										<a class="btn btn-sm btn-danger delete_supplier" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
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
	$('#new_supplier').click(function(){
		location.href = "index.php?page=manage_supplier"
	})
	$('.delete_supplier').click(function(){
		_conf("Are you sure to delete this supplier?","delete_supplier",[$(this).attr('data-id')])
	})
	function delete_supplier($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_supplier',
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