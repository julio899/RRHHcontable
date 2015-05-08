<div class="container">
	<div class="row">
	          <div class="col-lg-12">
	            <div class="page-header">
	              <h1>Estas en <?php echo $this->session->userdata('empresa_seleccionada')['razon_social'];?></h1>

	              <?php if($this->session->flashdata('ok')){echo "<p class=\"alert alert-success\"><strong>".$this->session->flashdata('ok')."</strong></p>";}?>

	            </div>
	          </div>
	 </div>
	 <div class="row">
	 	<div class="col-lg-3">
	 		<div class="list-group">
			  <a href="#" class="list-group-item active">
			    Opciones Cargadas
			  </a>
			  <a href="<?php echo base_url().index_page().'/administrador/registrar_trabajador'; ?>" class="list-group-item bg-azul">Registrar un Trabajador</a>
			  <a href="#" class="list-group-item bg-silver">Modificar Trabajador</a>
			  <a href="<?php echo base_url().index_page().'/administrador/selecione_trabajador'; ?>" class="list-group-item bg-naranja">Consultar TRABAJADOR</a>
			  <a href="<?php echo base_url().index_page().'/administrador/selecione_trabajador_anticipo'; ?>" class="list-group-item bg-verde">Cargar Anticipo</a>
			  </div>


			<div class="panel panel-success">
			  <div class="panel-heading">
			    <h3 class="panel-title">OPCION DE EMPRESA</h3>
			  </div>
			  <div class="panel-body">
		    
	   			  	<!--
	   			  	a href="<?php echo base_url().index_page().'/administrador/todos_anticipos'?>" class="form-control btn btn-warning">Total de Anticipos: <?php if(isset($monto_todos_anticipos)){ echo number_format($monto_todos_anticipos, 2, ',', '.');}?></a>
					--><a href="" id="consulta_mensual" class="form-control btn btn-primary">Consulta Mensual</a>
			    	<a class="form-control btn btn-info" href="<?php echo base_url().index_page().'/administrador/todos_anticipos'?>">Consultar TODOS</a>
			  </div>
			</div>
	 	</div>
	 	<div class="col-lg-9">
	 		<div>
	 			
	 			<!-- <div class="jumbotron"> --> 
	 				
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
		            <form method="POST" action="<?php echo base_url().index_page().'/administrador/procesar_registro_trabajador';?>">
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
								
								# PAGINA DE SELECCIONAR TRABAJADOR
								if($this->session->userdata('page')=='selecione_trabajador'){

									echo "<h1>Selecione un trabajador</h1>";
									?>
										<div class="dropdown">
										  <button class="btn btn-lg btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
										    Seleccione un TRABAJADOR
										    <span class="caret"></span>
										  </button>
										  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
										    <?php 
										  		for ($i=0; $i < count($trabajadores); $i++) { 
										  			echo '<li role="presentation"><a role="menuitem" tabindex="-1" href="'.base_url().index_page().'/administrador/detalla_trabajador/'.$trabajadores[$i]['IDT'].'">'.$trabajadores[$i]['nombreT'].' '.$trabajadores[$i]['apellidoT'].'</a></li>';
										  		}
										  ?> 	 
										  </ul>
										</div>
																			
									<?php
								} // <<< FIN DE LA PAGINA DE SELECCIONAR TRABAJADOR	<<


								# PAGINA detallado del trabajador
								if (isset($trabajador_detallado) ) {
									$trabajador=$trabajador_detallado['trabajador'];
									$anticipos=$trabajador_detallado['registros']['anticipos'];
									$acumulado=$trabajador_detallado['registros']['acumulado'];
									?>
										<div class="table-responsive">
											<table class="table table-striped">
											              <thead>
											                <tr>
											                  <th>Identificador</th>
											                  <th>BANCO</th>
											                  <th>CHEQUE</th>
											                  <th>VOUCHER</th>
											                  <th>MONTO</th>
											                  <th>FECHA</th>
											                  <th>ESTADO</th>
											                </tr>
											              </thead>
											              <tbody>
	              					<?php

																		# Detallo al trabajador
																		echo "<h2>Detalle del trabajador</h2>";
																		echo "<pre>NOMBRE: ".$trabajador['nombreT']." ".$trabajador['apellidoT']."<br>";
																		echo "CEDULA: ".$trabajador['cedulaT']."<br>";
																		echo "CARGO: ".$trabajador['cargoT']."   /  FECHA DE INGRESO: ".$trabajador['fechaingresoT']." <br>";
																		echo "DIRECCION: ".$trabajador['direccionT']."<br>";
																		//var_dump($trabajador);
																		echo '<a class="btn btn-danger derecha" href="#'.$trabajador['IDT'].'" id="btnLIQUIDAR" >LIQUIDAR TRABAJADOR</a>';
																		echo '<input type="hidden" id="id_trabajador" value="'.$trabajador['IDT'].'">';
																		echo '<input type="hidden" id="nombre_trabajador" value="'.$trabajador['nombreT'].' '.$trabajador['apellidoT'].'">';
																		echo '<input type="hidden" id="ci_trabajador" value="'.$trabajador['cedulaT'].'">';
																		echo "</pre>";


										              		for ($i=0; $i < count($anticipos); $i++) { 
										              			echo "<tr>
													                  <td>".$anticipos[$i]['IDanticipo']."</td>
													                  <td>".$anticipos[$i]['bancoA']."</td>
													                  <td>".$anticipos[$i]['CONCEPTO']."</td>
													                  <td>".$anticipos[$i]['nro_concep']."</td>
													                  <td>".number_format($anticipos[$i]['monto_A'],2, ',', '.')."</td>
													                  <td>".$anticipos[$i]['fechaA']."</td>";
													                  	if($anticipos[$i]['estadoAnticipo']=='CHEQUEADO'){
													                  		echo "<td><span class=\"label label-success\">".$anticipos[$i]['estadoAnticipo']."</span></td></tr>";
													                  	}
													                  	if($anticipos[$i]['estadoAnticipo']=='EMITIDO'){
													                  		echo "<td><span class=\"label label-info\">".$anticipos[$i]['estadoAnticipo']."</span></td></tr>";
													                  	}
													                
										              		}
										              ?>
										              </tbody>
										</table>
										<a href="#" class="btn btn-default"> ACUMULADO FINAL <span class="label label-success"> Bs. [ <?php echo number_format($acumulado,2, ',', '.');?> ] </span></a>
										<?php echo '<input type="hidden" id="montoLiquidacion" value="'.number_format($acumulado,2, ',', '.').'">'; ?>
									</div>								
																		<?php
								}
								# FIN de PAGINA detallado del trabajador


//si la pagina a cargar es seleccion de trabajador para cargar  NUEVO ANTICIPO
if(isset($trabajadores_anticipo)): ?>
	<h3>Trabajador que se le <span class="label label-success">cargara</span> el Anticipo</h3>
										<div class="dropdown">
										  <button class="btn btn-lg btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
										    Seleccione un TRABAJADOR
										    <span class="caret"></span>
										  </button>
										  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
										    <?php 
										  		for ($i=0; $i < count($trabajadores_anticipo); $i++) { 
										  			echo '<li role="presentation"><a role="menuitem" tabindex="-1" href="'.base_url().index_page().'/administrador/trabajador_seleccionado/'.$trabajadores_anticipo[$i]['IDT'].'">'.$trabajadores_anticipo[$i]['nombreT'].' '.$trabajadores_anticipo[$i]['apellidoT'].'</a></li>';
										  		}
										  ?> 	 
										  </ul>
										</div>
<?php
endif;


if (isset($trabajador_seleccionado)): ?>



	<div class="bs-callout bs-callout-warning">
					  	
						<div class="view">

							<div class="alert alert-dismissable alert-warning" contenteditable="true">
					      		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								<h4>Tenga precaucion!</h4>
								<strong>Observe y Verifique!</strong> al trabajador que se le estara cargando este anticipo.
							</div>

							<h2 contenteditable="true">Carga de Anticipo a, <?php echo $trabajador_seleccionado['trabajador']['nombreT']." ".$trabajador_seleccionado['trabajador']['apellidoT']?><br></h2>
							<p contenteditable="true"><?php 
							echo "Cedula: ".$trabajador_seleccionado['trabajador']['cedulaT']." - Cargo: ";
							echo $trabajador_seleccionado['trabajador']['cargoT']."<br>";
							echo "Fecha de Ingreso: ".$trabajador_seleccionado['trabajador']['fechaingresoT']."<br>";
							?></p>
							<p><a class="link" href="<?php echo base_url().index_page()."/administrador/detalla_trabajador/".$IDT;?>">Ver Iformacion Detallada o Historial »</a></p>
						</div>

	</div>			





					<div style="display: block;" class="box box-element ui-draggable">
					
						<div class="view">
								<form class="form-horizontal" method="POST" action="<?php echo base_url().index_page()."/administrador/procesar_anticipo_trabajador/";?>" role="form">
									  <div class="form-group">
									    <label for="monto" class="col-sm-2 control-label">Monto: </label>
									    <div class="col-sm-10">
									      	<input class="form-control" name="monto" id="monto" placeholder="1000" type="number" autofocus = "autofocus" required = "required" >
									     	<input type="hidden" name="IDT" value="<?php echo $IDT;?>">
									    </div>
									  </div>
									  
									  <div class="form-group">
									    <label for="banco" class="col-sm-2 control-label">Banco:</label>
									    <div class="col-sm-10">
									    	<select name="banco" id="banco" class="form-control">
									    		<option value="MERCANTIL">MERCANTIL</option>
									    		<option value="BANCARIBE">BANCARIBE</option>
									    		<option value="BOD">BOD</option>
									    		<option value="EXTERIOR">EXTERIOR</option>
									    		<option value="VENEZUELA">VENEZUELA</option>
									    		<option value="PLAZA">PLAZA</option>
									    		<option value="BANESCO">BANESCO</option>
									    	</select>
									      	<!-- <input class="form-control" name="banco" id="banco" placeholder="Banco XXXXXX" type="text" required = "required" > -->
									    </div>
									  </div>

									  <div class="form-group">
									    <label for="voucher" class="col-sm-2 control-label">Voucher: </label>
									    <div class="col-sm-10">
									      <input class="form-control" name="voucher" id="voucher" placeholder="Ejemplo 1540" type="number" required = "required" >
									    </div>
									  </div>

									  <div class="form-group">
									    <label for="cheque" class="col-sm-2 control-label">#Nro de CHEQUE: </label>
									    <div class="col-sm-10">
									      <input class="form-control" name="cheque" id="cheque" placeholder="01234567" type="text" required = "required" >
									    </div>
									  </div>

									  <div class="form-group">
									    <label for="descripcion" class="col-sm-2 control-label">Descripci&oacute;n: </label>
									    <div class="col-sm-10">
									      <textarea class="form-control" name="descripcion" id="descripcion" placeholder="Descripcion"></textarea>
									    </div>
									  </div>

									  <div class="form-group">
									    <label for="fecha" class="col-sm-2 control-label">FECHA: </label>
									    <div class="col-sm-10">
									      <input class="form-control" name="fecha" id="fecha" placeholder="AAAA-mm-dd" type="date" required="required" >
									    </div>
									  </div>

									  <div class="form-group">
									    <div class="col-sm-offset-2 col-sm-10">
									      <button type="submit" class="btn btn-primary">CARGAR</button>
									    </div>
									  </div>
								</form>
						</div>
					</div>

<?php
endif;


										

								//si la Pagina es todos_anticipos  muestro tabla
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
						$montodelmes=0;
					  if (isset($todos_anticipos) && !isset($hasta) ) {
						$fecha_hasta=$this->session->userdata('fecha_hasta');
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
					  }//fin del if
					  
					  ?>
					  </tbody>
					</table> 
					<?php
							if(isset($hasta)){
					echo "*** hasta el mes >>>";

								echo "<a href=\"#\" class=\"btn btn-warning\"> ANTERIOR <span class=\"label label-primary\"> [ ".number_format(($this->session->userdata('acumulado_hasta')-$montodelmes), 2, ',', '.')." ] </span></a>";
								echo '<a href="#" class="btn btn-default"> FINAL DE MOVIMIENTO <span class="label label-success"> [ '.number_format($this->session->userdata('acumulado_hasta'), 2, ',', '.').' ] </span></a>';
						
							}else{

								echo '<a href="#" class="btn btn-default"> FINAL <span class="label label-success"> [ '.number_format($monto_todos_anticipos, 2, ',', '.').' ] </span></a>';
						
							}
								//cierre de if de tabla consultar todos los anticipos
								endif;
					?>
	 			<!-- jumb </div> -->
	 		</div>
	 	</div>
	 </div>
</div>

<?php 
//var_dump($this->config->config['empresas']);
?>