-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 05 Mars 2018 à 16:47
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `glpi`
--

-- --------------------------------------------------------

--
-- Structure de la table `machines`
--

CREATE TABLE IF NOT EXISTS `machines` (
  `id_machine` int(11) NOT NULL AUTO_INCREMENT,
  `ip_machine` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_machine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `libelle_machine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_name_machine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_salle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_machine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom_utilisateur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_utilisateur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mot_de_passe` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `rue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrateur` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateur`, `pseudo`, `prenom_utilisateur`, `nom_utilisateur`, `mot_de_passe`, `adresse_email`, `code_postal`, `rue`, `pays`, `administrateur`) VALUES
(6, 'membre', 'membre', 'membre', '0285676daf56797679e6e743a0b5263d7400aae1', 'membre@membre.fr', 66000, '5 Rue du membre', 'France', 0),
(4, 'j.michel', 'jean', 'michel', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'jean.michel@gmail.com', 66000, '5 Rue de la Joie', 'France', 0),
(7, 'admin', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.fr', 66000, '5 Rue de l''admin', 'France', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
