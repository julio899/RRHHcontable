<div class="modal" id="consultar_anticipo_por_mes">
  <div class="modal-dialog">
    <div class="modal-content">
	
	<form action="<?php 
  
if($this->session->userdata('tipo')=='A'){echo base_url().index_page().'/administrador/acumulado_mensual'; }
if($this->session->userdata('tipo')=='C'){echo base_url().index_page().'/consultor/acumulado_mensual'; }
  ?>" method="post" class="form-horizontal">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Consultar Anticipos por Mes</h4>
      </div>
      <div class="modal-body">
						
  			<fieldset>
    			<legend>INDIQUE EL MES Y A&Ntilde;O</legend>
			    <div class="form-group">
			      <label for="mes" class="col-lg-6 control-label">Mes</label>
			      <div class="col-lg-6">
			        <!-- <input type="text" class="form-control" id="mes" placeholder="MM">-->
			        <select name="mes" class="form-control" id="mes" required>
                        <option value="1">01 - Enero </option>
                        <option value="2">02 - Febrero </option>
                        <option value="3">03 - Marzo </option>
                        <option value="4">04 - Abril </option>
                        <option value="5">05 - Mayo </option>
                        <option value="6">06 - Junio </option>
                        <option value="7">07 - Julio </option>
                        <option value="8">08 - Agosto </option>
                        <option value="9">09 - Septiembre </option>
                        <option value="10">10 - Octubre </option>
                        <option value="11">11 - Noviembre </option>
                        <option value="12">12 - Diciembre </option>
                     </select>
			      </div>


			      <label for="year" class="col-lg-6 control-label">A&ntilde;o</label>
			      <div class="col-lg-6">
			        <input type="number" name="year" class="form-control" id="year" placeholder="AAAA" min="1970" max="2020" required>
			      </div>

			    </div>
			</fieldset>

      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        <button type="submit" class="btn btn-primary">Confirmar</button>
      </div>
	</form>
    </div>
  </div>
</div>
 <!--FIN de MODAL-->



<!-- ###################### -->
<!-- MODAL PARA LIQUIDACION -->
  <div class="modal" id="liquidacion_trabajador">
    <div class="modal-dialog">
      <div class="modal-content">

        <form action="<?php echo base_url().index_page();?>/administrador/proceso_liquidacion" method="post" id="form_liquidacion">
                     <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                      <h4 class="modal-title">Confirmacion de Liquidaci&oacute;n</h4>
                    </div> 
                    <div class="modal-body">
                        <input type="text" id="txtNombreT" disabled="disabled" class="form-control">
                        <input type="text" id="txtCiT" disabled="disabled" class="form-control">
                        <input type="text" id="txtMontoLiquidacion" disabled="disabled" class="form-control">
                        <label for="fechaL">Cargue la fecha en que el trabajador fue liquidado</label>
                        <input type="date" name="fechaL" class="form-control" id="fechaL" required>
                        <input type="hidden" name="monto" value="" id="montoInput">
                        <input type="submit" class="btn btn-danger" value="CONFIRMAR LIQUIDACI&Oacute;N">
                    </div>
        </form>

      </div>
    </div>
  </div>
<!-- FIN MODAL PARA LIQUIDACION -->
<!-- ########################## -->


<div class="container">
	<div class="row-fluid">
		<div class="col-md-8"></div>
		<div class="col-md-4"><pre> Realizado por Julio Vinachi</pre></div>
	</div>
</div>

<script>
//asocio los otones con los respcivos modales
$('#consulta_mensual').click(function(e){
  e.preventDefault();
  $('#consultar_anticipo_por_mes').modal();
});


$('#btnLIQUIDAR').click(function(e){
  e.preventDefault();
  var idTrabajador=$('#id_trabajador').val();
  var nombreTrabajador=$('#nombre_trabajador').val();
  var ciTrabajador=$('#ci_trabajador').val();
  var montoLiquidacion=$('#montoLiquidacion').val();

  //seteo los valores en los campos
  $('#txtNombreT').val("Nombre: "+nombreTrabajador);
  $('#txtCiT').val("CI: "+ciTrabajador);
  $('#txtMontoLiquidacion').val("LIQUIDACION: "+montoLiquidacion);

  var url=$("#form_liquidacion").attr("action");
  url=url+"/"+idTrabajador;
  $("#form_liquidacion").attr("action",url);
  $("#montoInput").attr("value",montoLiquidacion);

  //Lanzo modal de Liquidacion
  $('#liquidacion_trabajador').modal();

  //alert(idTrabajador+"\n"+"Nombre: "+nombreTrabajador+"\n"+"CI: "+ciTrabajador);
});

</script>
</html>