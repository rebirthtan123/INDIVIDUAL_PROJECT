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
	if(isset($_GET['id'])){
		$qry = $conn->query("SELECT * FROM product_list where id=".$_GET['id'])->fetch_array();
		foreach($qry as $k => $val){
			$$k = $val;
		}
		
	
	}

?>

<div class="container-fluid">
	<div class="col-lg-12">
    <form action="" id="edit-product">
    <div class="card">
					<div class="card-header">
						    Product Form
				  	</div>
					<div class="card-body">
						
							<input type="hidden" name="id">
							<div class="form-group">
								<label class="control-label">Product Code</label>
								<input type="text" class="form-control" name="sku" value="<?php echo $sku ?>">
							</div>
					</div>
					<div class="card-body">
						
						<div class="form-group">
							<label class="control-label">Product Name</label>
							<input type="text" class="form-control" name="name" value="<?php echo $name ?>">
						</div>
						<div class="form-group">
							<label class="control-label">Description</label>
							<input type="text" class="form-control" name="description" value="<?php echo $description ?>">
							
						</div>
						<div class="form-group">
							<label class="control-label">Product Price (RM)</label>
							<input type="number" step="any" class="form-control text-right" name="price" value="<?php echo $price ?>">
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

	$('#edit-product').submit(function(e){
		e.preventDefault()
		start_load()

		$.ajax({
			url:'ajax.php?action=save_product',
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
						location.href = "index.php?page=product"
					},1500)
				}	
			}
		})
	})
    
</script>