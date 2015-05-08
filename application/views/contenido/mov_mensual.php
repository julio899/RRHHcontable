<?php
/*
	* Recibe los registros  hasta cierto mes 
	* Calculando cuanto se lleva hasta esa fecha y los movimientos que Hubieron
*/
?>
<div class="container">
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
		    <a href="" id="consulta_mensual" class="form-control btn btn-primary">Consulta Mensual</a>
			    	<a class="form-control btn btn-info" href="<?php echo base_url().index_page().'/administrador/todos_anticipos'?>">Consultar TODOS</a>
			  </div>
			</div>

		</div>
		<div class="col-lg-9">
			<!-- CONTNIDO CENTRAL-->
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
						$total_compa=0;
						$total_hasta=0;
					  if (isset($todos_anticipos)) {
						$fecha_hasta=$this->session->userdata('fecha_hasta');
						echo "<div class=\"alert alert-info\">FECHA DE CONSULTA: ".$fecha_hasta['m']." - ".$fecha_hasta['y']."</div>";
						//var_dump($todos_anticipos);
					  		for ($i=0; $i < count($todos_anticipos); $i++) { 
					  			if($todos_anticipos[$i]['TRABAJANDO']=='NO'){$classTrabaja=' class="danger" ';}else{$classTrabaja='';}
					  			$fecha_compara=explode('-', $todos_anticipos[$i]['fechaA']);
					  			
					  			if($fecha_hasta['y']===$fecha_compara[0] && $fecha_hasta['m']==$fecha_compara[1]){
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
					  			}//fin del if 
					  			
					  			#calculo del saldo total de la compañia
					  			/*if($todos_anticipos[$i]['TRABAJANDO']!='NO'){
					  				$total_compa+=$todos_anticipos[$i]['monto_A'];
					  				//echo "* $total_compa <br>";
					  			}*/
					  			#calculo hasta ese mes
					  			if ($todos_anticipos[$i]['TRABAJANDO']!='NO'&&$fecha_compara[0]<=$fecha_hasta['y'] && $fecha_hasta['m']<=$fecha_compara[1]) {
					  				$total_hasta+=$todos_anticipos[$i]['monto_A'];
					  			}
					  		

					  		}//fin del for

					  }//fin del if isset($todos_anticipos)
					  
					  ?>
					  </tbody>
					</table> 
					<?php
					echo "Movimientos del MES: [ ".number_format($montodelmes, 2, ',', '.')." ]<br>";
					echo "Hasta Este MES: [ ".number_format($total_hasta, 2, ',', '.')." ]   (TRABAJADORES ACTIVOS HASTA EL MES Y AÑO CONSULTADO ACUMULAN)<br>";
					
					for($p=0;$p<count($data);$p++){
						if($data[$p]['TRABAJANDO']!='NO'){$total_compa+=$data[$p]['monto_A'];}
					}
					echo "TOTAL GENERAL PARA ESTA COMPAÑIA: [ ".number_format($total_compa, 2, ',', '.')." ]";
					//echo "ACUMULADO TOTAL DE LA COMPAÑIA: [ ".number_format($total_compa, 2, ',', '.')." ]";
						//echo "<a href=\"#\" class=\"btn btn-warning\"> ANTERIOR <span class=\"label label-primary\"> [ ".number_format(($this->session->userdata('acumulado_hasta')-$montodelmes), 2, ',', '.')." ] </span></a>";
						//echo '<a href="#" class="btn btn-default"> FINAL DE MOVIMIENTO <span class="label label-success"> [ '.number_format($this->session->userdata('acumulado_hasta'), 2, ',', '.').' ] </span></a>';
						
					?>
			<!-- FIN DE CONTNIDO CENTRAL-->
		</div>
	</div>	
</div>
	 				