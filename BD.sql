-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.17 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para classificados
CREATE DATABASE IF NOT EXISTS `classificados` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `classificados`;

-- Copiando estrutura para tabela classificados.anuncios
CREATE TABLE IF NOT EXISTS `anuncios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` text,
  `valor` float DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela classificados.anuncios: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `anuncios` DISABLE KEYS */;
INSERT INTO `anuncios` (`id`, `id_usuario`, `id_categoria`, `titulo`, `descricao`, `valor`, `estado`) VALUES
	(3, 1, 1, 'Hublot editado', 'Alguma descriÃ§Ã£o de produto legal.', 300, 1),
	(4, 1, 2, 'Casaco de Fulano', 'DescriÃ§Ã£o bolada do casaco', 100, 0),
	(5, 1, 4, 'Ferrari', 'Carro Esportivo', 50, 1),
	(6, 1, 4, 'BMW', 'Carro maneiro mesmo', 200, 1),
	(7, 1, 4, 'Mercedez-Benz', 'NÃ£o Ã© uma mulher', 500, 2);
/*!40000 ALTER TABLE `anuncios` ENABLE KEYS */;

-- Copiando estrutura para tabela classificados.anuncios_imagens
CREATE TABLE IF NOT EXISTS `anuncios_imagens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_anuncio` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela classificados.anuncios_imagens: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `anuncios_imagens` DISABLE KEYS */;
INSERT INTO `anuncios_imagens` (`id`, `id_anuncio`, `url`) VALUES
	(26, 3, '8b152697476081654d7bb4666b1183eb.jpg'),
	(27, 3, '148de90cae372dfe233463943982d55a.jpg'),
	(28, 3, '43b30cb00cf09164754c9919c1c288d8.jpg');
/*!40000 ALTER TABLE `anuncios_imagens` ENABLE KEYS */;

-- Copiando estrutura para tabela classificados.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela classificados.categorias: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `nome`) VALUES
	(1, 'Relógios'),
	(2, 'Roupas'),
	(3, 'Eletrônicos'),
	(4, 'Carros');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Copiando estrutura para tabela classificados.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela classificados.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `telefone`) VALUES
	(1, 'Fabrício', 'fabricio_hd@hotmail.com', '202cb962ac59075b964b07152d234b70', '99999999999');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
