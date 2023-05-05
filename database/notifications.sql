-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla notificaciones_transaccion.notificaciones
CREATE TABLE IF NOT EXISTS `notificaciones` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `mensaje` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla notificaciones_transaccion.notificaciones: ~2 rows (aproximadamente)
DELETE FROM `notificaciones`;
INSERT INTO `notificaciones` (`Id`, `email`, `asunto`, `mensaje`) VALUES
	(1, 'rafa@gmail.com', 'hola rafa', 'feliz cumple'),
	(2, 'lit.josue20@gmail.com', 'hola josue', 'tu cuenta');

-- Volcando estructura para tabla notificaciones_transaccion.notificaciones_transaccion
CREATE TABLE IF NOT EXISTS `notificaciones_transaccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_origen` varchar(50) NOT NULL,
  `cuenta_destino` varchar(50) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla notificaciones_transaccion.notificaciones_transaccion: ~2 rows (aproximadamente)
DELETE FROM `notificaciones_transaccion`;
INSERT INTO `notificaciones_transaccion` (`id`, `cuenta_origen`, `cuenta_destino`, `monto`, `fecha_hora`) VALUES
	(1, 'josue', 'rafael', 5000.00, '2023-05-05 01:13:46'),
	(2, 'gato', 'jesus', 12000.00, '0000-00-00 00:00:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
