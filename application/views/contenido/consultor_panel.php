<div class="container">
	<div class="row">
	          <div class="col-lg-12">
	            <div class="page-header">
	              <h1>Estas en <?php echo $this->session->userdata('empresa_seleccionada')['razon_social'];?></h1>
	            </div>
	          </div>
	 </div>
	 <div class="row">
	 	<div class="col-lg-3">
	 		
			<div class="panel panel-success">
			  <div class="panel-heading">
			    <h3 class="panel-title">OPCION DE EMPRESA</h3>
			  </div>
			  <div class="panel-body">
		    
	   			  	<a href="<?php echo base_url().index_page().'/consultor/todos_anticipos'?>" class="form-control btn btn-warning">Total de Anticipos: <?php if(isset($monto_todos_anticipos)){ echo number_format($monto_todos_anticipos, 2, ',', '.');}?></a>
					<a href="" id="consulta_mensual" class="form-control btn btn-primary">Consulta Mensual</a>
			    	<a class="form-control btn btn-info" href="<?php echo base_url().index_page().'/consultor/todos_anticipos'?>">Consultar TODOS</a>
			  </div>
			</div>
	 	</div>
	 	<div class="col-lg-9">
	 		<div>
	 			
	 			<div class="jumbotron">
	 				
					<?php 
								if ($this->session->userdata('page')=='registrar_trabajador'):
					?>

	
            <h4>Registro de trabajador en : <?php echo strtoupper($this->session->userdata('empresa_seleccionada')['razon_social']);?></h4>
            <?php 
            		if($this->session->flashdata('ok')){
            			echo '<p class="alert alert-success">'.$this->session->flashdata('ok').'</p>';
            		}
            		if($this->session->flashdata('error')){
            			echo '<p class="alert alert-danger">'.$this->session->flashdata('erro').'</p>';
            		}
            ?>
            <div class="panel panel-default">
		            <form method="POST" action="<?php echo base_url().index_page().'/consultor/procesar_registro_trabajador';?>">
		                <div class="panel-body form-horizontal payment-form">
		                    
		                    <div class="form-group">
		                        <label for="nombre" class="col-sm-3 control-label">Nombre</label>
		                        <div class="col-sm-9">
		                            <input type="text" class="form-control" id="nombre" name="nombre" required>
		                        </div>
		                    </div>

		                    <div class="form-group">
		                        <label for="apellido" class="col-sm-3 control-label">Apellido</label>
		                        <div class="col-sm-9">
		                            <input type="text" class="form-control" id="apellido" name="apellido" required>
		                        </div>
		                    </div>

		                    <div class="form-group">
		                        <label for="cedula" class="col-sm-3 control-label">Cedula</label>
		                        <div class="col-sm-9">
		                            <input type="text" value="V-" class="form-control" id="cedula" name="cedula" required>
		                        </div>
		                    </div> 
		                    <div class="form-group">
		                        <label for="estado" class="col-sm-3 control-label">Estado Civil</label>
		                        <div class="col-sm-9">
		                            <select class="form-control" id="estado" name="estado">
		                                <option value="S">SOLTERO</option>
		                                <option value="C">CASADO</option>
		                            </select>
		                        </div>
		                    </div> 


		                    <div class="form-group">
		                        <label for="telefono" class="col-sm-3 control-label">TELEFONO</label>
		                        <div class="col-sm-9">
		                            <input type="text" class="form-control" id="telefono" name="telefono">
		                        </div>
		                    </div>
		                    <div class="form-group">
		                        <label for="fecha" class="col-sm-3 control-label">Fecha</label>
		                        <div class="col-sm-9">
		                            <input type="date" class="form-control" id="fecha" name="fecha" required>
		                        </div>
		                    </div> 
		                    <div class="form-group">
		                        <label for="cargo" class="col-sm-3 control-label">CARGO</label>
		                        <div class="col-sm-9">
		                            <input type="text" class="form-control" id="cargo" name="cargo" required>
		                        </div>
		                    </div> 
		                    <div class="form-group">
		                        <label for="direccion" class="col-sm-3 control-label">Direcci&oacute;n</label>
		                        <div class="col-sm-9">
		                        	<textarea name="direccion" class="form-control" id="direccion" required></textarea>
		                        </div>
		                    </div>   
		                    <div class="form-group">
		                        <div class="col-sm-12 text-right">
		                            <button type="submit" class="btn btn-default preview-add-button">
		                                <span class="glyphicon glyphicon-floppy-saved"></span> Registrar
		                            </button>
		                        </div>
		                    </div>
		                </div>
		            </form>
            </div>     
					<?php  		//cierre de if registrar_trabajador
								endif;
				
								//si la Pagin es todos_anticipos  muestro tabla
								if ($this->session->userdata('page')=='todos_anticipos' && isset($todos_anticipos)):
					?>
						<pre>Historico de Todos los Anticipos realizados en <?php echo strtoupper($this->session->userdata('empresa_seleccionada')['razon_social']);?></pre>
	 				<table class="table table-striped table-hover ">
					  <thead>
					    <tr>
					      <th>ID</th>
					      <th>BANCO</th>
					      <th>MONTO</th>
					      <th>CONCEPTO</th>
					      <th>FECHA</th>
					      <th>TRABAJADOR</th>
					    </tr>
					  </thead>


					  <tbody>
					  <?php 
					  if (isset($todos_anticipos) ) {
						$fecha_hasta=$this->session->userdata('fecha_hasta');
						$montodelmes=0;
					  		for ($i=0; $i < count($todos_anticipos); $i++) { 
					  			if($todos_anticipos[$i]['TRABAJANDO']=='NO'){$classTrabaja=' class="danger" ';}else{$classTrabaja='';}
					  			$fecha_compara=explode('-', $todos_anticipos[$i]['fechaA']);
					  			if(isset($hasta)&&$fecha_hasta['y']==$fecha_compara[0]&&$fecha_hasta['m']==$fecha_compara[1]){
							  			echo "	<tr $classTrabaja>
											      <td>".$todos_anticipos[$i]['IDanticipo']."</td>
											      <td>".$todos_anticipos[$i]['bancoA']."</td>
											      <td class=\"derecha	\">".number_format($todos_anticipos[$i]['monto_A'], 2, ',', '.')."</td>
											      <td>".$todos_anticipos[$i]['CONCEPTO']."</td>
											      <td>".$todos_anticipos[$i]['fechaA']."</th>
											      <td>".$todos_anticipos[$i]['nombreT']." ".$todos_anticipos[$i]['apellidoT']."</td>
											    </tr>
											    ";//fin del echo	
										$montodelmes+=$todos_anticipos[$i]['monto_A'];
					  			}
					  			if(!isset($hasta)){
					  					echo "	<tr $classTrabaja>
											      <td>*".$todos_anticipos[$i]['IDanticipo']."</td>
											      <td>".$todos_anticipos[$i]['bancoA']."</td>
											      <td class=\"derecha	\">".number_format($todos_anticipos[$i]['monto_A'], 2, ',', '.')."</td>
											      <td>".$todos_anticipos[$i]['CONCEPTO']."</td>
											      <td>".$todos_anticipos[$i]['fechaA']."</th>
											      <td>".$todos_anticipos[$i]['nombreT']." ".$todos_anticipos[$i]['apellidoT']."</td>
											    </tr>
											    ";//fin del echo
					  			}
					  		}
					  }//fin del if
					  
					  ?>
					  </tbody>
					</table> 
					<?php
							if(isset($hasta)){
								echo "<a href=\"#\" class=\"btn btn-warning\"> ANTERIOR <span class=\"label label-primary\"> [ ".number_format(($this->session->userdata('acumulado_hasta')-$montodelmes), 2, ',', '.')." ] </span></a>";
								echo '<a href="#" class="btn btn-default"> FINAL DE MOVIMIENTO <span class="label label-success"> [ '.number_format($this->session->userdata('acumulado_hasta'), 2, ',', '.').' ] </span></a>';
						
							}else{

								echo '<a href="#" class="btn btn-default"> FINAL <span class="label label-success"> [ '.number_format($monto_todos_anticipos, 2, ',', '.').' ] </span></a>';
						
							}
								//cierre de if de tabla consultar todos los anticipos
								endif;
					?>
	 			</div>
	 		</div>
	 	</div>
	 </div>
</div>

<?php 
//var_dump($this->config->config['empresas']);
?>