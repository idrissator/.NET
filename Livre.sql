-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 14:55
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Livre`
--

-- --------------------------------------------------------

--
-- Structure de la table `adhérents`
--

CREATE TABLE IF NOT EXISTS `adhérents` (
  `Id_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_adhesion` date NOT NULL,
  `Adresse` varchar(40) NOT NULL,
  `Num_tel` varchar(40) NOT NULL,
  `mail` varchar(40) NOT NULL,
  PRIMARY KEY (`Id_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2147483647 ;

--
-- Contenu de la table `adhérents`
--

INSERT INTO `adhérents` (`Id_Adherent`, `Nom`, `prenom`, `date_naissance`, `date_adhesion`, `Adresse`, `Num_tel`, `mail`) VALUES
(45276897, 'SUKUNA', 'KURUKO', '1999-07-28', '2023-10-31', '11 rue du ninja de konoha', '08757863', 'Kuruu@gmail.com'),
(928342992, 'KAKACHI', 'MOMO', '2004-12-18', '2021-12-23', '10 rue d''anzo', '0892749372', 'SANGOKU@gmail.com'),
(2147483647, 'ICHIDA', 'KURUKO', '2005-12-24', '2023-12-21', '5 rue du ninja de konoha', '011123I843', 'Kururzu@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE IF NOT EXISTS `auteur` (
  `ID_Auteur` varchar(40) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`ID_Auteur`, `nom`, `prenom`, `date_naissance`) VALUES
('FULL', 'BUSTER', 'GREY', '2000-12-19'),
('KILLER', 'B', 'KILLER', '1990-10-13'),
('MONSHISHI', 'SENPAI', 'GOJO', '1999-07-28');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `Id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `Date_emprunt` date NOT NULL,
  `Duree` int(11) NOT NULL,
  `#Id_Adherents` int(11) NOT NULL,
  `#Reference_livre` varchar(40) NOT NULL,
  PRIMARY KEY (`Id_emprunt`),
  KEY `#Id_Adherents` (`#Id_Adherents`,`#Reference_livre`),
  KEY `#Reference_livre` (`#Reference_livre`),
  KEY `Id_emprunt` (`Id_emprunt`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=384252460 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`Id_emprunt`, `Date_emprunt`, `Duree`, `#Id_Adherents`, `#Reference_livre`) VALUES
(8457779, '2027-08-22', 30, 0, ''),
(43587567, '2023-12-30', 30, 0, ''),
(384252457, '2024-04-17', 20, 0, ''),
(384252458, '0000-00-00', 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `Reference_livre` varchar(40) NOT NULL,
  `Nbre_pages` int(11) NOT NULL,
  `#_ID_Auteur` varchar(40) NOT NULL,
  `Date_publication` int(11) NOT NULL,
  `Genre` varchar(40) NOT NULL,
  `Disponible` tinyint(1) NOT NULL,
  `Nbre_emprunts` int(11) NOT NULL,
  `Etat` varchar(40) NOT NULL,
  `Nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`Reference_livre`),
  KEY `#_ID_Auteur` (`#_ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`Reference_livre`, `Nbre_pages`, `#_ID_Auteur`, `Date_publication`, `Genre`, `Disponible`, `Nbre_emprunts`, `Etat`, `Nbre_exemplaire`) VALUES
('', 0, '', 0, '', 0, 0, '', 0),
('3EF98380IHIOZEI', 219, 'SASUKE', 2003, 'MANGA', 0, 97, 'Neuf', 10),
('NQSDOHZ8IEH29', 217, 'NARUTO', 2002, 'MANGA', 0, 77, 'Neuf', 5),
('NQSDOHZ8IEH30', 217, 'SAKURA', 2002, 'MANGA', 0, 103, 'Neuf', 14);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`#Reference_livre`) REFERENCES `livres` (`Reference_livre`) ON DELETE CASCADE ON UPDATE CASCADE;
