-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 27 juil. 2021 à 07:23
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mcu`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `last_name`, `first_name`, `birthday`, `created`, `modified`) VALUES
(1, 'Downey', 'Robert Jr.', '1965-04-04', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(2, 'Paltrow', 'Gwyneth', '1972-09-27', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(3, 'Howard', 'Terrence', '1969-03-11', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(4, 'Bridges', 'Jeff', '1949-12-04', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(5, 'Norton', 'Edward', '1969-08-18', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(6, 'Rundgren', 'Liv', '1977-07-01', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(7, 'Roth', 'Tim', '1961-05-14', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(8, 'Hurt', 'William', '1950-03-20', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(9, 'Rourke', 'Mickey', '1952-09-16', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(10, 'Cheadle', 'Don', '1964-11-29', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(11, 'Johansson', 'Scarlett', '1984-11-22', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(12, 'Rockwell', 'Sam', '1968-11-05', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(13, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(14, 'Portman', 'Natalie', '1981-06-09', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(15, 'Hiddleston', 'Tom', '1981-02-09', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(16, 'Hopkins', 'Anthony', '1937-12-31', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(17, 'Evans', 'Chris', '1981-06-13', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(18, 'Atwell', 'Hayley', '1982-04-05', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(19, 'Weaving', 'Hugo', '1960-04-04', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(20, 'Stan', 'Sebastian', '1982-08-13', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(21, 'Lee Jones', 'Tommy', '1946-09-15', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(22, 'Ruffalo', 'Mark', '1967-11-22', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(23, 'Kingsley', 'Ben', '1943-12-31', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(24, 'Pearce', 'Guy', '1967-10-05', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(25, 'Elba', 'Idris', '1972-09-06', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(26, 'L. Jackson', 'Samuel', '1948-12-21', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(27, 'Redford', 'Robert', '1936-08-18', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(28, 'Pratt', 'Chris', '1979-06-21', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(29, 'Saldana', 'Zoe', '1978-06-19', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(30, 'Bautista', 'David', '1969-01-18', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(31, 'Diesel', 'Vin', '1967-07-18', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(32, 'Cooper', 'Bradley', '1975-01-05', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(33, 'Renner', 'Jeremy', '1971-01-07', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(34, 'Rudd', 'Paul', '1969-04-06', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(35, 'Lilly', 'Evangeline', '1979-08-03', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(36, 'Douglas', 'Michael', '1944-09-25', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(37, 'Stoll', 'Corey', '1976-03-14', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(38, 'Mackie', 'Anthony', '1978-09-23', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(39, 'Cumberbatch', 'Benedict', '1976-07-19', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(40, 'Ejiofor', 'Chiwetel', '1977-07-10', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(41, 'Swinton', 'Tilda', '1960-11-05', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(42, 'McAdams', 'Rachel', '1978-11-17', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(43, 'Wong', 'Benedict', '1971-06-03', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(44, 'Mikkelsen', 'Mads', '1965-11-22', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(45, 'Holland', 'Tom', '1996-06-01', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(46, 'Keaton', 'Michael', '1951-09-05', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(47, 'Tomei', 'Marisa', '1964-12-04', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(48, 'Coleman', 'Zendaya', '1996-09-01', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(49, 'Thompson', 'Tessa', '1983-10-03', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(50, 'Blanchett', 'Cate', '1969-05-14', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(51, 'Boseman', 'Chadwick', '1976-08-28', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(52, 'Nyong\'o', 'Lupita', '1983-03-01', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(53, 'Gurira', 'Danai', '1978-02-14', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(54, 'Freeman', 'Martin', '1971-09-08', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(55, 'B. Jordan', 'Michael', '1987-02-09', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(56, 'Brolin', 'Josh', '1968-02-12', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(57, 'Pfeiffer', 'Michelle', '1958-04-29', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(58, 'Fishburne', 'Laurence', '1961-07-30', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(59, 'Larson', 'Brie', '1989-10-01', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(60, 'Mendelsohn', 'Ben', '1969-04-03', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(61, 'Bening', 'Annette', '1958-05-29', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(62, 'Law', 'June', '1972-12-29', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(63, 'Batalon', 'Jacob', '1996-10-09', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(64, 'Gyllenhaal', 'Jake', '1980-12-19', '2021-07-26 18:12:45', '2021-07-26 18:12:45'),
(65, 'Pugh', 'Florence', '1996-01-03', '2021-07-26 22:42:30', '2021-07-26 22:42:30'),
(66, 'Harbour', 'David', '1975-04-10', '2021-07-26 22:42:57', '2021-07-26 22:42:57'),
(67, 'Weisz', 'Rachel', '1970-03-07', '2021-07-26 22:43:29', '2021-07-26 22:43:29'),
(68, 'Ray', 'Winstone', '1957-02-19', '2021-07-26 22:44:07', '2021-07-26 22:44:07');

-- --------------------------------------------------------

--
-- Structure de la table `actors_movies`
--

DROP TABLE IF EXISTS `actors_movies`;
CREATE TABLE IF NOT EXISTS `actors_movies` (
  `id_actors` int(11) NOT NULL,
  `id_movies` int(11) NOT NULL,
  KEY `id_actors` (`id_actors`),
  KEY `id_movies` (`id_movies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actors_movies`
--

INSERT INTO `actors_movies` (`id_actors`, `id_movies`) VALUES
(1, 18),
(3, 18),
(4, 18),
(2, 18),
(5, 19),
(6, 19),
(7, 19),
(8, 19),
(1, 20),
(2, 20),
(9, 20),
(10, 20),
(11, 20),
(12, 20),
(13, 21),
(14, 21),
(15, 21),
(16, 21),
(17, 22),
(18, 22),
(19, 22),
(20, 22),
(21, 22),
(1, 23),
(17, 23),
(22, 23),
(13, 23),
(11, 23),
(15, 23),
(1, 12),
(2, 12),
(10, 12),
(23, 12),
(24, 12),
(13, 13),
(14, 13),
(15, 13),
(16, 13),
(25, 13),
(17, 14),
(11, 14),
(20, 14),
(26, 14),
(27, 14),
(28, 15),
(29, 15),
(30, 15),
(31, 15),
(32, 15),
(22, 16),
(1, 16),
(17, 16),
(13, 16),
(11, 16),
(33, 16),
(34, 17),
(35, 17),
(36, 17),
(37, 17),
(17, 1),
(1, 1),
(11, 1),
(20, 1),
(38, 1),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(45, 4),
(46, 4),
(1, 4),
(47, 4),
(48, 4),
(45, 1),
(13, 5),
(22, 5),
(15, 5),
(49, 5),
(50, 5),
(25, 5),
(16, 5),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(1, 7),
(17, 7),
(22, 7),
(13, 7),
(11, 7),
(56, 7),
(45, 7),
(34, 8),
(35, 8),
(36, 8),
(57, 8),
(58, 8),
(59, 9),
(60, 9),
(61, 9),
(62, 9),
(26, 9),
(1, 10),
(13, 10),
(17, 10),
(11, 10),
(33, 10),
(22, 10),
(56, 10),
(45, 10),
(45, 11),
(26, 11),
(48, 11),
(63, 11),
(64, 11),
(65, 30),
(66, 30),
(67, 30),
(68, 30),
(11, 30);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `running_time` int(4) NOT NULL COMMENT 'en minutes',
  `release_date` year(4) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `director`, `running_time`, `release_date`, `created`, `modified`) VALUES
(1, 'Captain America: Civil War', 'Anthony & Joe Russo', 147, 2016, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(2, 'Doctor Strange', 'Scott Derrickson', 115, 2016, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(3, 'Les Guardiens de la Galaxie Vol.2', 'James Gunn', 137, 2017, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(4, 'Spider-Man: Homecoming', 'Jon Watts', 133, 2017, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(5, 'Thor: Ragnarok', 'Taika Waititi', 130, 2017, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(6, 'Black Panther', 'Ryan Coogler', 134, 2018, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(7, 'Avengers: Infinity War', 'Anthony & Joe Russo', 149, 2018, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(8, 'Ant-Man et la Guêpe', 'Peyton Reed', 118, 2018, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(9, 'Captain Marvel', 'Anna Boden', 124, 2019, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(10, 'Avengers: Endgame', 'Anthony & Joe Russo', 181, 2019, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(11, 'Spider-Man: Far From Home', 'Jon Watts', 129, 2019, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(12, 'Iron Man 3', 'Shane Black', 130, 2013, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(13, 'Thor: Le Monde des ténèbres', 'Alan Taylor', 112, 2013, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(14, 'Captain America: Le Soldat de l\'hiver', 'Anthony & Joe Russo', 136, 2014, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(15, 'Les Gardiens de la Galaxie', 'James Gunn', 121, 2014, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(16, 'Avengers: L\'Ère d\'Ultron', 'Joss Whedon', 142, 2015, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(17, 'Ant-Man', 'Peyton Reed', 117, 2015, '2021-07-26 15:06:34', '2021-07-26 15:06:34'),
(18, 'Iron Man', 'Jon Favreau', 126, 2008, '2021-07-26 21:56:27', '2021-07-26 21:56:27'),
(19, 'L\'Incroyable Hulk', 'Louis Leterrier', 112, 2008, '2021-07-26 21:56:27', '2021-07-26 21:56:27'),
(20, 'Iron Man 2', 'Jon Favreau', 125, 2010, '2021-07-26 21:56:27', '2021-07-26 21:56:27'),
(21, 'Thor', 'Kenneth Branagh', 114, 2011, '2021-07-26 21:56:27', '2021-07-26 21:56:27'),
(22, 'Captain America: First Avenger', 'Joe Johnston', 124, 2011, '2021-07-26 21:56:27', '2021-07-26 21:56:27'),
(23, 'Avengers', 'Joss Whedon', 143, 2012, '2021-07-26 21:56:27', '2021-07-26 21:56:27'),
(30, 'Black Widow', 'Cate Shortland', 133, 2021, '2021-07-26 22:39:59', '2021-07-26 22:39:59');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD CONSTRAINT `actors_movies_ibfk_1` FOREIGN KEY (`id_actors`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `actors_movies_ibfk_2` FOREIGN KEY (`id_movies`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
