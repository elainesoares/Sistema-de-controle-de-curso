<?php
class Home extends CI_Controller{
	public function index()
	{
		$data["pagina"] = 'home';
		$this->load->view("layout",$data);
		$query = $this->db->get('professor');
		$dados['professor'] = $query->result();
		print_r($dados['professor']);
		
	}

}
?>
