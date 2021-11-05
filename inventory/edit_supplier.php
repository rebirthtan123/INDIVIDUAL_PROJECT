<?php include('db_connect.php');
$mysqli = new mysqli('localhost', 'root', '', 'inventory');

if(isset($_GET['id'])){

    $query = sprintf("SELECT * FROM supplier_list where id=".$_GET['id']);
    $result = $mysqli->query($query);
    $edit = mysqli_fetch_assoc($result);

}
?>

<div class="container-fluid">
	
	<div class="col-lg-12">
		
			<!-- FORM Panel -->
			<form action="" id="edit-supplier" data-id="<?php echo $edit['id'] ?>" data-name="<?php echo $edit['supplier_name'] ?>" data-contact="<?php echo $edit['contact'] ?>" data-address="<?php echo $edit['address'] ?>">
				<div class="card">
					<div class="card-header">
						    Supplier Form
				  	</div>
					<div class="card-body">
							<input type="hidden" name="id">
							<div class="form-group">
								<label class="control-label"><b>Supplier Name: </b></label>
								<input type="text" class="form-control" name="name" value="<?php echo $edit['supplier_name'] ?>">
							</div>
							
					</div>
					<div class="card-body">
							<div class="form-group">
								<label class="control-label"><b>Contact No: </b></label>
								<input type="text" class="form-control" name="contact" value="<?php echo $edit['contact'] ?>">
							</div>
					</div>
					<div class="card-body">
							<div class="form-group">
								<label class="control-label"><b>Address: </b></label>
								<input type="text" class="form-control" name="address" value="<?php echo $edit['address'] ?>">
							</div>
					</div>
							
					<div class="card-footer">
						<div class="row">
							<div class="col-md-12">
								<button class="btn btn-primary btn-sm btn-block float-right .col-md-3"> Save</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!-- FORM Panel -->
		
	</div>	

</div>

<script>

	$('#edit-supplier').submit(function(e){
		e.preventDefault()
		start_load()

		$.ajax({
            url:'ajax.php?action=save_supplier',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully updated",'success')
					setTimeout(function(){
						location.href = "index.php?page=supplier"
					},1500)

				}
			}
		})
	})
	
</script>