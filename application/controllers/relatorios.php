<?php
class Relatorios extends CI_Controller{
	public function index()
	{
		$data["pagina"] = 'relatorios';
		$this->load->view("layout",$data);
		
	}
}
?>