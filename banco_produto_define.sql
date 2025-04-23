-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para produto
DROP DATABASE IF EXISTS `produto`;
CREATE DATABASE IF NOT EXISTS `produto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `produto`;

-- Copiando estrutura para tabela produto.eletronico
DROP TABLE IF EXISTS `eletronico`;
CREATE TABLE IF NOT EXISTS `eletronico` (
  `CODPRODUTO` varchar(20) NOT NULL,
  `MARCA` varchar(20) NOT NULL,
  `GARANTIAMESES` int(11) NOT NULL,
  PRIMARY KEY (`CODPRODUTO`),
  CONSTRAINT `FK_PRODELE` FOREIGN KEY (`CODPRODUTO`) REFERENCES `produto` (`CODPRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela produto.eletronico: ~2 rows (aproximadamente)
DELETE FROM `eletronico`;
INSERT INTO `eletronico` (`CODPRODUTO`, `MARCA`, `GARANTIAMESES`) VALUES
	('EL01', 'LG', 12),
	('EL02', 'SAMSUNG', 18);

-- Copiando estrutura para tabela produto.produto
DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `CODPRODUTO` varchar(20) NOT NULL,
  `NOMEPRODUTO` varchar(60) NOT NULL,
  `PRECOPRODUTO` decimal(8,2) NOT NULL,
  PRIMARY KEY (`CODPRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela produto.produto: ~5 rows (aproximadamente)
DELETE FROM `produto`;
INSERT INTO `produto` (`CODPRODUTO`, `NOMEPRODUTO`, `PRECOPRODUTO`) VALUES
	('EL01', 'TV TELA PLANA', 2600.00),
	('EL02', 'LAVA E SECA', 5000.00),
	('El03', 'Philips', 1200.00),
	('EL04', 'AR-CONDICIONADO', 1200.00),
	('EL05', 'SMARTPHONE ANDROID', 1200.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
