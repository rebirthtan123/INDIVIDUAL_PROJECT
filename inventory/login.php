<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Groceries Sales and Inventory System</title>
 	

<?php include('./header.php'); ?>
<?php include('./db_connect.php'); ?>
<?php 
session_start();
if(isset($_SESSION['login_id']))
header("location:index.php?page=home");
?>

</head>
<style>
	
	#login-right{
		position: absolute;
		right:0;
		width:40%;
		height: calc(100%);
		background:grey;
		display: flex;
		align-items: center;
	}
	#login-left{
		position: absolute;
		left:200px;
		width:40%;
		height: calc(100%);
		background:white;
		display: flex;
		align-items: center;
	}
	
	#login-left .card{
		margin: auto
	}
	.logo {
    margin: auto;
    font-size: 8rem;
    background: lightgreen;
    padding: .5em 0.8em;
    border-radius: 50% 50%;
    color: #000000b3;
}
</style>

<body>


<div id="login-right">
  			<div class="logo">
  				<span class="fa fa-id-badge"></span>
  			</div>
  		</div>
  		<div id="login-left">
  			<div class="card col-md-8">
  				<div class="card-body">
  					<form id="login-form" >
  						<div class="form-group">
  							<label for="username" class="control-label">Username</label>
  							<input type="text" id="username" name="username" class="form-control">
  						</div>
  						<div class="form-group">
  							<label for="password" class="control-label">Password</label>
  							<input type="password" id="password" name="password" class="form-control">
  						</div>
  						<center><button class="btn-sm btn-block btn-wave col-md-4 btn-primary">Login</button></center>
  					</form>
  				</div>
  			</div>
  		</div>

</body>
<script>
	$('#login-form').submit(function(e){
		e.preventDefault()
		$('#login-form button[type="button"]').attr('disabled',true).html('Logging in...');
		if($(this).find('.alert-danger').length > 0 )
			$(this).find('.alert-danger').remove();
		$.ajax({
			url:'ajax.php?action=login',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
			$('#login-form button[type="button"]').removeAttr('disabled').html('Login');

			},
			success:function(resp){
				if(resp == 1){
					location.href ='index.php?page=home';
				}else{
					$('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect or empty.</div>')
					$('#login-form button[type="button"]').removeAttr('disabled').html('Login');
				}
			}
		})
	})
</script>	
</html>