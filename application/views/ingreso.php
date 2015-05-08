<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Aplicacion RRHH</title>
	<link rel="stylesheet" href="<?php echo base_url().'bootstrap/bootstrap.cosmo.css';?>">

	<!-- Js -->
	<script src="<?php echo base_url().'js/jquery-1.11.1.min.js';?>"></script>
	<script src="<?php echo base_url().'js/bootstrap.js';?>"></script>
	<style type="text/css" media="screen">
		div.cabecera{
			height: 80px;
		}
	</style>
</head>
<body>
<div class="container cabecera"></div>
<div class="container">
	<div class="row-fluid">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<div class="wrapper">
			    <form class="form-signin" method="post" action="<?php echo base_url().index_page().'/ingreso/validacion'?>">       
			      <h2 class="form-signin-heading">Porfavor Identifiquese</h2>
			      <input type="text" class="form-control" name="usuario" placeholder="Usuario" required="" autofocus="" />
			      <input type="password" class="form-control" name="password" placeholder="Clave" required=""/>      

			      <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>   
			    </form>
			  </div>
		</div>
		<div class="col-md-4">
			

		</div>
	</div>

</div>
<div class="container">
	<div class="row-fluid">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			
			<?php  if($this->session->flashdata('error') ){
				echo '<p class="alert alert-danger">'.$this->session->flashdata('error').'</p>';
				}?>
				
		</div>
		<div class="col-md-4"></div>
	</div>
</div>



</body>
</html>