-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 30 mai 2023 à 14:06
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `saechalew`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `idadresse` int NOT NULL AUTO_INCREMENT,
  `numderue` varchar(10) DEFAULT NULL,
  `codepostal` varchar(10) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `nomderue` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idadresse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `biere`
--

DROP TABLE IF EXISTS `biere`;
CREATE TABLE IF NOT EXISTS `biere` (
  `id_biere` int NOT NULL AUTO_INCREMENT,
  `prix` int DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `pourcentage_alcool` decimal(3,1) DEFAULT NULL,
  `volumetrie` int DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `brasserie` varchar(25) DEFAULT NULL,
  `type_de_biere` varchar(50) DEFAULT NULL,
  `ingredient1` varchar(25) DEFAULT NULL,
  `ingredient2` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_biere`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `biere`
--

INSERT INTO `biere` (`id_biere`, `prix`, `nom`, `pourcentage_alcool`, `volumetrie`, `description`, `brasserie`, `type_de_biere`, `ingredient1`, `ingredient2`) VALUES
(1, 8, 'Pitché', '4.0', 75, 'Pitché est une bière explosif qui ne passe pas ina', 'France', 'blonde', 'piment', 'mangue'),
(2, 8, 'Fwisson', '4.0', 75, 'La bière parfaite  pour les personnes pétillantes ', 'France', 'blonde', 'fruit de la passion', 'noix de coco'),
(3, 8, 'Ké en mwen ', '4.0', 75, 'La bière parfaite pour toutes celles et ceux qui a', 'France', 'blonde', 'fraise', 'gingembre'),
(4, 8, 'Lanmè', '4.0', 75, 'Lanmè, sentir la douceur à travers l\'amertume. Un ', 'France', 'blonde', 'vanille', 'baie de magnolia'),
(5, 8, 'Chô Patate', '4.0', 75, 'Rafraichissez vous avec la bière Chô Patate, aroma', 'France', 'blonde', 'fraise', 'poivre'),
(6, 8, 'An Nou Ay', '4.0', 75, 'Rafraichissez vous avec notre bière An Nou Ay arom', 'Pointe-à-Pitre', 'blonde', 'goyave', 'clou de girofle');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `nclient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(125) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `idadresse` int NOT NULL,
  PRIMARY KEY (`nclient`),
  KEY `idadresse` (`idadresse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `ncommande` int NOT NULL AUTO_INCREMENT,
  `produits` varchar(50) DEFAULT NULL,
  `prix` int DEFAULT NULL,
  `idadresse` int NOT NULL,
  `idadresse_1` int NOT NULL,
  `nclient` int NOT NULL,
  PRIMARY KEY (`ncommande`),
  KEY `idadresse` (`idadresse`),
  KEY `idadresse_1` (`idadresse_1`),
  KEY `nclient` (`nclient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE IF NOT EXISTS `contient` (
  `ncommande` int NOT NULL,
  `id_biere` int NOT NULL,
  `quantite` int DEFAULT NULL,
  PRIMARY KEY (`ncommande`,`id_biere`),
  KEY `id_biere` (`id_biere`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
