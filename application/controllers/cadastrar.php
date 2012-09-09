<?php
class Cadastrar extends CI_Controller{
	public function index()
	{
		$data["pagina"] = 'cadastrar';
		$this->load->view("layout",$data);
		
	}
}
?>