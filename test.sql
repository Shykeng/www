-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 18 nov. 2019 à 00:10
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `confirmation_token` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `confirmed_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `confirmation_token`, `confirmed_at`) VALUES
(1, 'Aurelien', 'aurelien@aurelien.fr', '$2y$10$Tudc.7cUi9B1anYADS1ApuZcA/yXuKVzQFZRDEW/6RDb49K6JjuGS', NULL, '2019-11-18'),
(2, 'Antoine', 'antoine@antoine.fr', '$2y$10$laHMvXEc67U4E.kLkQ.ThuqcYOF7AqcSrrGZDE5uZib7WyaaeN6vW', NULL, '2019-11-18'),
(3, 'Rodrigue', 'rodrigue@rodrigue.fr', '$2y$10$mvcco2ndacCMJ6LQBfpmWeQ/wbkA9USc8RiBpO6ojr/q0YHEAnwHy', NULL, '2019-11-18'),
(4, 'Briac', 'briac@briac.fr', '$2y$10$aU/mTrkChcqisr2GeTwRB.uMNCpa.YzgLcJIKNZSwld6Trf0ZQs3i', NULL, '2019-11-18'),
(5, 'Pierre', 'pierre@pierre.fr', '$2y$10$LX4F.FHZ7prwpL79PYuF5uJ812HeYFso.MaGHEgMvjXAvIM3y8nM.', NULL, '2019-11-18'),
(6, 'Baptiste', 'baptiste@baptiste.fr', '$2y$10$qDwysUfCFnxlfnj3w3DTDOKuOMf/6Z4GhyHEU8GavheLZpbrBQmW6', NULL, '2019-11-18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
