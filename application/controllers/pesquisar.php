<?php
class Pesquisar extends CI_Controller{
	public function index()
	{
		$data["pagina"] = 'pesquisar';
		$this->load->view("layout",$data);
		
	}
}
?>