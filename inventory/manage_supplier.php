<?php 
include('db_connect.php');
?>

<div class="container-fluid">
	
	<div class="col-lg-12">
				<form action="" id="manage-supplier">
				<div class="card">
					<div class="card-header">
						    Supplier Form
				  	</div>
					<div class="card-body">
							<input type="hidden" name="id">
							<div class="form-group">
								<label class="control-label"><b>Supplier Name: </b></label>
								<input type="text" class="form-control" name="name">
							</div>
							
					</div>
					<div class="card-body">
							<div class="form-group">
								<label class="control-label"><b>Contact No: </b></label>
								<input type="text" class="form-control" name="contact">
							</div>
					</div>
					<div class="card-body">
							<div class="form-group">
								<label class="control-label"><b>Address: </b></label>
								<textarea class="form-control" cols="30" rows="3" name="address"></textarea>
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
	</div>	

</div>

<script>

	$('#manage-supplier').submit(function(e){
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
					alert_toast("Data successfully added",'success')
					setTimeout(function(){
						location.href = "index.php?page=supplier"
					},1500)

				}
			}
		})
	})
	
</script>