-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24-Fev-2015 às 19:03
-- Versão do servidor: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onibus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracao`
--

CREATE TABLE IF NOT EXISTS `configuracao` (
`id` int(11) NOT NULL,
  `mensalidade` decimal(7,2) NOT NULL,
  `preco_combustivel` decimal(7,2) NOT NULL,
  `preco_pedagio` decimal(7,2) NOT NULL,
  `gasto_diario_manutencao` decimal(7,2) NOT NULL,
  `comissao` decimal(7,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `configuracao`
--

INSERT INTO `configuracao` (`id`, `mensalidade`, `preco_combustivel`, `preco_pedagio`, `gasto_diario_manutencao`, `comissao`) VALUES
(1, '120.00', '2.67', '10.60', '60.00', '500.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE IF NOT EXISTS `contato` (
`id` int(11) NOT NULL,
  `tipo` enum('Telefone','Celular','Email') NOT NULL,
  `contato` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `tipo`, `contato`) VALUES
(1, 'Celular', '15996231634 ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
`id` int(11) NOT NULL,
  `curso` varchar(45) NOT NULL,
  `total_semestres` smallint(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `curso`, `total_semestres`) VALUES
(1, 'NE', 0),
(2, 'História', 8),
(3, 'Matemática', 8),
(4, 'Direito', 10),
(5, 'Administração', 8),
(6, 'Ciências Contábeis', 8),
(7, 'Pedagogia', 8),
(8, 'Educação Física', 8),
(9, 'Sistemas de Informação', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `despesa`
--

CREATE TABLE IF NOT EXISTS `despesa` (
`id` int(11) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `data` date NOT NULL,
  `resumo` text
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `despesa`
--

INSERT INTO `despesa` (`id`, `valor`, `data`, `resumo`) VALUES
(1, '600.00', '2015-02-01', 'Referente ao abastecimento dos 2 onibus.\nFoi pago 2,67/L de diesel.\nFoi abastecido 112,36L em cada Onibus.'),
(2, '42.40', '2015-02-02', 'Pagamento dos pedágios para os 2  onibus'),
(3, '41.20', '2015-02-03', '20 reais pagos para o Nego do conserto do pneu (falta 5 para pagar)\n21,20 de pedágio, foi apenas um onibus, Nego'),
(4, '22.00', '2015-02-04', 'Foi apenas um onibus, Nagib.\nValor pago de pedágio.'),
(5, '271.20', '2015-02-05', 'Foi abastecido R$ 250,00 p/ Nagib e pago o pedágio R$ 21,20.\n\nAbastecido em itararé, pago 2,67/L'),
(6, '371.90', '2015-02-06', 'Pago pedágio Nagib \nR$21,20\nAbastecido Nagib para semana \nR$ 350,70'),
(7, '3068.60', '2015-02-10', 'Pagamento do salário do Nagib R$ 1500,00 e Nego R$ 1500,00\nPago R$ 5,00\n que faltou do pneu do Nego\nPago R$ 63,60 de pegádio, 3 pedágios porque o onibus do Nego quebrou e ficou em Itararé'),
(8, '271.20', '2015-02-09', 'Pedágio Nego R$ 21,20\nAbastecimento Nego R$ 250,00'),
(9, '21.20', '2015-02-11', 'Pedágio Nagib'),
(10, '21.20', '2015-02-12', 'Pedágio onibus Nagib, Nego foi dirigindo'),
(11, '371.20', '2015-02-13', 'R$ 350,00 de abastecimento (Nagib)\nR$ 21,20 de pedágio (Nagib)'),
(12, '392.40', '2015-02-23', '10,60 Pedagio Nego\n10,60 Nagib porém não usou\n350,00 Abastecimento Nego');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE IF NOT EXISTS `endereco` (
`id` int(11) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `num` varchar(10) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `cep` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id`, `rua`, `num`, `complemento`, `bairro`, `cidade`, `cep`) VALUES
(1, 'Prof João Soares', '145', 'casa', 'Pq Longa Vida', 'Itapeva', '18404000'),
(2, 'Bela Vista', '208', 'casa', 'Vila Nova', 'Itapeva', ''),
(3, 'Aristides Franco de Moraes', '192', '', 'Itapeva3 ', 'Itapeva', ''),
(4, 'Mirassol', '378 ', '', 'Nsa Sra de Fátima', 'Itapeva', ''),
(5, 'Aristides Franco de Moraes', '192', '', 'Itapeva3 ', 'Itapeva', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_motorista`
--

CREATE TABLE IF NOT EXISTS `endereco_motorista` (
  `rua` varchar(45) NOT NULL,
  `num` varchar(10) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `motorista_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco_motorista`
--

INSERT INTO `endereco_motorista` (`rua`, `num`, `complemento`, `bairro`, `motorista_id`) VALUES
('Bela Vista', '208', '', 'Vila Nova', 1),
('Celso Monteiro de Oliveira', '58', '', 'Morada do Sol', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_passageiro`
--

CREATE TABLE IF NOT EXISTS `endereco_passageiro` (
  `rua` varchar(45) NOT NULL,
  `num` varchar(10) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` varchar(11) NOT NULL,
  `passageiro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco_passageiro`
--

INSERT INTO `endereco_passageiro` (`rua`, `num`, `complemento`, `bairro`, `cep`, `passageiro_id`) VALUES
('Prof J Soares', '145', '', 'Pq Longa Vida', '', 1),
('Mirassol', '378', '', 'Nsa Sra de Fátima', '', 2),
('Aristides Franco de Moraes', '192', '', 'Itapeva3 ', '', 3),
('Joaquim dos Santos', '125 ', '', 'Jd Brasil', '', 4),
('Leonina Bredo', '78', '', 'Jd Paulista', '', 5),
('Laudelina de Melo', '929', '', 'Vl Aparecida', '', 6),
('Joaquim Antonio ...', '28', '', 'Vl Aparecida', '', 7),
('Waldemar José Ramos', '25', '', 'Por do Sol', '', 8),
('Uriel Antunes M.', '052', '', 'Jd Paulista', '', 9),
('Nova Campina', '1237', '', 'Centro', '', 10),
('Dr Cory R. B. Araujo', '177', '', 'Vl S. Camilo', '', 11),
('José de Souza Farias', '43', '', 'Horto do Ipe', '', 12),
('Frei C. Argote', '889', '', 'V Aparecida', '', 13),
('Prof. João Santana', '310', '', 'Bom Jesus', '', 14),
('José Pedro de El. Campos', '50', '', 'Jd Beija Flor', '', 15),
('Gorias', '267', '', 'Beija Flor', '', 16),
('Santa Cruz', '576', '', 'Vl Nova', '', 17),
('TAQUARIVAÍ ', '', '', '', '', 18),
('TAQUARIVAÍ ', '', '', '', '', 19),
('TAQUARIVAÍ ', '', '', '', '', 20),
('Austria', '326', '', 'Jd Europa', '', 21),
('Laudelina L Melo', '286', '', 'Vl Aparecida', '', 22),
('trav. 1 joão Soares', '54', '', 'Longa Vida', '', 23),
('Benedito S Vieira', '515', '', 'Sta Maria', '', 24),
('Benedito dos Santos', '485', '', 'Sta Maria', '', 25),
('Higino Marquês', '1610', '', 'Jd Maringa', '', 26),
('Felicio Tortelli', '136', '', 'Jd Virginia', '', 27),
('Josefa Maria Silva', '78', '', 'Jd kantian', '', 28),
('José teixeira', '85', '', 'Jd kantian', '', 29),
('Limelo', '301', '', 'Vl Dom Bosco', '', 30),
('Cel monteiro', '496', '', 'Jd Maringá', '', 31),
('José Evandro dos Santos', '42', '', 'Jd Imperador', '', 32),
('Benedito Gomes', '31', '', 'V. S. Francisco', '', 33),
('José Lara', '95', '', 'Jd Virginia', '', 34),
('André Bassena', '282', '', 'Itapeva 4', '', 35),
('Joaquim O. Santos', '367', '', 'Longa Vida', '', 36),
('José de Souza Aranha', '55', '', 'Vl Sonia', '', 37),
('Paulina de Moraes', '1232', '', 'Centro', '', 38),
('Cory Ronald Blume', '37', '', 'São Camilo', '', 39),
('Taquarí', '16', '', 'V. Taquarí', '', 40),
('Anselmo Rodrigues F.', '182', '', 'Itapeva 3', '', 41),
('Benedito S. Barros', '124', '', 'Vista Alegre', '', 42),
('Vurem Aereu', '152', '', 'Itapeva', '', 43),
('Alcides R. A. Filho', '111', '', 'Morada do Sol', '', 44),
('Antonio B dos Santos', '48', '', 'Horto do Ipê', '', 45),
('Hungria', '36', '', 'Jd América', '', 47),
('Landelina de Melo', '890', '', 'Vila Aparecida', '', 48),
('Kazumi yoshimura', '1021', '', 'Pq Industrial', '', 49),
('Rosalvo M Santos', '77', '', 'S Camilo', '', 50),
('Cornélio V da Cruz', '285', '', 'Pq Cimentolândia', '', 51),
('Jamil de Ol', '60', '', 'Jd Brasil', '', 52),
('Cícero Marques', '247', '', 'V Ribas', '', 53),
('Espetacio Peiedade', '320', '', 'Centro', '', 54),
('Flauzino Antunes', '22', '', 'Centro', '', 55),
('.', '.', '', '.', '', 56),
('Amaral Rodrigues', '145', '', 'Jd California', '', 58);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidade`
--

CREATE TABLE IF NOT EXISTS `mensalidade` (
`id` int(11) NOT NULL,
  `passageiro_id` int(11) NOT NULL,
  `vencimento` date NOT NULL,
  `valor` decimal(5,2) NOT NULL,
  `recebido_em` date DEFAULT NULL,
  `valor_recebido` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensalidade`
--

INSERT INTO `mensalidade` (`id`, `passageiro_id`, `vencimento`, `valor`, `recebido_em`, `valor_recebido`) VALUES
(1, 33, '2015-02-10', '120.00', '2015-02-05', '120.00'),
(2, 36, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(3, 39, '2015-02-10', '120.00', '2015-02-05', '120.00'),
(4, 40, '2015-02-10', '120.00', '2015-02-03', '120.00'),
(5, 43, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(6, 7, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(7, 26, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(8, 42, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(9, 8, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(10, 9, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(11, 10, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(12, 19, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(13, 20, '2015-02-10', '120.00', '2015-02-10', '80.00'),
(14, 24, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(15, 31, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(16, 44, '2015-02-10', '60.00', '2015-02-09', '60.00'),
(17, 21, '2015-02-10', '120.00', '2015-02-06', '120.00'),
(18, 2, '2015-02-10', '120.00', '2015-02-02', '120.00'),
(19, 4, '2015-02-10', '120.00', '2015-02-06', '120.00'),
(20, 6, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(21, 11, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(22, 17, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(23, 27, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(24, 13, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(25, 14, '2015-02-10', '120.00', '2015-02-23', '120.00'),
(26, 18, '2015-02-10', '120.00', '2015-02-02', '120.00'),
(27, 22, '2015-02-10', '120.00', '2015-02-02', '120.00'),
(28, 23, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(29, 25, '2015-02-10', '50.00', NULL, '0.00'),
(30, 28, '2015-02-10', '140.00', NULL, '0.00'),
(31, 29, '2015-02-10', '140.00', '2015-02-12', '140.00'),
(32, 3, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(33, 5, '2015-02-10', '120.00', '2015-02-06', '120.00'),
(34, 12, '2015-02-10', '120.00', '2015-02-02', '120.00'),
(35, 15, '2015-02-10', '120.00', '2015-02-02', '120.00'),
(36, 16, '2015-02-10', '120.00', '2015-02-06', '120.00'),
(37, 30, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(38, 32, '2015-02-10', '120.00', '2015-02-03', '120.00'),
(39, 34, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(40, 35, '2015-02-10', '120.00', '2015-02-11', '140.00'),
(41, 37, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(42, 38, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(43, 41, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(45, 45, '2015-02-10', '120.00', NULL, '0.00'),
(46, 46, '2015-02-10', '120.00', '2015-02-02', '120.00'),
(47, 51, '2015-02-10', '120.00', '2015-02-05', '120.00'),
(48, 48, '2015-02-10', '120.00', '2015-02-06', '120.00'),
(49, 53, '2015-02-10', '120.00', '2015-02-09', '120.00'),
(50, 52, '2015-02-10', '120.00', '2015-02-06', '120.00'),
(51, 54, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(52, 50, '2015-02-10', '140.00', '2015-02-23', '140.00'),
(53, 49, '2015-02-10', '140.00', NULL, '0.00'),
(54, 55, '2015-02-10', '120.00', '2015-02-05', '120.00'),
(55, 47, '2015-02-10', '120.00', '2015-02-04', '120.00'),
(56, 57, '2015-02-10', '120.00', '2015-02-10', '120.00'),
(57, 56, '2015-02-10', '120.00', '2015-02-11', '140.00'),
(58, 58, '2015-02-10', '140.00', '2015-02-12', '140.00');

--
-- Acionadores `mensalidade`
--
DELIMITER //
CREATE TRIGGER `mensalidade_BINS` BEFORE INSERT ON `mensalidade`
 FOR EACH ROW set new.vencimento = concat(year(curdate()),'-',month(curdate()),"-10")
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE IF NOT EXISTS `motorista` (
`id` int(11) NOT NULL,
  `motorista` varchar(45) NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL,
  `obs` text,
  `litro_combustivel_por_km` decimal(7,2) NOT NULL DEFAULT '0.00',
  `distancia_trajeto` decimal(7,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`id`, `motorista`, `cpf`, `salario`, `obs`, `litro_combustivel_por_km`, `distancia_trajeto`) VALUES
(1, 'Nagib', '345', '1500.00', NULL, '2.40', '101.00'),
(2, 'Nego', '234', '1500.00', NULL, '2.40', '105.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista_contatos`
--

CREATE TABLE IF NOT EXISTS `motorista_contatos` (
  `motorista_id` int(11) NOT NULL,
  `contato_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `passageiro`
--

CREATE TABLE IF NOT EXISTS `passageiro` (
`id` int(11) NOT NULL,
  `nome_completo` varchar(80) NOT NULL,
  `cpf` char(15) NOT NULL,
  `curso_id` int(11) NOT NULL DEFAULT '1',
  `semestre` smallint(6) NOT NULL,
  `classificacao` enum('S','A','B','C','D') NOT NULL DEFAULT 'A',
  `obs` text,
  `vai` tinyint(1) NOT NULL DEFAULT '1',
  `volta` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `passageiro`
--

INSERT INTO `passageiro` (`id`, `nome_completo`, `cpf`, `curso_id`, `semestre`, `classificacao`, `obs`, `vai`, `volta`) VALUES
(1, 'Vinicius M Ferraz', '36757157870', 9, 7, 'S', 'Presidente da Comissão', 1, 1),
(2, 'Natalia Kely Eugenio', '444.616.708', 6, 1, 'A', NULL, 1, 1),
(3, 'Vinicius de Campos', '444.992.398', 9, 1, 'A', NULL, 1, 1),
(4, 'Diogenes dos Santos', '435.763.378', 6, 1, 'A', NULL, 1, 1),
(5, 'Juliano Cesar Russi Leite', '465.129.238-04', 9, 1, 'A', NULL, 1, 1),
(6, 'Bianca Irene M Santos', '403.224.448-02', 6, 1, 'A', NULL, 1, 1),
(7, 'Demetrios Lima de B.', '400.073.518-79', 3, 7, 'A', NULL, 1, 1),
(8, 'Nadia de Fátima', '399.885.818-07', 4, 9, 'A', NULL, 1, 1),
(9, 'Laura Bianchi D. M. Mattos', '122.831.118-89', 4, 9, 'A', NULL, 1, 1),
(10, 'Edvania da Silva Araujo', '402.744.738-79', 4, 1, 'A', NULL, 1, 1),
(11, 'Moabe Barros Oliveira', '416.224.518-56', 6, 7, 'A', NULL, 1, 1),
(12, 'Rafael Pereira Lopes', '332.539.988-82', 9, 7, 'A', NULL, 1, 1),
(13, 'Bárbara Taís S. Lima', '349.568.658-48', 7, 7, 'A', NULL, 1, 1),
(14, 'Letícia Oliveira Rocha', '367.895.878-88', 7, 7, 'A', NULL, 1, 1),
(15, 'Edgar de Jesus Endo Lima', '419.456.348-47', 9, 5, 'A', NULL, 1, 1),
(16, 'Ewerton Macedo Silva', '364.817.588-23', 9, 3, 'A', NULL, 1, 1),
(17, 'Leandro Henrique Leite', '317.626.868-80', 6, 6, 'A', NULL, 1, 1),
(18, 'Eliane Vieira da Silva ', '432.651.328-46', 7, 5, 'A', NULL, 1, 1),
(19, 'Igor F Augusto', '379.636.968-34', 4, 9, 'A', NULL, 1, 1),
(20, 'Camila O. L Freitas', '002.874.452-75', 4, 5, 'A', NULL, 1, 1),
(21, 'André Luiz Correa Mello', '432.747.828-54', 5, 1, 'A', NULL, 1, 1),
(22, 'Paulo Reis', '363.461.628-88', 7, 3, 'A', NULL, 1, 1),
(23, 'Diego Lima de Oliveira', '228.800.248-46', 7, 7, 'A', NULL, 1, 1),
(24, 'Jonathas Vasconcelos', '021.925.242-42', 4, 1, 'A', NULL, 1, 1),
(25, 'Nicolas Lopes de Almeida', '347.489.368-86', 8, 1, 'A', NULL, 0, 0),
(26, 'Lediane S. N. de Almeida', '383.364.708-7', 3, 7, 'A', NULL, 1, 1),
(27, 'Jéssica Donizete Queiroz', '430.449.618-23', 6, 3, 'A', NULL, 1, 1),
(28, 'Deivison H. O. Fonseca', '422.847.218-42', 8, 3, 'A', NULL, 1, 1),
(29, 'Denir Mainho Monteiro', '411.185.338-28', 8, 5, 'A', NULL, 1, 1),
(30, 'Airton Martins', '376.646.668-04', 9, 1, 'A', NULL, 1, 1),
(31, 'Adriana S. Yokoyama', '252.244.218-02', 4, 9, 'A', NULL, 1, 1),
(32, 'Juliane Pacheco', '417.287.308-13', 9, 1, 'A', NULL, 1, 1),
(33, 'Felipe Adriano A. de Oliviera', '396.207.138-50', 2, 3, 'A', NULL, 1, 1),
(34, 'Leonil Rodrigues de Almeida Neto', '404.376.418-99', 9, 5, 'A', NULL, 1, 1),
(35, 'Ruan de Souza Gomes', '380.829.918-65', 9, 3, 'A', NULL, 1, 1),
(36, 'Taylan I. T. Araujo', '466.877.178-0', 2, 1, 'A', NULL, 1, 1),
(37, 'Igor Michael Dobrianskys', '413.650.358-07', 9, 5, 'A', NULL, 1, 1),
(38, 'Edmilson O. Pereira', '373.042.028-31', 9, 5, 'A', NULL, 1, 1),
(39, 'Suiende Russo Couto', '387.080.698-24', 2, 5, 'A', NULL, 1, 1),
(40, 'Lana Maria de Proença', '432.913.548-50', 2, 5, 'A', NULL, 1, 1),
(41, 'Danilo Luiz L. Oliveira', '353.854.398-43', 9, 3, 'A', NULL, 1, 1),
(42, 'Diana M. lopes Carol', '394.382.549-54', 3, 7, 'A', NULL, 1, 1),
(43, 'Ana Carla Socolski', '344.996.578-65', 2, 5, 'A', NULL, 1, 1),
(44, 'Osmar F. Santos Jr', '353.419.468', 4, 7, 'A', NULL, 0, 1),
(45, 'Robson Camilo Dezani', '402.683.958-37', 9, 3, 'A', '', 1, 1),
(46, 'Anderson', '343.295.488-13', 4, 9, 'A', '', 1, 1),
(47, 'Thaina da Silva Amaral', '433.995.008-40', 2, 3, 'A', '', 1, 1),
(48, 'Carlos Eduardo P Custódio', '433.204.458-60', 2, 3, 'A', '', 1, 1),
(49, 'Rafael Silva Diniz', '399.542.658-13', 3, 7, 'A', '', 1, 1),
(50, 'Pamela Ribeiro', '487.638.989', 2, 5, 'A', '', 1, 1),
(51, 'Welton Rodrigues', '422.776.258-20', 9, 3, 'A', '', 1, 1),
(52, 'Luiz Paulo S. Bustolin', '410.976.968-23', 9, 1, 'A', '', 1, 1),
(53, 'Dhionatan L Veraus', '366.077.588-60', 9, 7, 'A', '', 1, 1),
(54, 'Max A Hertell Jr', '427.897.608-79', 9, 3, 'A', '', 1, 1),
(55, 'Sarah Arcanjo', '469.716.798-81', 7, 1, 'A', '', 1, 1),
(56, 'Rafael Prestes', '399.420.618-35', 5, 3, 'A', '', 1, 1),
(57, 'Fabiana Veiga de Freitas', '', 7, 5, 'A', '', 1, 1),
(58, 'Edu Sebastião Junior', '394.075.168-57', 8, 8, 'A', '', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `passageiro_contatos`
--

CREATE TABLE IF NOT EXISTS `passageiro_contatos` (
  `passageiro_id` int(11) NOT NULL,
  `contato_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `passageiro_contatos`
--

INSERT INTO `passageiro_contatos` (`passageiro_id`, `contato_id`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `registro_diario`
--

CREATE TABLE IF NOT EXISTS `registro_diario` (
`id` int(11) NOT NULL,
  `data` date NOT NULL,
  `passageiros` smallint(6) NOT NULL,
  `obs` text
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registro_diario`
--

INSERT INTO `registro_diario` (`id`, `data`, `passageiros`, `obs`) VALUES
(1, '2015-02-02', 57, '5 eram professores'),
(2, '2015-02-03', 47, 'Turma de história não foi'),
(3, '2015-02-04', 49, ''),
(4, '2015-02-05', 39, ''),
(5, '2015-02-06', 39, ''),
(6, '2015-02-09', 55, ''),
(7, '2015-02-10', 51, 'ia só o onibus do nego, porém chegando em itararé quebrou.Foi preciso o Nagib ir para buscar o pessoal no fim da aula.'),
(8, '2015-02-11', 49, ''),
(9, '2015-02-12', 49, 'Nego foi com o onibus do Nagib'),
(10, '2015-02-13', 46, ''),
(11, '2015-02-23', 54, 'Uma moça ficou de pé');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `configuracao`
--
ALTER TABLE `configuracao`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `despesa`
--
ALTER TABLE `despesa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endereco_motorista`
--
ALTER TABLE `endereco_motorista`
 ADD PRIMARY KEY (`motorista_id`);

--
-- Indexes for table `endereco_passageiro`
--
ALTER TABLE `endereco_passageiro`
 ADD PRIMARY KEY (`passageiro_id`), ADD KEY `fk_endereco_passageiro_passageiro1_idx` (`passageiro_id`);

--
-- Indexes for table `mensalidade`
--
ALTER TABLE `mensalidade`
 ADD PRIMARY KEY (`id`,`passageiro_id`), ADD KEY `fk_mensalidade_passageiro1_idx` (`passageiro_id`);

--
-- Indexes for table `motorista`
--
ALTER TABLE `motorista`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motorista_contatos`
--
ALTER TABLE `motorista_contatos`
 ADD PRIMARY KEY (`motorista_id`,`contato_id`), ADD KEY `fk_table1_contato2_idx` (`contato_id`);

--
-- Indexes for table `passageiro`
--
ALTER TABLE `passageiro`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_passageiro_curso_idx` (`curso_id`);

--
-- Indexes for table `passageiro_contatos`
--
ALTER TABLE `passageiro_contatos`
 ADD PRIMARY KEY (`passageiro_id`,`contato_id`), ADD KEY `fk_table1_contato1_idx` (`contato_id`);

--
-- Indexes for table `registro_diario`
--
ALTER TABLE `registro_diario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `configuracao`
--
ALTER TABLE `configuracao`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `despesa`
--
ALTER TABLE `despesa`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mensalidade`
--
ALTER TABLE `mensalidade`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `motorista`
--
ALTER TABLE `motorista`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `passageiro`
--
ALTER TABLE `passageiro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `registro_diario`
--
ALTER TABLE `registro_diario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `endereco_motorista`
--
ALTER TABLE `endereco_motorista`
ADD CONSTRAINT `fk_endereco_motorista_motorista1` FOREIGN KEY (`motorista_id`) REFERENCES `motorista` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `endereco_passageiro`
--
ALTER TABLE `endereco_passageiro`
ADD CONSTRAINT `fk_endereco_passageiro_passageiro1` FOREIGN KEY (`passageiro_id`) REFERENCES `passageiro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `mensalidade`
--
ALTER TABLE `mensalidade`
ADD CONSTRAINT `fk_mensalidade_passageiro1` FOREIGN KEY (`passageiro_id`) REFERENCES `passageiro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `motorista_contatos`
--
ALTER TABLE `motorista_contatos`
ADD CONSTRAINT `fk_table1_contato2` FOREIGN KEY (`contato_id`) REFERENCES `contato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_table1_motorista1` FOREIGN KEY (`motorista_id`) REFERENCES `motorista` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `passageiro`
--
ALTER TABLE `passageiro`
ADD CONSTRAINT `fk_passageiro_curso` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `passageiro_contatos`
--
ALTER TABLE `passageiro_contatos`
ADD CONSTRAINT `fk_table1_contato1` FOREIGN KEY (`contato_id`) REFERENCES `contato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_table1_passageiro1` FOREIGN KEY (`passageiro_id`) REFERENCES `passageiro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
