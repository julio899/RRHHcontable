
	 		<div class="list-group">
				  <a href="<?php echo base_url().'administrador/registrar_trabajador'; ?>" class="list-group-item bg-azul <?php if($this->session->userdata('page')=='registrar_trabajador'){ echo "active";}?>">Registrar un Trabajador</a>
				  <a href="#" class="list-group-item bg-silver">Modificar Trabajador</a>
				  <a href="<?php echo base_url().'administrador/selecione_trabajador'; ?>" class="list-group-item bg-naranja <?php if($this->session->userdata('page')=='selecione_trabajador'){ echo "active";}?>">Consultar TRABAJADOR</a>
				  <a href="<?php echo base_url().'administrador/selecione_trabajador_anticipo'; ?>" class="list-group-item bg-verde <?php if($this->session->userdata('page')=='cargar_anticipo'){ echo "active";}?>">Cargar Anticipo</a>
			 </div>



			<div class="panel panel-success">
			  
			  <div class="panel-heading">
			    <h3 class="panel-title">OPCION DE EMPRESA</h3>
			  </div>
			  
			  <div class="panel-body">
		    
	   			  	<!--
	   			  	a href="<?php echo base_url().'administrador/todos_anticipos'?>" class="form-control btn btn-warning">Total de Anticipos: <?php if(isset($monto_todos_anticipos)){ echo number_format($monto_todos_anticipos, 2, ',', '.');}?></a>
					--><a href="" id="consulta_mensual" class="form-control btn btn-primary">Consulta Mensual</a>
			    	<a class="form-control btn btn-info" href="<?php echo base_url().'administrador/todos_anticipos'?>">Consultar TODOS</a>
			  		<a class="form-control btn btn-warning" href="<?php echo base_url().'administrador/contabilizar_anticipos_liquidaciones'?>">CONTABILIZAR ANTICIPOS</a>
			  </div>
			  
			</div>