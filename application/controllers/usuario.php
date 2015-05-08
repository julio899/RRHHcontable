<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuario extends CI_Controller {
	var $bandera=FALSE;	
	var $temporal="";
	public function index()
	{
		
		if($this->session->userdata('login')){
			switch ($this->session->userdata('tipo')) {
				case 'A':
					redirect('/usuario/administrador', 'refresh');
					break;
				case 'C':
					redirect('/usuario/consultor', 'refresh');
					break;
				
				default:					
					$this->session->set_flashdata('error', 'El TIPO de usuario No Esta DEFINIDO');
					redirect('/ingreso/', 'refresh');
					break;
			}
		}else{
			redirect('/ingreso', 'refresh');
		}
	}

	public function cerrar_sesion(){
		@session_start();
		$this->session->unset_userdata('usuario');
		$this->session->unset_userdata('tipo');
		$this->session->unset_userdata('login');
		session_destroy();
		redirect('/ingreso', 'refresh');
	}

	public function administrador(){
		if ($this->session->userdata('tipo')=='A') {
			$this->load->view('html/head');
			$this->load->view('contenido/adm_index');
			$this->load->view('html/footer');
		}else{
			redirect('/usuario', 'refresh');
		}
	}//fin de funcion Administrador
	public function consultor(){
		if ($this->session->userdata('tipo')=='C') {

			$this->load->view('html/head');
			$this->load->view('contenido/adm_index');
			//echo "tipo usuario consultor	";
			//echo '<a href="'.base_url().index_page().'/usuario/cerrar_sesion" class="btn btn-danger">Cerrar Sesi&oacute;n</a>';
			
			$this->load->view('html/footer');
		}else{
			redirect('/usuario', 'refresh');
		}
		
	}//fin de funcion consultor

	public function selecionar_empresa($cod=""){

                	foreach ($this->config->config['empresas'] as $key => $value) {
                		
                		if($this->config->config['empresas'][$key]['cod']==$cod){
                			$this->bandera=TRUE;
                			$this->temporal=$this->config->config['empresas'][$key];
                		}
                	}
		
                if($this->bandera){
                	$this->session->set_userdata('empresa_seleccionada',$this->temporal);
                	//var_dump($this->session->userdata('empresa_seleccionada'));
                	$this->session->unset_userdata('page');
                	
                	if($this->session->userdata('tipo')=='A'){redirect('/administrador', 'refresh');}
                	if($this->session->userdata('tipo')=='C'){redirect('/consultor', 'refresh');}
                }else{
                	$this->session->unset_userdata('empresa_seleccionada');
                	echo "CODIGO INVALIDO";
                }
	}//fin de seleccionar empresa

}