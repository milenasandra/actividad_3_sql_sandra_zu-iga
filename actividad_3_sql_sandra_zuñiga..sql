-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva_el_podio
DROP DATABASE IF EXISTS `tienda_deportiva_el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `premium` bit(1) NOT NULL DEFAULT b'1',
  `number_contact` varchar(50) NOT NULL DEFAULT '3003003030',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla contiene la información personas de cada cliente con relación a las compras realizadas.';

-- Volcando datos para la tabla tienda_deportiva_el_podio.customers: ~4 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `premium`, `number_contact`) VALUES
	(1, 'jordan rendon padierna', b'1', '3136669363'),
	(2, 'alexander restrepo', b'1', '3106401500'),
	(3, 'andres camilo restrepo', b'1', '3003003030'),
	(4, 'juan pablo colorado', b'0', '3105227896');

-- Volcando estructura para tabla tienda_deportiva_el_podio.means of payment
DROP TABLE IF EXISTS `means of payment`;
CREATE TABLE IF NOT EXISTS `means of payment` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla contiene la información acerca de los tipos de pago utilizados por cada cliente durante las compras';

-- Volcando datos para la tabla tienda_deportiva_el_podio.means of payment: ~2 rows (aproximadamente)
DELETE FROM `means of payment`;
INSERT INTO `means of payment` (`id`, `payment_method`) VALUES
	(1, 'check'),
	(2, 'effective'),
	(3, 'tdc_amex');

-- Volcando estructura para tabla tienda_deportiva_el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `measure` varchar(50) NOT NULL DEFAULT '0.00',
  `imported` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Esta tabla contiene la información de todos los productos almacenados en bodega';

-- Volcando datos para la tabla tienda_deportiva_el_podio.products: ~4 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `measure`, `imported`) VALUES
	(1, 'sudadera deportiva', 'm', b'0'),
	(2, 'guayos deportivos', '40', b'1'),
	(3, 'raqueta de tennis', '37cm', b'1'),
	(4, 'balon de basketball', '5 k', b'0');

-- Volcando estructura para tabla tienda_deportiva_el_podio.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` float NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `means_of_payment_id` smallint(6) NOT NULL DEFAULT 0,
  `customer_id` smallint(6) NOT NULL DEFAULT 0,
  `product_id` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Esta base de datos almacena la información sobre las ventas de la tienda deportiva el podio.\r\n';

-- Volcando datos para la tabla tienda_deportiva_el_podio.sales: ~4 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `name`, `value`, `date`, `means_of_payment_id`, `customer_id`, `product_id`) VALUES
	(1, 'sudadera', 35000, '2022-02-02', 1, 3, 1),
	(2, 'guayos deportivos', 350000, '2021-10-10', 3, 2, 2),
	(3, 'raquetas de tennis', 450000, '2021-11-30', 2, 1, 3),
	(4, 'balon de basketball', 55000, '2022-03-15', 1, 4, 4);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
