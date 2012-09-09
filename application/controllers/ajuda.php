<?php
class Ajuda extends CI_Controller{
	public function index()
	{
		$data["pagina"] = 'ajuda';
		$this->load->view("layout",$data);
		
	}
}
?>