-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/01/2025 às 21:38
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `star_wars`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `episode_id` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `characters` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `producer` text DEFAULT NULL,
  `director` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `films`
--

INSERT INTO `films` (`id`, `title`, `episode_id`, `release_date`, `description`, `characters`, `images`, `producer`, `director`) VALUES
(1, 'A New Hope', 4, '1977-05-25', 'It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire\'s\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire\'s\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....', 'Luke Skywalker, C-3PO, R2-D2, Darth Vader, Leia Organa, Owen Lars, Beru Whitesun lars, R5-D4, Biggs Darklighter, Obi-Wan Kenobi, Wilhuff Tarkin, Chewbacca, Han Solo, Greedo, Jabba Desilijic Tiure, Wedge Antilles, Jek Tono Porkins, Raymus Antilles', 'https://resizing.flixster.com/rIic1xQq9hyHMW6OJsCNOCVKRdw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzQ4Y2VkZjJhLWRmMGYtNDljZC1iN2JhLTYzMjk1YzMxNWMwOC53ZWJw', 'Gary Kurtz, Rick McCallum', 'George Lucas'),
(2, 'The Empire Strikes Back', 5, '1980-05-17', 'It is a dark time for the\r\nRebellion. Although the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....', 'Luke Skywalker, C-3PO, R2-D2, Darth Vader, Leia Organa, Obi-Wan Kenobi, Chewbacca, Han Solo, Wedge Antilles, Yoda, Palpatine, Boba Fett, IG-88, Bossk, Lando Calrissian, Lobot', 'https://m.media-amazon.com/images/M/MV5BMTkxNGFlNDktZmJkNC00MDdhLTg0MTEtZjZiYWI3MGE5NWIwXkEyXkFqcGc@._V1_.jpg', 'Gary Kurtz, Rick McCallum', 'Irvin Kershner'),
(3, 'Return of the Jedi', 6, '1983-05-25', 'Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...', 'Luke Skywalker, C-3PO, R2-D2, Darth Vader, Leia Organa, Obi-Wan Kenobi, Chewbacca, Han Solo, Jabba Desilijic Tiure, Wedge Antilles, Yoda, Palpatine, Boba Fett, Lando Calrissian, Ackbar, Mon Mothma, Arvel Crynyd, Wicket Systri Warrick, Nien Nunb, Bib Fortuna', 'https://m.media-amazon.com/images/M/MV5BNWEwOTI0MmUtMGNmNy00ODViLTlkZDQtZTg1YmQ3MDgyNTUzXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 'Howard G. Kazanjian, George Lucas, Rick McCallum', 'Richard Marquand'),
(4, 'The Phantom Menace', 1, '1999-05-19', 'Turmoil has engulfed the\r\nGalactic Republic. The taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....', 'C-3PO, R2-D2, Obi-Wan Kenobi, Anakin Skywalker, Jabba Desilijic Tiure, Yoda, Palpatine, Qui-Gon Jinn, Nute Gunray, Finis Valorum, Padmé Amidala, Jar Jar Binks, Roos Tarpals, Rugor Nass, Ric Olié, Watto, Sebulba, Quarsh Panaka, Shmi Skywalker, Darth Maul, Ayla Secura, Ratts Tyerel, Dud Bolt, Gasgano, Ben Quadinaros, Mace Windu, Ki-Adi-Mundi, Kit Fisto, Eeth Koth, Adi Gallia, Saesee Tiin, Yarael Poof, Plo Koon, Mas Amedda', 'https://m.media-amazon.com/images/M/MV5BODVhNGIxOGItYWNlMi00YTA0LWI3NTctZmQxZGUwZDEyZWI4XkEyXkFqcGc@._V1_.jpg', 'Rick McCallum', 'George Lucas'),
(5, 'Attack of the Clones', 2, '2002-05-16', 'There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....', 'C-3PO, R2-D2, Owen Lars, Beru Whitesun lars, Obi-Wan Kenobi, Anakin Skywalker, Yoda, Palpatine, Boba Fett, Nute Gunray, Padmé Amidala, Jar Jar Binks, Watto, Shmi Skywalker, Ayla Secura, Mace Windu, Ki-Adi-Mundi, Kit Fisto, Plo Koon, Mas Amedda, Gregar Typho, Cordé, Cliegg Lars, Poggle the Lesser, Luminara Unduli, Barriss Offee, Dormé, Dooku, Bail Prestor Organa, Jango Fett, Zam Wesell, Dexter Jettster, Lama Su, Taun We, Jocasta Nu, R4-P17, Wat Tambor, San Hill, Shaak Ti, Sly Moore', 'https://m.media-amazon.com/images/M/MV5BNTgxMjY2YzUtZmVmNC00YjAwLWJlODMtNDBhNzllNzIzMjgxXkEyXkFqcGc@._V1_.jpg', 'Rick McCallum', 'George Lucas'),
(6, 'Revenge of the Sith', 3, '2005-05-19', 'War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....', 'Luke Skywalker, C-3PO, R2-D2, Darth Vader, Leia Organa, Owen Lars, Beru Whitesun lars, Obi-Wan Kenobi, Anakin Skywalker, Wilhuff Tarkin, Chewbacca, Yoda, Palpatine, Nute Gunray, Padmé Amidala, Ayla Secura, Mace Windu, Ki-Adi-Mundi, Kit Fisto, Eeth Koth, Adi Gallia, Saesee Tiin, Plo Koon, Poggle the Lesser, Luminara Unduli, Dooku, Bail Prestor Organa, R4-P17, Shaak Ti, Grievous, Tarfful, Raymus Antilles, Sly Moore, Tion Medon', 'https://m.media-amazon.com/images/M/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_FMjpg_UX1000_.jpg', 'Rick McCallum', 'George Lucas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `request_type` varchar(50) DEFAULT NULL,
  `endpoint` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `response_time` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
