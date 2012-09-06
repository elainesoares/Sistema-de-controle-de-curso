-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Set 01, 2012 as 09:29 PM
-- Versão do Servidor: 5.1.53
-- Versão do PHP: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `fundacao_sara`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE IF NOT EXISTS `aluno` (
  `codigo_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(10) NOT NULL,
  `ddd` varchar(4) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `codigo_turma` int(11) NOT NULL,
  PRIMARY KEY (`codigo_aluno`),
  KEY `codigo_turma` (`codigo_turma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `aluno`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `gabarito_aluno`
--

CREATE TABLE IF NOT EXISTS `gabarito_aluno` (
  `codigo_prova` int(11) NOT NULL AUTO_INCREMENT,
  `questao1` varchar(1) NOT NULL,
  `questao2` varchar(1) NOT NULL,
  `questao3` varchar(1) NOT NULL,
  `questao4` varchar(1) NOT NULL,
  `questao5` varchar(1) NOT NULL,
  `questao6` varchar(1) NOT NULL,
  `questao7` varchar(1) NOT NULL,
  `questao8` varchar(1) NOT NULL,
  `questao9` varchar(1) NOT NULL,
  `questao10` varchar(10) NOT NULL,
  `codigo_aluno` int(11) NOT NULL,
  PRIMARY KEY (`codigo_prova`),
  KEY `codigo_aluno` (`codigo_aluno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `gabarito_aluno`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `gabarito_oficial`
--

CREATE TABLE IF NOT EXISTS `gabarito_oficial` (
  `codigo_gabarito_oficial` int(11) NOT NULL AUTO_INCREMENT,
  `questao1` varchar(1) NOT NULL,
  `questao2` varchar(1) NOT NULL,
  `questao3` varchar(1) NOT NULL,
  `questao4` varchar(1) NOT NULL,
  `questao5` varchar(1) NOT NULL,
  `questao6` varchar(1) NOT NULL,
  `questao7` varchar(1) NOT NULL,
  `questao8` varchar(1) NOT NULL,
  `questao9` varchar(1) NOT NULL,
  `questao10` varchar(10) NOT NULL,
  `codigo_prova` int(11) NOT NULL,
  PRIMARY KEY (`codigo_gabarito_oficial`),
  KEY `codigo_prova` (`codigo_prova`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `gabarito_oficial`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel`
--

CREATE TABLE IF NOT EXISTS `nivel` (
  `codigo_nivel` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_termino` date NOT NULL,
  PRIMARY KEY (`codigo_nivel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `nivel`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE IF NOT EXISTS `professor` (
  `codigo_professor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(10) NOT NULL,
  `ddd` varchar(4) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `rua` varchar(30) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`codigo_professor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `professor`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `prova`
--

CREATE TABLE IF NOT EXISTS `prova` (
  `codigo_prova` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `tipo` varchar(3) NOT NULL,
  `qtd_questoes` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`codigo_prova`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `prova`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE IF NOT EXISTS `turma` (
  `codigo_turma` int(11) NOT NULL AUTO_INCREMENT,
  `identificador` varchar(5) NOT NULL,
  `codigo_nivel` int(11) NOT NULL,
  PRIMARY KEY (`codigo_turma`),
  KEY `codigo_nivel` (`codigo_nivel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `turma`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_professor`
--

CREATE TABLE IF NOT EXISTS `turma_professor` (
  `codigo_turma` int(11) NOT NULL,
  `codigo_professor` int(11) NOT NULL,
  KEY `codigo_turma` (`codigo_turma`),
  KEY `codigo_professor` (`codigo_professor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma_professor`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(10) NOT NULL,
  `ddd` varchar(4) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `rua` varchar(30) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `bairro` varchar(40) NOT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cidade` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `login` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `usuario`
--

