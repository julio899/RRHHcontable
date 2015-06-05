<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Data extends CI_Model {
	var $sql="";
	var $query="";
	var $data="";
	var $acu=0;
	var $obj=null;
	 function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

    function validacion($u="",$p=""){
    	$this->sql="SELECT * FROM `usuarios` WHERE `usuarioRH` LIKE '$u' AND `claveRH` LIKE '$p'";
    	$this->query=$this->db->query($this->sql);
    	
    	if($this->query->num_rows()>0){

	    	foreach ($this->query->result() as $row)
					{
					   $this->data=array(
					   	'usuario'=>$row->usuarioRH,
					   	'tipo'=>$row->tipo,
					   	'login'=>TRUE,
					   	'ip'=>$this->session->userdata('ip_address')
					   	);
					   
					}
					$this->session->set_userdata($this->data);
		
    	}
			redirect('/usuario', 'refresh');

    }

    function seleccion_bd(){
    	$this->obj=$this->session->userdata('empresa_seleccionada');
		$this->load->database($this->obj['bd'],TRUE);
	}//FIN de seleccion_bd

    function todas_liquidaciones(){
		$this->sql="SELECT * FROM `liquidaciones` ORDER BY `fecha`  ASC";
		$this->seleccion_bd();
		$this->query=$this->db->query($this->sql);
		$this->data=null;
			foreach ($this->query->result() as $row)
					{
						$this->data[]=array(
							'id' => $row->id,
							'fecha' => $row->fecha,
							'monto' => $row->monto,
							'IDT' => $row->IDT
							);
					}
			return $this->data;
    }//Fin de todas_liquidaciones

    function todos_anticipos(){

    	$this->sql="SELECT `IDanticipo` , `bancoA` , `monto_A` ,`CONCEPTO`,`nro_concep`, `fechaA`, `descripcion` , `estadoAnticipo` , `nombreT` , `apellidoT` , `cedulaT`,`TRABAJANDO` FROM `anticipo_prestaciones` , `trabajadores` WHERE `anticipo_prestaciones`.`IDT` = `trabajadores`.`IDT`  ORDER BY `fechaA`  ASC";
		//$this->config->load($this->session->userdata('empresa_seleccionada')['bd'], TRUE);
		$this->seleccion_bd();
		$this->query=$this->db->query($this->sql);
		$this->data=null;
			foreach ($this->query->result() as $row)
					{
						$this->data[]=array(
							'IDanticipo'	=>$row->IDanticipo,
							'bancoA'		=>$row->bancoA,
							'monto_A'		=>$row->monto_A,
							'CONCEPTO'		=>$row->CONCEPTO,
							'nro_concep'	=>$row->nro_concep,
							'fechaA'		=>$row->fechaA,
							'descripcion'	=>$row->descripcion,
							'estadoAnticipo'=>$row->estadoAnticipo,
							'nombreT'		=>$row->nombreT,
							'apellidoT'		=>$row->apellidoT,
							'cedulaT'		=>$row->cedulaT,
							'TRABAJANDO'	=>$row->TRABAJANDO
					   	);
					}

		return $this->data;
    }


function todos_anticipos_hasta_year_mes_NO_TRABAJAN_YA($y="",$m=""){    	
		$this->sql="SELECT `IDanticipo` , `bancoA` , `monto_A` ,`CONCEPTO`,`nro_concep`, `fechaA`, `descripcion` , `estadoAnticipo` , `nombreT` , `apellidoT` , `cedulaT`,`TRABAJANDO` FROM `anticipo_prestaciones` , `trabajadores` WHERE `anticipo_prestaciones`.`IDT` = `trabajadores`.`IDT` AND `TRABAJANDO` LIKE 'NO' AND `fechaA` <= '$y-$m-31' ORDER BY `fechaA` ASC";
		$this->seleccion_bd();
		$this->query=$this->db->query($this->sql);
		$this->data=null;
		$this->acu=0;
			foreach ($this->query->result() as $row)
					{
						$this->data[]=array(
							'IDanticipo'	=>$row->IDanticipo,
							'bancoA'		=>$row->bancoA,
							'monto_A'		=>$row->monto_A,
							'CONCEPTO'		=>$row->CONCEPTO,
							'nro_concep'	=>$row->nro_concep,
							'fechaA'		=>$row->fechaA,
							'descripcion'	=>$row->descripcion,
							'estadoAnticipo'=>$row->estadoAnticipo,
							'nombreT'		=>$row->nombreT,
							'apellidoT'		=>$row->apellidoT,
							'cedulaT'		=>$row->cedulaT,
							'TRABAJANDO'	=>$row->TRABAJANDO
					   	);
					   	$this->acu+=$row->monto_A;
					}

					$this->session->set_userdata('acumulado_hasta',$this->acu);
					$this->session->set_userdata('fecha_hasta',array('y'=>$y,'m'=>$m) );
		return $this->data;

}//fin de  todos_anticipos_hasta_year_mes_NO_TRABAJAN_YA
    function todos_anticipos_hasta_year_mes($y="",$m=""){
    	//$this->sql="SELECT `IDanticipo` , `bancoA` , `monto_A` ,`CONCEPTO`,`nro_concep`, `fechaA`, `descripcion` , `estadoAnticipo` , `nombreT` , `apellidoT` , `cedulaT`,`TRABAJANDO` FROM `anticipo_prestaciones` , `trabajadores` WHERE `anticipo_prestaciones`.`IDT` = `trabajadores`.`IDT` AND `TRABAJANDO` NOT LIKE 'NO' AND `fechaA` <= '$y-$m-31' ORDER BY `fechaA` ASC";
		$this->sql="SELECT `IDanticipo` , `bancoA` , `monto_A` ,`CONCEPTO`,`nro_concep`, `fechaA`, `descripcion` , `estadoAnticipo` , `nombreT` , `apellidoT` , `cedulaT`,`TRABAJANDO` FROM `anticipo_prestaciones` , `trabajadores` WHERE `anticipo_prestaciones`.`IDT` = `trabajadores`.`IDT` AND `fechaA` <= '$y-$m-31' ORDER BY `fechaA` ASC";
		$this->seleccion_bd();
		$this->query=$this->db->query($this->sql);
		$this->data=null;
		$this->acu=0;
			foreach ($this->query->result() as $row)
					{
						$this->data[]=array(
							'IDanticipo'	=>$row->IDanticipo,
							'bancoA'		=>$row->bancoA,
							'monto_A'		=>$row->monto_A,
							'CONCEPTO'		=>$row->CONCEPTO,
							'nro_concep'	=>$row->nro_concep,
							'fechaA'		=>$row->fechaA,
							'descripcion'	=>$row->descripcion,
							'estadoAnticipo'=>$row->estadoAnticipo,
							'nombreT'		=>$row->nombreT,
							'apellidoT'		=>$row->apellidoT,
							'cedulaT'		=>$row->cedulaT,
							'TRABAJANDO'	=>$row->TRABAJANDO
					   	);

					   	if($row->TRABAJANDO!="NO"){$this->acu+=$row->monto_A;}
					   	
					}

					$this->session->set_userdata('acumulado_hasta',$this->acu);
					$this->session->set_userdata('fecha_hasta',array('y'=>$y,'m'=>$m) );
		return $this->data;
		
		//echo "$this->sql";
    }

    function monto_todos_anticipos(){
    	$this->data=$this->todos_anticipos();
    	for ($i=0; $i < count($this->data); $i++) { 
    		if ($this->data[$i]['TRABAJANDO']!='NO') {
    			$this->acu+=$this->data[$i]['monto_A'];
    		}
    	}
    	return $this->acu;
    }

    function registrar_trabajador($arreglo=""){
    	$this->sql="INSERT INTO `trabajadores` (`nombreT`, `apellidoT`, `cedulaT`, `edoCivilT`, `telefonoT`, `cargoT`, `fechaingresoT`, `direccionT`, `IDT`, `TRABAJANDO`) VALUES ('".$arreglo['nombre']."', '".$arreglo['apellido']."', '".$arreglo['cedula']."', '".$arreglo['estado']."', '".$arreglo['telefono']."', '".$arreglo['cargo']."', '".$arreglo['fecha']."', '".$arreglo['direccion']."', '".substr(sha1($arreglo['cedula']), 0,4)."', '');";
    	$this->seleccion_bd();
    	if ($this->db->query($this->sql)) {
    		$this->session->set_flashdata('ok', 'Registro procesado satisfactoriamente..');
    	}else{
    		$this->session->set_flashdata('error', 'Ocurrio un error SQL al intentar registrar trabajador.');
    	}
    	redirect('/administrador/registrar_trabajador', 'refresh');
    }



    function registrar_anticipo($arreglo=""){
//echo "desde data. ";
//var_dump($arreglo);
$caracteres = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"; //posibles caracteres a usar
$numerodeletras=4; //numero de letras para generar el texto
$cadena = ""; //variable para almacenar la cadena generada
for($i=0;$i<$numerodeletras;$i++)
{
    $cadena .= substr($caracteres,rand(0,strlen($caracteres)),1); /*Extraemos 1 caracter de los caracteres 
entre el rango 0 a Numero de letras que tiene la cadena */
}
//echo "*".$cadena."*";
    
    	$this->sql="INSERT INTO `anticipo_prestaciones` (`IDanticipo`, `IDT`, `bancoA`, `estadoAnticipo`, `CONCEPTO`, `nro_concep`, `monto_A`, `fechaA`, `descripcion`) VALUES ('$cadena', '".$arreglo['IDT']."', '".$arreglo['banco']."', 'EMITIDO', '".$arreglo['cheque']."', '".$arreglo['voucher']."', '".$arreglo['monto']."', '".$arreglo['fecha']."', '".$arreglo['descripcion']."');";
    	$this->seleccion_bd();
    	if ($this->db->query($this->sql)) {
    		$this->session->set_flashdata('ok', 'Anticipo procesado satisfactoriamente..');
    	}else{
    		$this->session->set_flashdata('error', 'Ocurrio un error SQL al intentar registrar trabajador.');
    	}
    	//redirect('/administrador', 'refresh');
    }//fin de registrar_anticipo



    function actualizar_estado_trabajando($idt=""){
    	$this->sql="UPDATE `trabajadores` SET `TRABAJANDO` = 'NO' WHERE `trabajadores`.`IDT` = '".$idt."'";
    	$this->seleccion_bd();
    	if ($this->db->query($this->sql)) {
    		return TRUE;
    	}else{
    		return FALSE;
    	}
    }//FIN de actualizar_estado_trabajando



    function cargar_liquidacion($data=""){

    	$this->sql="INSERT INTO `liquidaciones` (`id`, `fecha`, `monto`, `IDT`) VALUES (NULL, '".$data['fecha']."', '".$data['monto']."', '".$data['idt']."');";
    	$this->seleccion_bd();
    	if ($this->db->query($this->sql)) {
    		return TRUE;
    	}else{
    		return FALSE;
    	}

    }//fin de cargar_liquidacion

    function trabajadores($cod_emp=""){
    	$this->sql="SELECT * FROM `trabajadores` WHERE `TRABAJANDO` NOT LIKE 'NO' ORDER BY `trabajadores`.`nombreT` ASC";
    	$this->seleccion_bd();
    	$this->data=null;
    	$this->query=$this->db->query($this->sql);
			foreach ($this->query->result() as $row)
					{
						$this->data[]=array(
							'nombreT'=>$row->nombreT,
							'apellidoT'=>$row->apellidoT,
							'cedulaT'=>$row->cedulaT,
							'edoCivilT'=>$row->edoCivilT,
							'telefonoT'=>$row->telefonoT,
							'cargoT'=>$row->cargoT,
							'fechaingresoT'=>$row->fechaingresoT,
							'direccionT'=>$row->direccionT,
							'IDT'=>$row->IDT,
							'TRABAJANDO'=>$row->TRABAJANDO
							);
					}//FIN DEL FOR
				return $this->data;
    }

    function detalla_trabajador($idt=""){
    	$this->session->unset_userdata('page');
    	return array('trabajador'=>$this->trabajador($idt),'registros'=>$this->anticipos_trabajador($idt));
    }//fin de funcion detalla_trabajador

    function trabajador($idt=""){    	
    	$this->sql="SELECT * FROM `trabajadores` WHERE `IDT` LIKE '$idt' ORDER BY `nombreT` ASC";
    	$this->seleccion_bd();
    	$this->data=null;
    	$this->query=$this->db->query($this->sql);
			foreach ($this->query->result() as $row)
					{
						$this->data=array(
							'IDT'=>$row->IDT,
							'nombreT'=>$row->nombreT,
							'apellidoT'=>$row->apellidoT,
							'cedulaT'=>$row->cedulaT,
							'edoCivilT'=>$row->edoCivilT,
							'telefonoT'=>$row->telefonoT,
							'cargoT'=>$row->cargoT,
							'fechaingresoT'=>$row->fechaingresoT,
							'direccionT'=>$row->direccionT							
							);
					}
			return $this->data;
    	# SELECT * FROM `trabajadores` WHERE `IDT` LIKE 'wiy6' ORDER BY `nombreT` ASC
    }

    function anticipos_trabajador($idt=""){
    	# SELECT * FROM `anticipo_prestaciones` WHERE `IDT` LIKE 'wiy6'
    	$this->sql="SELECT * FROM `anticipo_prestaciones` WHERE `IDT` LIKE '$idt'  ORDER BY `anticipo_prestaciones`.`fechaA` ASC";
    	$this->seleccion_bd();
    	$this->data=null;
    	$this->acu=0;
    	$this->query=$this->db->query($this->sql);
			foreach ($this->query->result() as $row)
					{
						$this->data[]=array(
							'IDanticipo'	=>$row->IDanticipo,
							'bancoA'		=>$row->bancoA,
							'monto_A'		=>$row->monto_A,
							'CONCEPTO'		=>$row->CONCEPTO,
							'nro_concep'	=>$row->nro_concep,
							'fechaA'		=>$row->fechaA,
							'descripcion'	=>$row->descripcion,
							'estadoAnticipo'=>$row->estadoAnticipo
					   	);
					   	$this->acu+=$row->monto_A;
					}
			return array('anticipos'=>$this->data,'acumulado'=>$this->acu);
    }
}