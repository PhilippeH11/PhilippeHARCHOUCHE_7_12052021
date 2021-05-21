-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 17 mai 2021 à 09:21
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `database_development_p7`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `content` text NOT NULL,
  `userId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postId` (`postId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `postId`, `content`, `userId`, `username`, `avatar`, `createdAt`, `updatedAt`) VALUES
(3, 5, 'C\'est joli Strasbourg !', 4, 'Jean_Compta', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg', '2021-05-17 08:39:46', '2021-05-17 08:39:46'),
(4, 5, 'Joli !', 6, 'Philou', 'http://localhost:3000/images/avatar_homme.png1621241186609.png', '2021-05-17 08:48:03', '2021-05-17 08:48:03'),
(5, 10, 'Salut Stéphanie !', 4, 'Jean_Compta', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg', '2021-05-17 09:15:15', '2021-05-17 09:15:15'),
(6, 10, 'Hello !', 6, 'Philou', 'http://localhost:3000/images/avatar_homme.png1621241186609.png', '2021-05-17 09:15:34', '2021-05-17 09:15:34'),
(7, 10, 'Bienvenue Stéphanie', 5, 'Romain', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg1621240683090.jpg', '2021-05-17 09:16:03', '2021-05-17 09:16:03');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postId` (`postId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `postId`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 2, 2, '2021-05-11 10:08:36', '2021-05-11 10:08:36'),
(4, 4, 4, '2021-05-14 08:28:52', '2021-05-14 08:28:52'),
(6, 5, 4, '2021-05-17 08:39:30', '2021-05-17 08:39:30'),
(8, 5, 6, '2021-05-17 08:47:53', '2021-05-17 08:47:53'),
(9, 4, 6, '2021-05-17 08:48:15', '2021-05-17 08:48:15'),
(10, 2, 6, '2021-05-17 08:48:34', '2021-05-17 08:48:34'),
(11, 7, 7, '2021-05-17 09:09:52', '2021-05-17 09:09:52'),
(12, 5, 7, '2021-05-17 09:09:56', '2021-05-17 09:09:56'),
(13, 4, 7, '2021-05-17 09:10:02', '2021-05-17 09:10:02'),
(14, 10, 7, '2021-05-17 09:14:50', '2021-05-17 09:14:50'),
(15, 10, 6, '2021-05-17 09:15:37', '2021-05-17 09:15:37'),
(16, 10, 5, '2021-05-17 09:16:14', '2021-05-17 09:16:14'),
(17, 11, 5, '2021-05-17 09:21:25', '2021-05-17 09:21:25');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `likes` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `userId`, `content`, `image`, `likes`, `username`, `avatar`, `createdAt`, `updatedAt`) VALUES
(2, 2, 'Bonjour Phil c\'est Stéphanie la modératrice du réseau je teste la modification de post.', 'http://localhost:3000/images/hw.gif1620727710766.gif', 3, 'Phil', 'http://localhost:3000/images/avatar_homme.png1620727632453.png', '2021-05-11 10:08:30', '2021-05-17 08:48:34'),
(4, 4, 'Bonjour c\'est Jean de  la compta !', 'http://localhost:3000/images/HAWAII-768x432.jpg1620980927906.jpg', 3, 'Jean_Compta', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg', '2021-05-14 08:28:48', '2021-05-17 09:10:02'),
(5, 5, 'Bonjour c\'est Romain ', 'http://localhost:3000/images/Strasbourg_vue_aérienne_vers_la_cathédrale_septembre_2015.jpg1621240726331.jpg', 4, 'Romain', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg1621240683090.jpg', '2021-05-17 08:38:46', '2021-05-17 09:09:56'),
(7, 6, 'Bonjour c\'est Philou !', 'http://localhost:3000/images/HAWAII-768x432.jpg1621241264864.jpg', 1, 'Philou', 'http://localhost:3000/images/avatar_homme.png1621241186609.png', '2021-05-17 08:47:44', '2021-05-17 09:09:52'),
(10, 7, 'Bonjour c\'est Stéphanie !', 'http://localhost:3000/images/hello.gif1621242881853.gif', 3, 'Stephanie_RH', 'http://localhost:3000/images/avatarfemm.png1621242242129.png', '2021-05-17 09:14:41', '2021-05-17 09:16:13'),
(11, 5, 'Bon Lundi  et bon début de semaine !', 'http://localhost:3000/images/bugz.gif1621243276786.gif', 1, 'Romain', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg1621240683090.jpg', '2021-05-17 09:21:17', '2021-05-17 09:21:25');

-- --------------------------------------------------------

--
-- Structure de la table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20201216153145-create-user.js'),
('20201216153441-create-post.js'),
('20210104133959-create-like.js'),
('20210202151804-create-comment.js');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `description`, `avatar`, `isAdmin`, `createdAt`, `updatedAt`) VALUES
(2, 'phil@phil.com', 'Phil', '$2b$10$a1GVHBjYDvFHgG7UNf8BXueXssvHl90avsYTn1nuvtAUfzrhWSe7q', 'hello world !', 'http://localhost:3000/images/avatar_homme.png1620727632453.png', 0, '2021-05-11 10:07:12', '2021-05-11 10:07:12'),
(4, 'comptabilite@groupomania.fr', 'Jean_Compta', '$2b$10$xOP0NyHSaw1iV/h/F0Q4T.F/wwcD5bfKtF5fVIHj85wvq4hafBAT.', 'Jean du service comptabilité', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg', 0, '2021-05-14 08:27:41', '2021-05-14 08:27:41'),
(5, 'romain@groupomania.fr', 'Romain', '$2b$10$l3AVV12BPHd41KK72HQJdOW9qeQ5TYbI7GHFj5PcwhPYUc9c2zVES', 'Romain de strasbourg', 'http://localhost:3000/images/base-avatar-male.jpg1620980861035.jpg1621240683090.jpg', 0, '2021-05-17 08:38:08', '2021-05-17 08:38:08'),
(6, 'philou@groupomania.fr', 'Philou', '$2b$10$iTzoS2xmAYp4XmIcHCLIiOIFP7B3OLYPpPpdVhK/wt56Glim/u0QC', 'Phil du sud', 'http://localhost:3000/images/avatar_homme.png1621241186609.png', 0, '2021-05-17 08:46:26', '2021-05-17 08:49:12'),
(7, 'stephanie@groupomania.fr', 'Stephanie_RH', '$2b$10$NhuKU/lufqFexvOtlNjHPeDDT5iRWsAjnMonOeLADKej4UhH0JqUG', 'Modératrice du réseau social', 'http://localhost:3000/images/avatarfemm.png1621242242129.png', 1, '2021-05-17 09:04:02', '2021-05-17 09:04:02');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
