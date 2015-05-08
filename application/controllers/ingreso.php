<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ingreso extends CI_Controller {

	public function index()
	{
		$this->load->view('ingreso');
	}

	public function validacion(){
		$u=$this->input->post('usuario');
		$p=$this->input->post('password');

		if($u!=''&&$p!=''){
			$this->load->model('data');
			$this->data->validacion($u,$p);
		}else{
			$this->session->set_flashdata('error', 'El usuario o clave contienen un valor vacio');
			redirect('/ingreso/', 'refresh');
		}
	}
}