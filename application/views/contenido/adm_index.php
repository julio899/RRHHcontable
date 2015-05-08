<div class="container">
	<div class="row">
	          <div class="col-lg-12">
	            <div class="page-header">
	              <h1 id="type">Seleccione una Empresa.</h1>
	            </div>
	          </div>
	 </div>
</div>

<?php 
//var_dump($this->config->config['empresas']);
?>
<div class="container">
		<div class="col-md-6">
			
	<div class="row-fluid">
		<div class="list-group">
		  <a href="#" class="list-group-item active">
		    <h4 class="list-group-item-heading">Porfavor Seleccione una Comp&ntilde;ia par trabajar </h4>
		    <p class="list-group-item-text">Para iniciar necesitas seleccionar una Comp&ntilde;ia</p>
		  </a>
		
		<?php
				for ($i=0; $i < count($this->config->config['empresas']); $i++) { 
					?>

		  <a href="<?php echo base_url().index_page().'/usuario/selecionar_empresa/'.$this->config->config['empresas'][$i]['cod'];?>" class="list-group-item">
		    <h4 class="list-group-item-heading"><?php echo $this->config->config['empresas'][$i]['razon_social'];?></h4>
		    <p class="list-group-item-text">CODIGO:<?php echo $this->config->config['empresas'][$i]['cod'];?>     -   [ <?php echo $this->config->config['empresas'][$i]['RIF'];?> ]</p>
		  </a>
		
	<?php
				}//fin del for
		?>	
		</div>	


	</div>

		</div>
		<div class="col-md-6"></div>
</div>