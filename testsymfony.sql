-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 19 sep. 2022 à 22:37
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `testsymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220919083259', '2022-09-19 08:33:48', 405),
('DoctrineMigrations\\Version20220919113516', '2022-09-19 11:35:49', 2480);

-- --------------------------------------------------------

--
-- Structure de la table `paire_impaire`
--

DROP TABLE IF EXISTS `paire_impaire`;
CREATE TABLE IF NOT EXISTS `paire_impaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entree` int(11) NOT NULL,
  `resultat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paire_impaire`
--

INSERT INTO `paire_impaire` (`id`, `entree`, `resultat`) VALUES
(1, 15, 'Pair'),
(2, 16, 'InPair');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'test@test.com', '', 'test'),
(3, 'test2@test.com', '[]', '$2y$13$18wrUDJ2sMnx1aZVn613ZOkUKhUsLX4hipbmuaByRgaGZwYzZFEjS'),
(4, 'test3@test.com', '[]', '$2y$13$4s/7fKkJVOBECr8i5heGGeUjCSn935FMb02VrO7yx7m0FB6Uh9euS'),
(5, 'test4@test.com', '[]', '$2y$13$Y9qN51acbo6skHQUBbCIFed404orzO1ihrZbzYBFDVDf/MXppjI2u'),
(6, 'lemjid@gmail.com', '[]', '$2y$13$Ctk6KPrXz2.H2mxVXU1mcODLOIEEfxfXBLZ/4tlx7/W3KcH1364Pe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
