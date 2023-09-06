-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: dbut.kpn.esseweb.intra
-- Creato il: Apr 19, 2018 alle 16:21
-- Versione del server: 5.6.28-log
-- Versione PHP: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Struttura della tabella `agenti`
--

CREATE TABLE IF NOT EXISTS `agenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agente` varchar(300) NOT NULL,
  `limit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `nome` varchar(1000) DEFAULT NULL,
  `qty_minima` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE IF NOT EXISTS `clienti` (
  `id` varchar(255) NOT NULL,
  `id_agente` int(11) DEFAULT NULL,
  `id_depositi` varchar(500) DEFAULT NULL,
  `ragione_sociale` varchar(300) DEFAULT NULL,
  `codice_fiscale` varchar(300) DEFAULT NULL,
  `piva` varchar(300) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_agente` (`id_agente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_indirizzi`
--

CREATE TABLE IF NOT EXISTS `clienti_indirizzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` varchar(255) NOT NULL,
  `via` varchar(300) NOT NULL,
  `citta` varchar(100) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `cap` varchar(50) NOT NULL,
  `stato` varchar(50) NOT NULL,
  `note` varchar(300) NOT NULL,
  `destinazioneGEST` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Struttura della tabella `depositi`
--

CREATE TABLE IF NOT EXISTS `depositi` (
  `id_deposito` varchar(5) NOT NULL,
  `deposito` varchar(255) NOT NULL,
  PRIMARY KEY (`id_deposito`),
  KEY `id_deposito` (`id_deposito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE IF NOT EXISTS `prodotti` (
  `id` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_catalogo` int(11) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `oeam` char(2) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `listino` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti_giacenze`
--

CREATE TABLE IF NOT EXISTS `prodotti_giacenze` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prodotto` varchar(255) NOT NULL,
  `id_deposito` varchar(5) NOT NULL,
  `stato` varchar(10) NOT NULL,
  `dt_update` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_prodotto` (`id_prodotto`,`id_deposito`),
  KEY `id_deposito` (`id_deposito`),
  KEY `id_prodotto_2` (`id_prodotto`),
  KEY `stato` (`stato`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Struttura della tabella `prodotti_listini`
--

CREATE TABLE IF NOT EXISTS `prodotti_listini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prodotto` varchar(255) NOT NULL,
  `listino` varchar(5) NOT NULL,
  `prezzo` float NOT NULL,
  `dt` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_prodotto` (`id_prodotto`,`listino`),
  KEY `listino` (`listino`),
  KEY `id_prodotto_2` (`id_prodotto`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Limiti per la tabella `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `categorie_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `categorie` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `clienti_indirizzi`
--
ALTER TABLE `clienti_indirizzi`
  ADD CONSTRAINT `clienti_indirizzi_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clienti` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  ADD CONSTRAINT `prodotti_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorie` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `prodotti_giacenze`
--
ALTER TABLE `prodotti_giacenze`
  ADD CONSTRAINT `prodotti_giacenze_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `prodotti_giacenze_ibfk_2` FOREIGN KEY (`id_deposito`) REFERENCES `depositi` (`id_deposito`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `prodotti_listini`
--
ALTER TABLE `prodotti_listini`
  ADD CONSTRAINT `prodotti_listini_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
