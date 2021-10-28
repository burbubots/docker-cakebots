-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `tradeaccounts`;
CREATE TABLE `tradeaccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(200) NOT NULL,
  `cuenta` varchar(80) NOT NULL DEFAULT 'cuenta',
  `net` varchar(20) NOT NULL DEFAULT 'Solana',
  `notas` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tradeasociados`;
CREATE TABLE `tradeasociados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tradecoin_id` int(11) NOT NULL,
  `tradeaccount_id` int(11) NOT NULL,
  `associatedAccount` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `associatedAccount` (`associatedAccount`),
  KEY `tradecoin_id` (`tradecoin_id`),
  KEY `tradeaccount_id` (`tradeaccount_id`),
  CONSTRAINT `tradeasociados_ibfk_1` FOREIGN KEY (`tradecoin_id`) REFERENCES `tradecoins` (`id`),
  CONSTRAINT `tradeasociados_ibfk_2` FOREIGN KEY (`tradeaccount_id`) REFERENCES `tradeaccounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tradecoins`;
CREATE TABLE `tradecoins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `geckoname` varchar(100) DEFAULT NULL,
  `valorusd` double NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `acumusd` double NOT NULL DEFAULT 0,
  `inc1h` double NOT NULL DEFAULT 0,
  `inc24h` double NOT NULL DEFAULT 0,
  `inc7d` double NOT NULL DEFAULT 0,
  `inc14d` double NOT NULL DEFAULT 0,
  `inc30d` double NOT NULL DEFAULT 0,
  `inc60d` double NOT NULL DEFAULT 0,
  `max_supply` double NOT NULL DEFAULT 0,
  `total_supply` double NOT NULL DEFAULT 0,
  `circulating_supply` double NOT NULL DEFAULT 0,
  `market_cap` double NOT NULL DEFAULT 0,
  `small_image` varchar(255) DEFAULT NULL,
  `getticker` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2021-10-27 09:06:23
