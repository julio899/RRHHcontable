<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Administrador extends CI_Controller {
	var $bandera=FALSE;	
	var $temporal="";
	var $obj=null;
	public function index()
	{
		if ($this->session->userdata('tipo')=='A') {
			$this->load->view('html/head');
			$this->load->view('contenido/adm_panel');
			$this->load->view('html/footer');
		}else{
			redirect('/usuario', 'refresh');
		}

	}

	public function todos_anticipos(){
		if ($this->session->userdata('tipo')=='A') {
				$this->load->model('data');
				$this->temporal=$this->data->todos_anticipos();
				$this->session->set_userdata('page','todos_anticipos');
				//var_dump($this->temporal);
				$this->load->view('html/head');
				$this->load->view('contenido/adm_panel',array('todos_anticipos'=>$this->temporal, 'monto_todos_anticipos'=>$this->data->monto_todos_anticipos() ));
				$this->load->view('html/footer');

		}else{
			redirect('/usuario', 'refresh');
		}
	}

	public function registrar_trabajador(){
		if ($this->session->userdata('tipo')=='A') {

				$this->obj=$this->session->userdata('empresa_seleccionada');
				if($this->obj['razon_social']){
					//echo "<pre> -->seleccion de ".$this->session->userdata('empresa_seleccionada')['razon_social']."</pre>";

				$this->session->set_userdata('page','registrar_trabajador');
				$this->load->view('html/head');
				$this->load->view('contenido/adm_panel');
				$this->load->view('html/footer');
				}else{
					echo "Porfavor seleccion empresa";

				}

		}else{
			redirect('/usuario', 'refresh');
		}

	}

	public function procesar_anticipo_trabajador(){
			if ( $this->input->post() ) {
			$this->load->model('data');
			$this->data->registrar_anticipo($this->input->post());

			redirect('/administrador/selecione_trabajador_anticipo', 'refresh');
		}
	}//fin procesar_anticipo_trabajador

	public function procesar_registro_trabajador(){


		if ( $this->input->post() ) {
			$this->load->model('data');
			$this->data->registrar_trabajador($this->input->post());
		}
	}

	public function acumulado_mensual(){
		if ( $this->input->post() ){
			//var_dump($this->input->post() );

			$this->load->model('data');
			$esp=""; if($this->input->post('mes')<10){$esp="0";}

			//var_dump($this->temporal);

				$this->load->view('html/head');
				$this->load->view('contenido/mov_mensual',array('todos_anticipos'=>$this->data->todos_anticipos_hasta_year_mes($this->input->post('year'),$esp.$this->input->post('mes')),'data'=>$this->data->todos_anticipos() ));
				$this->load->view('html/footer');
				
		}else{
			echo "else";
		}
	}

	public function selecione_trabajador(){
		$this->session->set_userdata('page','selecione_trabajador');
		$this->temporal=$this->trabajadores();
				$this->load->view('html/head');
				$this->load->view('contenido/adm_panel',array('trabajadores'=>$this->trabajadores() ) );
				$this->load->view('html/footer');

	}/*fin de selecione_trabajador*/

	public function selecione_trabajador_anticipo(){

		$this->session->unset_userdata('page');
		$this->temporal=$this->trabajadores();

		$this->session->set_userdata('page','cargar_anticipo');
		$this->load->view('html/head');
				$this->load->view('contenido/adm_panel',array('trabajadores_anticipo'=>$this->trabajadores() ) );
				$this->load->view('html/footer');
	}//fin de funcion

	public function trabajador_seleccionado($id=""){
		$this->load->model('data');
		$this->session->set_flashdata('trabajador_seleccionado',$this->data->detalla_trabajador($id) );

		$this->load->view('html/head');
		$this->load->view('contenido/adm_panel',array('trabajador_seleccionado' => $this->data->detalla_trabajador($id) , 'IDT'=> $id));
		$this->load->view('html/head');
	}//fin de trabajador_seleccionado


	public function trabajadores(){
		$this->load->model('data');
		return $this->data->trabajadores($this->session->userdata['empresa_seleccionada']['cod']);

	}/*fin de la  funcion traer trabajadores*/

	public function detalla_trabajador($idt=""){
		$this->load->model('data');
				$this->load->view('html/head'); 
				$this->load->view('contenido/adm_panel',array('trabajador_detallado'=>$this->data->detalla_trabajador($idt) ) );
				$this->load->view('html/footer');
	}//fin de detalla trabajador

   function proceso_liquidacion($idt=""){
		   	if ( $this->input->post() ){
		   		
		   		$this->load->model('data');
			    	if($this->data->actualizar_estado_trabajando($idt)==TRUE)
			    	{

				    	//var_dump(array('fecha'=>$this->input->post('fechaL'), 'monto'=>$this->input->post('monto'), 'idt'=> $idt ) );

				    	if( $this->data->cargar_liquidacion(array('fecha'=>$this->input->post('fechaL'), 'monto'=>$this->input->post('monto'), 'idt'=> $idt ) ) ){
				    		$this->session->set_flashdata('ok', 'Se cargo la liquidacion exitosamente.');
				    	}else{
				    		$this->session->set_flashdata('error', 'No se pudo cagar la liquidacion.');
				    	}

			    	}else	{
				    		$this->session->set_flashdata('error', 'No se pudo cambiar el status al trabajador.');
			    			}

		   	}else{
			    		$this->session->set_flashdata('error', 'No se recibieron datos por post');
		   		}

			    	redirect('administrador', 'refresh');
	} //fin de proceso_liquidacion

    function contabilizar_anticipos_liquidaciones(){

				$this->load->model('data');
				$registros=null;
    			$anticipos=$this->data->todos_anticipos();
    			$liquidaciones=$this->data->todas_liquidaciones();

    			//Recorrido de los anticipo y cargo los datos en registros
    			for($i=0 ; $i< count($anticipos) ; $i++ ){

    				$registros[]=array(
    					'tipo'=>'A',
    					'fecha'=>$anticipos[$i]['fechaA'],
    					'monto'=>$anticipos[$i]['monto_A'],
    					'data'=>$anticipos[$i]
    				);
    			}

				/* ##################################################### */    			

    			//Recorrido de liquidaciones y cargo los datos en registros
    			for($i=0 ; $i< count($liquidaciones) ; $i++ ){

    				$registros[]=array(
    					'tipo'=>'L',
    					'fecha'=>$liquidaciones[$i]['fecha'],
    					'monto'=>$liquidaciones[$i]['monto'],
    					'data' =>$liquidaciones[$i]
    				);
    			}


    			//
    			if($registros==NULL){
    				$ordenado=NULL;
    			}else { 
    						$ordenado=$this->orderMultiDimensionalArray($registros,'fecha',false) ;
    					}

    			$this->load->view('html/head');

    			$this->load->view('tablas/tabla_contabilizar_anticipos', array('datos'=>$ordenado) );
    				
    			$this->load->view('html/footer');
 
    }//Fin de contabilizar_anticipos_liquidaciones

    function ordenar_fechas( $a, $b ) {
    return strtotime($a['fecha']) - strtotime($b['fecha']);
	}//fin de ordenar fechas
 	
function orderMultiDimensionalArray ($toOrderArray, $field, $inverse = false) {  
    $position = array();  
    $newRow = array();  
    foreach ($toOrderArray as $key => $row) {  
            $position[$key]  = $row[$field];  
            $newRow[$key] = $row;  
    }  
    if ($inverse) {  
        arsort($position);  
    }  
    else {  
        asort($position);  
    }  
    $returnArray = array();  
    foreach ($position as $key => $pos) {       
        $returnArray[] = $newRow[$key];  
    }  
    return $returnArray;  
} 



}//fin de clase