
    				<div class="container">
						<div class="row">
						          <div class="col-lg-12">
						            <div class="page-header">
						              <h1>Estas en <?php echo strtoupper($this->session->userdata('empresa_seleccionada')['razon_social']);?></h1>

						              
						            </div>
						          </div>
						 </div>

						    				<div class="row-fluid">

						    					<div class="col-lg-3">
													 <?php $this->load->view('menu_opciones/opciones_administrador'); ?>
						    					</div>

						    					<div class="col-lg-9">
								    				<table class="table table-striped table-hover">
								    						 	<caption><span class="btn btn-default btn-lg btn-block"> Datos Contabilizados </span></caption>
															  	<thead>
																	    <tr>
																	      <th>NOMBRE TRABAJADOR</th>
																	      <th>TIPO</th>
																	      <th>DEBE</th>
																	      <th>HABER</th>
																	      <th>SALDO</th>
																	      <th>FECHA</th>
																	    </tr>
															  	</thead>

														  		<tbody>
														  		<?php #Datos de la tabla
																		$saldo=0;
														  			if(isset($datos)):
														    			foreach ($datos as $key => $value) {
																			if ($value['tipo']=='A') { echo "<tr>"; $saldo=$saldo+$value['monto'];}
																			if ($value['tipo']=='L'){
																				$numero=str_replace(".", "", $value['monto']);
																				$numero=str_replace(",", ".", $numero);
																				$saldo= $saldo-$numero;

																				echo "<tr class=\"danger\">";

																				$trabajador=$this->data->trabajador($value['data']['IDT']);
																			}

																			$originalDate = $value['fecha'];
																			$newDate = date("d-m-Y", strtotime($originalDate));
																									echo "<td>";
																									if($value['tipo']=="L"){echo $trabajador['nombreT']." ".$trabajador['apellidoT'];}
																									if($value['tipo']=="A"){ echo $value['data']['nombreT']." ".$value['data']['apellidoT'];}
																									echo "</td>
																									      <td>".$value['tipo']."</td>
																									      <td class=\"derecha borde-derecho\">";
																									      if($value['tipo']=="A"){echo number_format($value['monto'],2,",",".");}
																									      echo "</td>
																									      <td  class=\"derecha borde-izquierdo\">";
																									      	if($value['tipo']=="L"){echo $value['monto'];}
																									      echo "</td>
																									      <td>";
																									      
																									      echo number_format($saldo,2,",",".") ."</td>
																									      <td>".$newDate."</td>
																							</tr>";
																							
														    			}
														  			endif;
														  		 ?>
														  		</tbody>
													</table>
													<a href="#SALDO=<?php echo number_format($saldo,2,",","."); ?> " class="btn btn-default"> SALDO DE ANTICIPOS OTORGADOS --> <span class="label label-success"> [ <?php echo number_format($saldo,2,",","."); ?> ] </span></a>
												</div>

						    				</div>

					</div>