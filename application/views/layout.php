<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Projeto Diagnóstico Precoce</title>
<link rel="stylesheet" href="assets/css/reset.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="assets/css/template.css" />
<link rel="stylesheet" type="text/css" href="assets/css/cadastrar.css" />
</head>

<body>
	<div id="container">
	<div id="header">
    	
    	<div id="header_center">
    		<div id="logo"> 
            	<img src="assets/Images/LOGOMARCA-FUNDAÇÃO-SARA-ORIGINAL2.fw.png" />       
       		</div>
            <div id="descricao">
            	<img src="assets/Images/frasesara.png" />
            </div>
            <div id="menu_header">
            	<ul>
                	<li><a href="<?php echo base_url(); ?>"> Home</a> </li>
                    
                    <li><a href="cadastrar"> Cadastrar</a> </li>
                  	
                    <li><a href="pesquisar"> Pesquisar </a></li>
                   
                    <li><a href="relatorios"> Relatórios </a></li>
                    
                    <li><a href="ajuda"> Ajuda </a></li>
                    
                </ul>
            </div>
        </div>
    </div>
    <div id="under_header">
 		<div id="nuvem1"></div>
        <div id="sol"> </div>
        <div id="nuvem2"></div>       	
    </div>
    <div class="clear"> </div>
    <!-- Conteúdo do sistema -->
    <div id="conteudo">
    	<?php $this->load->view($pagina) ?>
   	</div>
    <div class="clear"> </div>
     
    
    
</div>

<div id="grama">
</div>  
<div id="rodape">
	<div id="rodape_conteudo">
		
			<div id="left_mapa"> </div>
			<div id="center_mapa"> 
				<ul>
					<li><a href="<?php echo base_url();?>">HOME</a></li>
					<li><a href="cadastrar">CADASTRAR</a></li>
					<li><a href="pesquisar">PESQUISAR</a></li>
					<li><a href="relatorios">RELATÓRIOS</a></li>
					<li><a href="ajuda">AJUDA</a></li>
				</ul>	
			</div>
			<div id="right_mapa"> </div>
			<div id="logo_infobits"></div>
		
    </div>	
</div>
</body>
</html>