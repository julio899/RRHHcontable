<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Consultor extends CI_Controller {
	public function index()
	{
		
		if ($this->session->userdata('tipo')=='C') {

			$this->load->view('html/head');
			$this->load->view('contenido/consultor_panel');
			$this->load->view('html/footer');

		}
	}


	public function todos_anticipos(){
		if ($this->session->userdata('tipo')=='C') {
				$this->load->model('data');
				$this->temporal=$this->data->todos_anticipos();
				$this->session->set_userdata('page','todos_anticipos');
				//var_dump($this->temporal);
				$this->load->view('html/head');
				$this->load->view('contenido/consultor_panel',array('todos_anticipos'=>$this->temporal, 'monto_todos_anticipos'=>$this->data->monto_todos_anticipos() ));
				$this->load->view('html/footer');

		}else{
			redirect('/usuario', 'refresh');
		}
	}
	
	public function acumulado_mensual(){
		if ( $this->input->post() ){
			//var_dump($this->input->post() );
			$this->load->model('data');
			$esp=""; if($this->input->post('mes')<10){$esp="0";}

			$this->temporal=$this->data->todos_anticipos_hasta_year_mes($this->input->post('year'),$esp.$this->input->post('mes'));
			

				$this->load->view('html/head');
				$this->load->view('contenido/consultor_panel',array('todos_anticipos'=>$this->temporal, 'monto_todos_anticipos'=>$this->data->monto_todos_anticipos(),'hasta'=>TRUE ));
				$this->load->view('html/footer');
		}else{
			echo "else";
		}
	}

}//FIN DE CLASE