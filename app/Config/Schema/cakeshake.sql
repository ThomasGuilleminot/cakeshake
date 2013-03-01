-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Ven 01 Mars 2013 à 09:24
-- Version du serveur: 5.5.16
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `cakeshake`
--

-- --------------------------------------------------------

--
-- Structure de la table `chats`
--

CREATE TABLE IF NOT EXISTS `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `message`, `created`) VALUES
(16, 6, 'Salut', '2013-02-27 10:46:00');

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL,
  `legende` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `pictures`
--

INSERT INTO `pictures` (`id`, `url`, `legende`, `user_id`) VALUES
(1, 'https://www.facebook.com/photo.php?fbid=3275334456106&set=o.129707217137362&type=1&theater', 'G SUI RISTERION', 1);

-- --------------------------------------------------------

--
-- Structure de la table `quizzes`
--

CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `quizzes`
--

INSERT INTO `quizzes` (`id`, `question`, `answer`) VALUES
(1, 'Combien font 2 + 2 ?', '4'),
(2, 'Les jambes de la soeur de Philippe sont-elles douces ?', 'Oh que oui !');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `birthdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `sex`, `birthdate`) VALUES
(5, 'toto', '87cdec35d3e9e2d725e73c1e2b8221c1b3ec4d71', 'toto@gmail.com', 'Homme', '2013-02-27 08:23:00'),
(6, 'gasp', '87cdec35d3e9e2d725e73c1e2b8221c1b3ec4d71', 'gasp@bern.com', 'Homme', '2013-02-27 10:45:00'),
(7, '', '73f2aeb28f2e2f340aef72e5ec5da67607552d1e', '', '', '2013-03-01 08:35:00'),
(8, '', '73f2aeb28f2e2f340aef72e5ec5da67607552d1e', '', '', '2013-03-01 08:35:00'),
(9, '', '73f2aeb28f2e2f340aef72e5ec5da67607552d1e', '', '', '2013-03-01 08:35:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
