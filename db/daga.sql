-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 30, 2024 alle 21:39
-- Versione del server: 5.7.17
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daga`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `card`
--

CREATE TABLE `card` (
  `numero` varchar(16) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `data_scadenza` text,
  `cvc` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `card`
--

INSERT INTO `card` (`numero`, `user_id`, `data_scadenza`, `cvc`) VALUES
('1234567890123454', 'danny', '2024-09', '123'),
('1234567890123456', 'admin', '2025-06', '333');

-- --------------------------------------------------------

--
-- Struttura della tabella `carrello`
--

CREATE TABLE `carrello` (
  `id_prod` int(11) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `q` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `carrello`
--

INSERT INTO `carrello` (`id_prod`, `id_user`, `q`) VALUES
(36, 'alessio', 1),
(15, 'manu', 1),
(11, 'manu', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `img_prodotti`
--

CREATE TABLE `img_prodotti` (
  `id_img` int(11) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `img_prodotti`
--

INSERT INTO `img_prodotti` (`id_img`, `img`, `id_prod`) VALUES
(1, 'Donna/Anelli/ane001stD/c1416489-master.webp', 1),
(2, 'Donna/Anelli/ane001stD/c1416489-model.webp', 1),
(3, 'Donna/Anelli/ane001stD/c1416489-model2.webp', 1),
(4, 'Donna/Anelli/ane001stD/c1416489-view.webp', 1),
(5, 'Donna/Anelli/ane001stD/c1416489-view2.webp', 1),
(6, 'Donna/Anelli/ane001stD/c1416489-view3.webp', 1),
(7, 'Donna/Anelli/ane002stD/c1425705-master.jpg', 2),
(8, 'Donna/Anelli/ane002stD/c1425790-master.webp', 2),
(9, 'Donna/Anelli/ane002stD/c1425790-model.webp', 2),
(10, 'Donna/Anelli/ane002stD/c1425790-model2.jpg', 2),
(11, 'Donna/Anelli/ane002stD/c1425790-view.webp', 2),
(12, 'Donna/Anelli/ane002stD/c1425790-view2.webp', 2),
(13, 'Donna/Anelli/ane002stD/c1425790-view3.webp', 2),
(14, 'Donna/Anelli/ane003stD/c1425705-model.jpg', 3),
(15, 'Donna/Anelli/ane003stD/c1425705-model2.webp', 3),
(16, 'Donna/Anelli/ane003stD/c1425705-view.jpg', 3),
(17, 'Donna/Anelli/ane003stD/c1425705-view2.jpg', 3),
(18, 'Donna/Anelli/ane003stD/c1425705-view3.webp', 3),
(19, 'Donna/Anelli/ane004stD/c1412618-master.webp', 4),
(20, 'Donna/Anelli/ane004stD/c1412618-model.webp', 4),
(21, 'Donna/Anelli/ane004stD/c1412618-model2.webp', 4),
(22, 'Donna/Anelli/ane004stD/c1412618-view.webp', 4),
(23, 'Donna/Anelli/ane004stD/c1412618-view2.webp', 4),
(24, 'Donna/Anelli/ane004stD/c1412618-view3.webp', 4),
(25, 'Donna/Anelli/ane004stD/c1412618-view4.webp', 4),
(26, 'Donna/Anelli/ane005stD/c1425535-master.webp', 5),
(27, 'Donna/Anelli/ane005stD/c1425535-model.webp', 5),
(28, 'Donna/Anelli/ane005stD/c1425535-model2.webp', 5),
(29, 'Donna/Anelli/ane005stD/c1425535-view.webp', 5),
(30, 'Donna/Anelli/ane005stD/c1425535-view2.webp', 5),
(31, 'Donna/Anelli/ane005stD/c1425535-view3.webp', 5),
(32, 'Donna/Anelli/ane006stD/c1431367-master.webp', 6),
(33, 'Donna/Anelli/ane006stD/c1431367-model.jpg', 6),
(34, 'Donna/Anelli/ane006stD/c1431367-model2.jpg', 6),
(35, 'Donna/Anelli/ane006stD/c1431367-view.jpg', 6),
(36, 'Donna/Anelli/ane006stD/c1431367-view2.jpg', 6),
(37, 'Donna/Anelli/ane006stD/c1431367-view4.webp', 6),
(38, 'Donna/Anelli/ane007stD/c1425654-master.webp', 7),
(39, 'Donna/Anelli/ane007stD/c1425654-model.webp', 7),
(40, 'Donna/Anelli/ane007stD/c1425654-model2.webp', 7),
(41, 'Donna/Anelli/ane007stD/c1425654-view.webp', 7),
(42, 'Donna/Anelli/ane007stD/c1425654-view2.webp', 7),
(43, 'Donna/Anelli/ane007stD/c1425654-view3.webp', 7),
(44, 'Donna/Anelli/ane008stD/c1429570-master.jpg', 8),
(45, 'Donna/Anelli/ane008stD/c1429570-view.webp', 8),
(46, 'Donna/Anelli/ane008stD/c1429570-view2.webp', 8),
(47, 'Donna/Anelli/ane008stD/c1429570-view4.webp', 8),
(48, 'Donna/Anelli/ane009stD/c1432269-master.jpg', 9),
(49, 'Donna/Anelli/ane009stD/c1432269-model.webp', 9),
(50, 'Donna/Anelli/ane009stD/c1432269-model2.jpg', 9),
(51, 'Donna/Anelli/ane009stD/c1432269-view.jpg', 9),
(52, 'Donna/Anelli/ane009stD/c1432269-view2.webp', 9),
(53, 'Donna/Anelli/ane009stD/c1432269-view4.jpg', 9),
(54, 'Donna/Anelli/ane010stD/c1432156-master.jpg', 10),
(55, 'Donna/Anelli/ane010stD/c1432156-view.webp', 10),
(56, 'Donna/Anelli/ane010stD/c1432156-view2.webp', 10),
(57, 'Donna/Bracciali/bra001stD/c1419007-master.webp', 11),
(58, 'Donna/Bracciali/bra001stD/c1419007-view.webp', 11),
(59, 'Donna/Bracciali/bra001stD/c1419007-view2.webp', 11),
(60, 'Donna/Bracciali/bra002stD/913008415.webp', 12),
(61, 'Donna/Bracciali/bra002stD/c1419008-master.webp', 12),
(62, 'Donna/Bracciali/bra002stD/c1419008-model.webp', 12),
(63, 'Donna/Bracciali/bra002stD/c1419008-model2.webp', 12),
(64, 'Donna/Bracciali/bra002stD/c1419008-view.webp', 12),
(65, 'Donna/Bracciali/bra002stD/c1419008-view2.webp', 12),
(66, 'Donna/Bracciali/bra003stD/c1411629-master.webp', 13),
(67, 'Donna/Bracciali/bra003stD/c1411629-model.webp', 13),
(68, 'Donna/Bracciali/bra003stD/c1411629-model2.webp', 13),
(69, 'Donna/Bracciali/bra003stD/c1411629-view.webp', 13),
(70, 'Donna/Bracciali/bra003stD/c1411629-view2.webp', 13),
(71, 'Donna/Bracciali/bra003stD/c1411629-view4.webp', 13),
(72, 'Donna/Bracciali/bra004stD/657782850.webp', 14),
(73, 'Donna/Bracciali/bra004stD/c1413484-master.webp', 14),
(74, 'Donna/Bracciali/bra004stD/c1413484-model.webp', 14),
(75, 'Donna/Bracciali/bra004stD/c1413484-model2.webp', 14),
(76, 'Donna/Bracciali/bra004stD/c1413484-view.webp', 14),
(77, 'Donna/Bracciali/bra004stD/c1413484-view2.webp', 14),
(78, 'Donna/Bracciali/bra004stD/c1413484-view3.webp', 14),
(79, 'Donna/Bracciali/bra004stD/c1413484-view4.webp', 14),
(80, 'Donna/Bracciali/bra004stD/c1413484-view5.webp', 14),
(81, 'Donna/Bracciali/bra005stD/c1411613-master.webp', 15),
(82, 'Donna/Bracciali/bra005stD/c1411613-model.webp', 15),
(83, 'Donna/Bracciali/bra005stD/c1411613-model2.jpg', 15),
(84, 'Donna/Bracciali/bra005stD/c1411613-view.webp', 15),
(85, 'Donna/Bracciali/bra005stD/c1411613-view2.webp', 15),
(86, 'Donna/Bracciali/bra005stD/c1411613-view4.webp', 15),
(87, 'Donna/Bracciali/bra005stD/c1411613-view5.webp', 15),
(88, 'Donna/Bracciali/bra006stD/c1421485-master.webp', 16),
(89, 'Donna/Bracciali/bra006stD/c1421485-model.webp', 16),
(90, 'Donna/Bracciali/bra006stD/c1421485-model2.webp', 16),
(91, 'Donna/Bracciali/bra006stD/c1421485-view.webp', 16),
(92, 'Donna/Bracciali/bra006stD/c1421485-view2.webp', 16),
(93, 'Donna/Bracciali/bra006stD/c1421485-view3.webp', 16),
(94, 'Donna/Bracciali/bra006stD/c1421485-view4.webp', 16),
(95, 'Donna/Bracciali/bra006stD/c1421485-view5.webp', 16),
(96, 'Donna/Bracciali/bra007stD/c1429690-master.webp', 17),
(97, 'Donna/Bracciali/bra007stD/c1429690-model.jpg', 17),
(98, 'Donna/Bracciali/bra007stD/c1429690-model2.webp', 17),
(99, 'Donna/Bracciali/bra007stD/c1429690-view.webp', 17),
(100, 'Donna/Bracciali/bra008stD/c1417348-master.webp', 18),
(101, 'Donna/Bracciali/bra008stD/c1417348-model.webp', 18),
(102, 'Donna/Bracciali/bra008stD/c1417348-view.webp', 18),
(103, 'Donna/Bracciali/bra008stD/c1417348-view2.webp', 18),
(104, 'Donna/Bracciali/bra009stD/c1686820-master.webp', 19),
(105, 'Donna/Bracciali/bra009stD/c1686820-view.webp', 19),
(106, 'Donna/Bracciali/bra010stD/c1417346-master.webp', 20),
(107, 'Donna/Bracciali/bra010stD/c1417346-model.webp', 20),
(108, 'Donna/Bracciali/bra010stD/c1417346-view.webp', 20),
(109, 'Donna/Bracciali/bra010stD/c1417346-view2.webp', 20),
(110, 'Donna/Bracciali/bra011stD/915149979.webp', 21),
(111, 'Donna/Bracciali/bra011stD/c1412975-master.webp', 21),
(112, 'Donna/Bracciali/bra011stD/c1412975-view.webp', 21),
(113, 'Donna/Bracciali/bra011stD/c1412975-view2.webp', 21),
(114, 'Donna/Bracciali/bra011stD/c1412975-view4.jpg', 21),
(115, 'Donna/Bracciali/bra011stD/c1412975-view5.webp', 21),
(116, 'Donna/Bracciali/bra012stD/c1627059-master.webp', 22),
(117, 'Donna/Bracciali/bra012stD/c1627059-model.webp', 22),
(118, 'Donna/Bracciali/bra012stD/c1627059-view.webp', 22),
(119, 'Donna/Bracciali/bra012stD/c1627059-view2.webp', 22),
(120, 'Donna/Collane/col001stD/c1620807-master.webp', 23),
(121, 'Donna/Collane/col001stD/c1620807-model.webp', 23),
(122, 'Donna/Collane/col001stD/c1620807-view.webp', 23),
(123, 'Donna/Collane/col001stD/c1620807-view2.webp', 23),
(124, 'Donna/Collane/col002stD/c1413173-master.webp', 24),
(125, 'Donna/Collane/col002stD/c1413173-model.webp', 24),
(126, 'Donna/Collane/col002stD/c1413173-model2.webp', 24),
(127, 'Donna/Collane/col002stD/c1413173-view.webp', 24),
(128, 'Donna/Collane/col002stD/c1413173-view2.webp', 24),
(129, 'Donna/Collane/col002stD/c1413173-view3.webp', 24),
(130, 'Donna/Collane/col002stD/c1413173-view4.webp', 24),
(131, 'Donna/Collane/col003stD/c1413485-master.webp', 25),
(132, 'Donna/Collane/col003stD/c1413485-model.webp', 25),
(133, 'Donna/Collane/col003stD/c1413485-view.webp', 25),
(134, 'Donna/Collane/col003stD/c1413485-view2.webp', 25),
(135, 'Donna/Collane/col004stD/840059060.jpg', 26),
(136, 'Donna/Collane/col004stD/c1416273-master.webp', 26),
(137, 'Donna/Collane/col004stD/c1416273-model.jpg', 26),
(138, 'Donna/Collane/col004stD/c1416273-model2.webp', 26),
(139, 'Donna/Collane/col004stD/c1416273-view.jpg', 26),
(140, 'Donna/Collane/col004stD/c1416273-view2.jpg', 26),
(141, 'Donna/Collane/col005stD/c1625499-master.webp', 27),
(142, 'Donna/Collane/col005stD/c1625499-model.webp', 27),
(143, 'Donna/Collane/col005stD/c1625499-view.webp', 27),
(144, 'Donna/Collane/col006stD/c1259805-master.webp', 28),
(145, 'Donna/Collane/col006stD/c1259805-view.webp', 28),
(146, 'Donna/Collane/col006stD/c1259805-view2.webp', 28),
(147, 'Donna/Collane/col006stD/c1259805-view3.webp', 28),
(148, 'Donna/Collane/col007stD/c1616331-master.webp', 29),
(149, 'Donna/Collane/col007stD/c1616331-model.webp', 29),
(150, 'Donna/Collane/col007stD/c1616331-view.jpg', 29),
(151, 'Donna/Collane/col007stD/c1616331-view2.webp', 29),
(152, 'Donna/Collane/col008stD/c1670208-master.webp', 30),
(153, 'Donna/Collane/col008stD/c1670208-model.jpg', 30),
(154, 'Donna/Collane/col008stD/c1670208-model2.webp', 30),
(155, 'Donna/Collane/col008stD/c1670208-view.webp', 30),
(156, 'Donna/Collane/col008stD/c1670208-view2.webp', 30),
(157, 'Donna/Collane/col008stD/c1670208-view3.webp', 30),
(158, 'Donna/Collane/col009stD/c1339453-master.webp', 31),
(159, 'Donna/Collane/col009stD/c1339453-model.webp', 31),
(160, 'Donna/Collane/col009stD/c1339453-view.webp', 31),
(161, 'Donna/Collane/col009stD/c1339453-view2.webp', 31),
(162, 'Donna/Collane/col010stD/c1686829-master.jpg', 32),
(163, 'Donna/Collane/col010stD/c1686829-view.jpg', 32),
(164, 'Donna/Collane/col010stD/c1686829-view2.jpg', 32),
(165, 'Donna/Orecchini/ore001stD/c1427021-master.webp', 33),
(166, 'Donna/Orecchini/ore001stD/c1427021-model.jpg', 33),
(167, 'Donna/Orecchini/ore001stD/c1427021-view.webp', 33),
(168, 'Donna/Orecchini/ore001stD/c1427021-view2.webp', 33),
(169, 'Donna/Orecchini/ore001stD/c1427021-view3.webp', 33),
(170, 'Donna/Orecchini/ore001stD/c1427021-view4.webp', 33),
(171, 'Donna/Orecchini/ore002stD/c1415899-view.webp', 34),
(172, 'Donna/Orecchini/ore002stD/c1415899-view2.webp', 34),
(173, 'Donna/Orecchini/ore002stD/c1415899-view4.webp', 34),
(174, 'Donna/Orecchini/ore003stD/c1428541-master.webp', 35),
(175, 'Donna/Orecchini/ore003stD/c1428541-model.webp', 35),
(176, 'Donna/Orecchini/ore003stD/c1428541-model2.webp', 35),
(177, 'Donna/Orecchini/ore003stD/c1428541-view.webp', 35),
(178, 'Donna/Orecchini/ore003stD/c1428541-view2.webp', 35),
(179, 'Donna/Orecchini/ore004stD/c1401095-master.webp', 36),
(180, 'Donna/Orecchini/ore004stD/c1401095-model.webp', 36),
(181, 'Donna/Orecchini/ore004stD/c1401095-model2.webp', 36),
(182, 'Donna/Orecchini/ore004stD/c1401095-view.webp', 36),
(183, 'Donna/Orecchini/ore004stD/c1401095-view5.webp', 36),
(184, 'Donna/Orecchini/ore005stD/c1417111-master.webp', 37),
(185, 'Donna/Orecchini/ore005stD/c1417111-model.webp', 37),
(186, 'Donna/Orecchini/ore005stD/c1417111-model2.webp', 37),
(187, 'Donna/Orecchini/ore005stD/c1417111-view.webp', 37),
(188, 'Donna/Orecchini/ore005stD/c1417111-view4.webp', 37),
(189, 'Donna/Orecchini/ore005stD/c1417111-view5.webp', 37),
(190, 'Donna/Orecchini/ore006stD/c1400924-master.webp', 38),
(191, 'Donna/Orecchini/ore006stD/c1400924-model.webp', 38),
(192, 'Donna/Orecchini/ore006stD/c1400924-view.webp', 38),
(193, 'Donna/Orecchini/ore006stD/c1400924-view2.webp', 38),
(194, 'Donna/Orecchini/ore007stD/c1672067-master.webp', 39),
(195, 'Donna/Orecchini/ore007stD/c1672067-view.webp', 39),
(196, 'Donna/Orecchini/ore007stD/c1672067-view2.webp', 39),
(197, 'Donna/Orecchini/ore007stD/c1672067-view3.webp', 39),
(198, 'Donna/Orecchini/ore008stD/c1401665-master.webp', 40),
(199, 'Donna/Orecchini/ore008stD/c1401665-model.webp', 40),
(200, 'Donna/Orecchini/ore008stD/c1401665-model2.webp', 40),
(201, 'Donna/Orecchini/ore008stD/c1401665-view.webp', 40),
(202, 'Donna/Orecchini/ore008stD/c1401665-view4.webp', 40),
(203, 'Donna/Orecchini/ore008stD/c1401665-view5.webp', 40),
(204, 'Donna/Orecchini/ore009stD/c1424441-master.webp', 41),
(205, 'Donna/Orecchini/ore009stD/c1424441-model.webp', 41),
(206, 'Donna/Orecchini/ore009stD/c1424441-view.webp', 41),
(207, 'Donna/Orecchini/ore010stD/c1413493-master.webp', 42),
(208, 'Donna/Orecchini/ore010stD/c1413493-model.webp', 42),
(209, 'Donna/Orecchini/ore010stD/c1413493-view.webp', 42),
(210, 'Donna/Orecchini/ore010stD/c1413493-view2.webp', 42),
(211, 'Donna/Orologi/oro001stD/c1692487-master.webp', 43),
(212, 'Donna/Orologi/oro001stD/c1692487-view.webp', 43),
(213, 'Donna/Orologi/oro001stD/c1692487-view2.jpg', 43),
(214, 'Donna/Orologi/oro001stD/c1692487-view3.jpg', 43),
(215, 'Donna/Orologi/oro001stD/c1692487-view4.webp', 43),
(216, 'Donna/Orologi/oro002stD/c1690366-master.webp', 44),
(217, 'Donna/Orologi/oro003stD/c1610457-master.webp', 45),
(218, 'Donna/Orologi/oro003stD/c1610457-view.webp', 45),
(219, 'Donna/Orologi/oro003stD/c1610457-view2.webp', 45),
(220, 'Donna/Orologi/oro003stD/c1610457-view3.webp', 45),
(221, 'Donna/Orologi/oro003stD/c1610457-view4.webp', 45),
(222, 'Donna/Orologi/oro003stD/c1610457-view5.webp', 45),
(223, 'Donna/Orologi/oro004stD/c1671857-master.webp', 46),
(224, 'Donna/Orologi/oro005stD/c1656664-master.webp', 47),
(225, 'Donna/Orologi/oro006stD/c1687033-master.webp', 48),
(226, 'Donna/Orologi/oro007stD/c1664618-master.webp', 49),
(227, 'Donna/Orologi/oro007stD/c1664618-view.webp', 49),
(228, 'Donna/Orologi/oro007stD/c1664618-view2.webp', 49),
(229, 'Donna/Orologi/oro007stD/c1664618-view3.webp', 49),
(230, 'Donna/Orologi/oro007stD/c1664618-view4.webp', 49),
(231, 'Donna/Orologi/oro007stD/c1664618-view5.webp', 49),
(232, 'Donna/Orologi/oro008stD/c1671058-master.webp', 50),
(233, 'Donna/Orologi/oro008stD/c1671058-model.webp', 50),
(234, 'Donna/Orologi/oro008stD/c1671058-view.webp', 50),
(235, 'Donna/Orologi/oro008stD/c1671058-view3.webp', 50),
(236, 'Donna/Orologi/oro009stD/c1691081-master.webp', 51),
(237, 'Donna/Orologi/oro009stD/c1691081-view.webp', 51),
(238, 'Donna/Orologi/oro009stD/c1691081-view2.webp', 51),
(239, 'Donna/Orologi/oro010stD/c1691522-master.webp', 52),
(240, 'Donna/Orologi/oro010stD/c1691522-view.webp', 52),
(241, 'Donna/Orologi/oro010stD/c1691522-view2.webp', 52),
(242, 'Donna/Orologi/oro010stD/c1691522-view4.webp', 52),
(243, 'Donna/Orologi/oro010stD/c1691522-view5.jpg', 52),
(244, 'Uomo/Anelli/ane001stU/c1656203-master.webp', 53),
(245, 'Uomo/Anelli/ane001stU/c1656203-model.jpg', 53),
(246, 'Uomo/Anelli/ane001stU/c1656203-model2.jpg', 53),
(247, 'Uomo/Anelli/ane001stU/c1656203-view2.webp', 53),
(248, 'Uomo/Anelli/ane001stU/c1656203-view4.webp', 53),
(249, 'Uomo/Anelli/ane002stU/899550854.webp', 54),
(250, 'Uomo/Anelli/ane002stU/c1666485-master.webp', 54),
(251, 'Uomo/Anelli/ane002stU/c1666485-model.jpg', 54),
(252, 'Uomo/Anelli/ane002stU/c1666485-model2.webp', 54),
(253, 'Uomo/Anelli/ane002stU/c1666485-view.webp', 54),
(254, 'Uomo/Anelli/ane002stU/c1666485-view2.webp', 54),
(255, 'Uomo/Anelli/ane002stU/c1666485-view4.webp', 54),
(256, 'Uomo/Anelli/ane003stU/c1421796-master.webp', 55),
(257, 'Uomo/Anelli/ane003stU/c1421796-model.webp', 55),
(258, 'Uomo/Anelli/ane003stU/c1421796-view.webp', 55),
(259, 'Uomo/Anelli/ane003stU/c1421796-view2.webp', 55),
(260, 'Uomo/Anelli/ane004stU/c1659968-master.webp', 56),
(261, 'Uomo/Anelli/ane004stU/c1659968-view2.webp', 56),
(262, 'Uomo/Anelli/ane004stU/c1659968-view3.webp', 56),
(263, 'Uomo/Anelli/ane004stU/c1659968-view4.webp', 56),
(264, 'Uomo/Anelli/ane005stU/866343918.webp', 57),
(265, 'Uomo/Anelli/ane005stU/c1688086-master.webp', 57),
(266, 'Uomo/Anelli/ane005stU/c1688086-view.webp', 57),
(267, 'Uomo/Anelli/ane005stU/c1688086-view2.webp', 57),
(268, 'Uomo/Anelli/ane005stU/c1688086-view4.webp', 57),
(269, 'Uomo/Anelli/ane006stU/c1654640-master.webp', 58),
(270, 'Uomo/Anelli/ane006stU/c1654640-model.webp', 58),
(271, 'Uomo/Anelli/ane006stU/c1654640-model2.webp', 58),
(272, 'Uomo/Anelli/ane006stU/c1654640-view.webp', 58),
(273, 'Uomo/Anelli/ane006stU/c1654640-view2.webp', 58),
(274, 'Uomo/Anelli/ane006stU/c1654640-view4.webp', 58),
(275, 'Uomo/Anelli/ane007stU/899549965.webp', 59),
(276, 'Uomo/Anelli/ane007stU/c1656204-master.webp', 59),
(277, 'Uomo/Anelli/ane007stU/c1656204-view.webp', 59),
(278, 'Uomo/Anelli/ane007stU/c1656204-view2.webp', 59),
(279, 'Uomo/Anelli/ane008stU/c1665561-master.webp', 60),
(280, 'Uomo/Anelli/ane008stU/c1665561-model.webp', 60),
(281, 'Uomo/Anelli/ane008stU/c1665561-model2.webp', 60),
(282, 'Uomo/Anelli/ane008stU/c1665561-view.webp', 60),
(283, 'Uomo/Anelli/ane008stU/c1665561-view2.webp', 60),
(284, 'Uomo/Anelli/ane008stU/c1665561-view3.webp', 60),
(285, 'Uomo/Anelli/ane008stU/c1665561-view4.webp', 60),
(286, 'Uomo/Anelli/ane009stU/899551126.webp', 61),
(287, 'Uomo/Anelli/ane009stU/c1666573-master.webp', 61),
(288, 'Uomo/Anelli/ane009stU/c1666573-model.jpg', 61),
(289, 'Uomo/Anelli/ane009stU/c1666573-model2.webp', 61),
(290, 'Uomo/Anelli/ane009stU/c1666573-view.webp', 61),
(291, 'Uomo/Anelli/ane009stU/c1666573-view2.webp', 61),
(292, 'Uomo/Anelli/ane010stU/837976280.webp', 62),
(293, 'Uomo/Anelli/ane010stU/c1425121-master.webp', 62),
(294, 'Uomo/Anelli/ane010stU/c1425121-model.webp', 62),
(295, 'Uomo/Anelli/ane010stU/c1425121-model2.webp', 62),
(296, 'Uomo/Anelli/ane010stU/c1425121-view.webp', 62),
(297, 'Uomo/Anelli/ane010stU/c1425121-view3.webp', 62),
(298, 'Uomo/Bracciali/bra001stU/c1426355-master.webp', 63),
(299, 'Uomo/Bracciali/bra001stU/c1426355-model.webp', 63),
(300, 'Uomo/Bracciali/bra001stU/c1426355-model2.webp', 63),
(301, 'Uomo/Bracciali/bra001stU/c1426355-view.webp', 63),
(302, 'Uomo/Bracciali/bra001stU/c1426355-view2.webp', 63),
(303, 'Uomo/Bracciali/bra001stU/c1426355-view4.webp', 63),
(304, 'Uomo/Bracciali/bra002stU/c1681920-master.webp', 64),
(305, 'Uomo/Bracciali/bra002stU/c1681920-model.jpg', 64),
(306, 'Uomo/Bracciali/bra002stU/c1681920-model2.jpg', 64),
(307, 'Uomo/Bracciali/bra002stU/c1681920-view.webp', 64),
(308, 'Uomo/Bracciali/bra002stU/c1681920-view2.webp', 64),
(309, 'Uomo/Bracciali/bra003stU/837984989.webp', 65),
(310, 'Uomo/Bracciali/bra003stU/c1412937-master.webp', 65),
(311, 'Uomo/Bracciali/bra003stU/c1412937-model2.webp', 65),
(312, 'Uomo/Bracciali/bra003stU/c1412937-view.webp', 65),
(313, 'Uomo/Bracciali/bra003stU/c1412937-view2.webp', 65),
(314, 'Uomo/Bracciali/bra003stU/c1412937-view4.webp', 65),
(315, 'Uomo/Bracciali/bra004stU/c1669727-master.webp', 66),
(316, 'Uomo/Bracciali/bra004stU/c1669727-model2.jpg', 66),
(317, 'Uomo/Bracciali/bra004stU/c1669727-view.webp', 66),
(318, 'Uomo/Bracciali/bra004stU/c1669727-view2.webp', 66),
(319, 'Uomo/Bracciali/bra004stU/c1669727-view3.webp', 66),
(320, 'Uomo/Bracciali/bra005stU/c1685208-master.webp', 67),
(321, 'Uomo/Bracciali/bra005stU/c1685208-view3.webp', 67),
(322, 'Uomo/Bracciali/bra006stU/c1681894-master.webp', 68),
(323, 'Uomo/Bracciali/bra006stU/c1681894-model.webp', 68),
(324, 'Uomo/Bracciali/bra006stU/c1681894-view.webp', 68),
(325, 'Uomo/Bracciali/bra006stU/c1681894-view2.webp', 68),
(326, 'Uomo/Bracciali/bra007stU/c1412924-master.webp', 69),
(327, 'Uomo/Bracciali/bra007stU/c1412924-model.webp', 69),
(328, 'Uomo/Bracciali/bra007stU/c1412924-view.webp', 69),
(329, 'Uomo/Bracciali/bra008stU/c1625070-master.webp', 70),
(330, 'Uomo/Bracciali/bra008stU/c1625070-model2.jpg', 70),
(331, 'Uomo/Bracciali/bra008stU/c1625070-view.webp', 70),
(332, 'Uomo/Bracciali/bra008stU/c1625070-view3.webp', 70),
(333, 'Uomo/Bracciali/bra008stU/c1625070-view4.webp', 70),
(334, 'Uomo/Bracciali/bra008stU/c1625070-view5.webp', 70),
(335, 'Uomo/Bracciali/bra009stU/c1664176-master.webp', 71),
(336, 'Uomo/Bracciali/bra009stU/c1664176-model2.webp', 71),
(337, 'Uomo/Bracciali/bra009stU/c1664176-view.webp', 71),
(338, 'Uomo/Bracciali/bra009stU/c1664176-view4.webp', 71),
(339, 'Uomo/Bracciali/bra009stU/c1664176-view5.webp', 71),
(340, 'Uomo/Bracciali/bra010stU/c1412979-master.webp', 72),
(341, 'Uomo/Bracciali/bra010stU/c1412979-view.webp', 72),
(342, 'Uomo/Bracciali/bra010stU/c1412979-view2.webp', 72),
(343, 'Uomo/Bracciali/bra010stU/c1412979-view3.webp', 72),
(344, 'Uomo/Bracciali/bra010stU/c1412979-view4.webp', 72),
(345, 'Uomo/Bracciali/bra010stU/c1412979-view5.webp', 72),
(346, 'Uomo/Collane/col001stU/c1425107-master.webp', 73),
(347, 'Uomo/Collane/col001stU/c1425107-model.jpg', 73),
(348, 'Uomo/Collane/col001stU/c1425107-model2.jpg', 73),
(349, 'Uomo/Collane/col001stU/c1425107-view.webp', 73),
(350, 'Uomo/Collane/col001stU/c1425107-view2.webp', 73),
(351, 'Uomo/Collane/col001stU/c1425107-view3.webp', 73),
(352, 'Uomo/Collane/col001stU/c1425107-view4.webp', 73),
(353, 'Uomo/Collane/col002stU/c1662784-master.webp', 74),
(354, 'Uomo/Collane/col002stU/c1662784-model.jpg', 74),
(355, 'Uomo/Collane/col002stU/c1662784-model2.jpg', 74),
(356, 'Uomo/Collane/col002stU/c1662784-view.webp', 74),
(357, 'Uomo/Collane/col002stU/c1662784-view2.webp', 74),
(358, 'Uomo/Collane/col002stU/c1662784-view4.webp', 74),
(359, 'Uomo/Collane/col003stU/c1666517-master.webp', 75),
(360, 'Uomo/Collane/col003stU/c1666517-model.jpg', 75),
(361, 'Uomo/Collane/col003stU/c1666517-model2.jpg', 75),
(362, 'Uomo/Collane/col003stU/c1666517-view.webp', 75),
(363, 'Uomo/Collane/col003stU/c1666517-view2.webp', 75),
(364, 'Uomo/Collane/col003stU/c1666517-view4.webp', 75),
(365, 'Uomo/Collane/col004stU/c1412958-master.webp', 76),
(366, 'Uomo/Collane/col004stU/c1412958-model.jpg', 76),
(367, 'Uomo/Collane/col004stU/c1412958-model2.jpg', 76),
(368, 'Uomo/Collane/col004stU/c1412958-view.webp', 76),
(369, 'Uomo/Collane/col004stU/c1412958-view2.webp', 76),
(370, 'Uomo/Collane/col004stU/c1412958-view3.webp', 76),
(371, 'Uomo/Collane/col004stU/c1412958-view4.webp', 76),
(372, 'Uomo/Collane/col005stU/c1429395-master.webp', 77),
(373, 'Uomo/Collane/col005stU/c1429395-model.webp', 77),
(374, 'Uomo/Collane/col005stU/c1429395-model2.webp', 77),
(375, 'Uomo/Collane/col005stU/c1429395-view.webp', 77),
(376, 'Uomo/Collane/col005stU/c1429395-view4.webp', 77),
(377, 'Uomo/Collane/col005stU/c1429395-view5.webp', 77),
(378, 'Uomo/Collane/col006stU/c1664819-master.webp', 78),
(379, 'Uomo/Collane/col006stU/c1664819-view.webp', 78),
(380, 'Uomo/Collane/col007stU/c1661902-master.webp', 79),
(381, 'Uomo/Collane/col007stU/c1661902-model.jpg', 79),
(382, 'Uomo/Collane/col007stU/c1661902-model2.webp', 79),
(383, 'Uomo/Collane/col007stU/c1661902-view.webp', 79),
(384, 'Uomo/Collane/col007stU/c1661902-view2.webp', 79),
(385, 'Uomo/Collane/col007stU/c1661902-view4.webp', 79),
(386, 'Uomo/Collane/col008stU/c1671315-master.webp', 80),
(387, 'Uomo/Collane/col008stU/c1671315-model.jpg', 80),
(388, 'Uomo/Collane/col008stU/c1671315-model2.jpg', 80),
(389, 'Uomo/Collane/col008stU/c1671315-view.webp', 80),
(390, 'Uomo/Collane/col008stU/c1671315-view2.webp', 80),
(391, 'Uomo/Collane/col008stU/c1671315-view3.webp', 80),
(392, 'Uomo/Collane/col008stU/c1671315-view4.webp', 80),
(393, 'Uomo/Collane/col009stU/c1658422-master.webp', 81),
(394, 'Uomo/Collane/col009stU/c1658422-model.jpg', 81),
(395, 'Uomo/Collane/col009stU/c1658422-model2.jpg', 81),
(396, 'Uomo/Collane/col009stU/c1658422-view.webp', 81),
(397, 'Uomo/Collane/col009stU/c1658422-view2.webp', 81),
(398, 'Uomo/Collane/col009stU/c1658422-view4.webp', 81),
(399, 'Uomo/Collane/col009stU/c1658422-view5.webp', 81),
(400, 'Uomo/Collane/col010stU/c1669737-master.webp', 82),
(401, 'Uomo/Collane/col010stU/c1669737-model.webp', 82),
(402, 'Uomo/Collane/col010stU/c1669737-model2.webp', 82),
(403, 'Uomo/Collane/col010stU/c1669737-view.webp', 82),
(404, 'Uomo/Collane/col010stU/c1669737-view2.webp', 82),
(405, 'Uomo/Collane/col010stU/c1669737-view4.webp', 82),
(406, 'Uomo/Orologi/oro001stU/c1691079-master.webp', 83),
(407, 'Uomo/Orologi/oro001stU/c1691079-view.webp', 83),
(408, 'Uomo/Orologi/oro001stU/c1691079-view2.webp', 83),
(409, 'Uomo/Orologi/oro002stU/c1682655-master.webp', 84),
(410, 'Uomo/Orologi/oro002stU/c1682655-model.jpg', 84),
(411, 'Uomo/Orologi/oro002stU/c1682655-view.webp', 84),
(412, 'Uomo/Orologi/oro003stU/c1605836-master.webp', 85),
(413, 'Uomo/Orologi/oro003stU/c1605836-view.webp', 85),
(414, 'Uomo/Orologi/oro004stU/c1619731-master.webp', 86),
(415, 'Uomo/Orologi/oro004stU/c1619731-view.webp', 86),
(416, 'Uomo/Orologi/oro005stU/c1679707-master.webp', 87),
(417, 'Uomo/Orologi/oro005stU/c1679707-view2.webp', 87),
(418, 'Uomo/Orologi/oro005stU/c1679707-view3.webp', 87),
(419, 'Uomo/Orologi/oro006stU/c1669710-master.webp', 88),
(420, 'Uomo/Orologi/oro007stU/c1692485-master.webp', 89),
(421, 'Uomo/Orologi/oro007stU/c1692485-view.webp', 89),
(422, 'Uomo/Orologi/oro007stU/c1692485-view2.webp', 89),
(423, 'Uomo/Orologi/oro008stU/c1691079-master.webp', 90),
(424, 'Uomo/Orologi/oro008stU/c1691079-view.webp', 90),
(425, 'Uomo/Orologi/oro008stU/c1691079-view2.webp', 90),
(426, 'Uomo/Orologi/oro009stU/c1672646-master.webp', 91),
(427, 'Uomo/Orologi/oro010stU/c1664202-master.webp', 92);

-- --------------------------------------------------------

--
-- Struttura della tabella `indirizzo`
--

CREATE TABLE `indirizzo` (
  `user_id` varchar(20) NOT NULL,
  `paese` varchar(20) NOT NULL,
  `cap` int(11) NOT NULL,
  `via` varchar(30) NOT NULL,
  `civico` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `indirizzo`
--

INSERT INTO `indirizzo` (`user_id`, `paese`, `cap`, `via`, `civico`) VALUES
('admin', 'siano', 84088, 'spinelli', 31),
('danny', 'siano', 84088, 'roma', 10),
('manu', 'svt', 84011, 'giacomo leopardi', 35);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine`
--

CREATE TABLE `ordine` (
  `id_ordine` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `numero` varchar(16) NOT NULL,
  `data_scadenza` varchar(20) NOT NULL,
  `id_utente` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`id_ordine`, `data`, `numero`, `data_scadenza`, `id_utente`) VALUES
(0, '2024-05-08', '1234567890123456', '333', 'admin'),
(2, '2024-05-21', '1234567890123456', '2000-01-01', 'admin'),
(3, '2024-05-21', '1234567890123456', '2000-01-01', 'admin'),
(4, '2024-05-21', '1234567890123456', '2000-01-01', 'admin'),
(5, '2024-05-21', '1234567890123456', '2000-01-01', 'admin'),
(6, '2024-05-21', '1234567890123456', '2000-01-01', 'admin'),
(7, '2024-05-21', '1234567890123456', '2000-01-01', 'admin'),
(8, '2024-05-23', '1234567890123456', '2000-01-01', 'admin'),
(9, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(10, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(11, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(12, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(13, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(14, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(15, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(16, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(17, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(18, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(19, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(20, '2024-06-15', '1234567890123456', '2000-01-01', 'admin'),
(21, '2024-06-16', '1234567890123456', '2000-01-01', 'admin'),
(22, '2024-06-16', '1234567890123454', '2024-05-09', 'danny'),
(23, '2024-06-16', '1234567890123456', '2000-01-01', 'admin'),
(24, '2024-06-16', '1234567890123456', '2000-01-01', 'admin'),
(25, '2024-06-16', '1234567890123454', '2024-05-09', 'danny'),
(26, '2024-06-18', '1234567890123454', '2024-05-09', 'danny'),
(27, '2024-06-19', '1234567890123456', '2000-01-01', 'admin'),
(28, '2024-06-19', '1234567890123456', '2000-01-01', 'admin'),
(29, '2024-06-19', '1234567890123456', '2000-01-01', 'admin'),
(30, '2024-06-19', '1234567890123456', '2000-01-01', 'admin'),
(31, '2024-06-20', '1234567890123456', '2000-01-01', 'admin'),
(32, '2024-06-22', '1234567890123456', '2000-01-01', 'admin'),
(33, '2024-06-24', '1234567890123456', '2000-01-01', 'admin'),
(34, '2024-06-27', '1234567890123456', '2025-06', 'admin'),
(35, '2024-06-28', '1234567890123456', '2025-06', 'admin'),
(36, '2024-06-28', '1234567890123456', '2025-06', 'admin'),
(37, '2024-06-28', '1234567890123456', '2025-06', 'admin'),
(38, '2024-06-30', '1234567890123456', '2025-06', 'admin'),
(39, '2024-06-30', '1234567890123456', '2025-06', 'admin'),
(40, '2024-06-30', '1234567890123456', '2025-06', 'admin'),
(41, '2024-06-30', '1234567890123456', '2025-06', 'admin'),
(42, '2024-06-30', '1234567890123456', '2025-06', 'admin');

-- --------------------------------------------------------

--
-- Struttura della tabella `preferiti`
--

CREATE TABLE `preferiti` (
  `id_prod` int(11) NOT NULL,
  `id_user` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `preferiti`
--

INSERT INTO `preferiti` (`id_prod`, `id_user`) VALUES
(2, 'admin'),
(3, 'danny'),
(4, 'root'),
(5, 'admin'),
(12, 'root');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto`
--

CREATE TABLE `prodotto` (
  `id_prod` int(11) NOT NULL,
  `categoria` char(20) DEFAULT NULL,
  `nome` text,
  `quantita_disponibile` int(11) DEFAULT '0',
  `prezzo` float DEFAULT NULL,
  `descrizione` varchar(2000) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prodotto`
--

INSERT INTO `prodotto` (`id_prod`, `categoria`, `nome`, `quantita_disponibile`, `prezzo`, `descrizione`, `sex`) VALUES
(1, 'Anelli', 'Anello Solitario Sophia Oro Giallo Diamante', 1945, 64.36, 'Anello Solitario Sophia Oro Giallo Diamante\nAnello Solitario Sophia Oro Giallo 375/1000 Diamante Bianco 0,07 ct 1416141\nRiferimento: 1416141\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n7\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.07\nTipo di incastonatura\nPavÃ©\nDiametro pietra (mm)\n1.25\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-sophia-oro-giallo-diamante/1416141.html', 'F'),
(2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 24, 91.1, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'F'),
(3, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 278, 260.45, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,108 ct 1425706\nRiferimento: 1425706\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.085\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.7\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n4\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.016\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.7\nTERZA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n4\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.001\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.75\nQUARTA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.006\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.08\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425706.html', 'F'),
(4, 'Anelli', 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante', 87, 73.92, 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante\nAnello Solitario Charlotte Oro Bianco 375/1000 Zaffiro 1 ct Diamante Bianco 0,3 ct 1416652\nRiferimento: 1416652\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nZaffiro\nColore\nBlu\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n1\nTipo di incastonatura\n4 griffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.3\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-bianco-zaffiro-diamante/1416652.html', 'F'),
(5, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 2319, 298.78, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425536\nRiferimento: 1425536\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425536.html', 'F'),
(6, 'Anelli', 'Anello Solitario Sophia Oro Bianco Diamante', 35, 282.35, 'Anello Solitario Sophia Oro Bianco Diamante\nAnello Solitario Sophia Oro Bianco 375/1000 Diamante Bianco 0,1 ct 1431359\nRiferimento: 1431359\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n9\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n16\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.025\nTipo di incastonatura\nPavÃ©\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n7\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.075\nTipo di incastonatura\nPavÃ©\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-sophia-oro-bianco-diamante/1431359.html', 'F'),
(7, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 691, 175.7, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425655\nRiferimento: 1425655\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425655.html', 'F'),
(8, 'Anelli', 'Anello Solitario Charlotte Oro Giallo Rubino Diamante', 2853, 78.67, 'Anello Solitario Charlotte Oro Giallo Rubino Diamante\nAnello Solitario Charlotte Oro Giallo 375/1000 Rubino 0,57 ct Diamante Bianco 0,174 ct 1429555\nRiferimento: 1429555\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nRubino\nColore\nRosso\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n0.57\nTipo di incastonatura\nGriffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.174\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-giallo-rubino-diamante/1429555.html', 'F'),
(9, 'Anelli', 'Anello Semi-eternity Sophia Oro Bianco Diamante', 1470, 85.15, 'Anello Semi-eternity Sophia Oro Bianco Diamante\nAnello Semi-eternity Sophia Oro Bianco 375/1000 Diamante Bianco 0,539 ct 1432258\nRiferimento: 1432258\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n11\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.385\nTipo di incastonatura\nBinario\nDiametro pietra (mm)\n2\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n44\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.154\nTipo di incastonatura\nMicro incastonatura\nDiametro pietra (mm)\n0.9\n\nhttps://www.stroilioro.com/it_IT/p/anello-semi-eternity-sophia-oro-bianco-diamante/1432258.html', 'F'),
(10, 'Anelli', 'Anello Solitario Grace Oro Giallo Diamante', 2276, 246.84, 'Anello Solitario Grace Oro Giallo Diamante\nAnello Solitario Grace Oro Giallo 375/1000 Diamante Bianco 0,15 ct 1432145\nRiferimento: 1432145\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-giallo-diamante/1432145.html', 'F'),
(11, 'Bracciali', 'Bracciale Tennis Claire Oro Giallo Cubic Zirconia', 2635, 221.83, 'Bracciale Tennis Claire Oro Giallo Cubic Zirconia\nBracciale Tennis Claire Oro Giallo 375/1000 Cubic Zirconia Bianco 16 + 2 cm 1419007\nRiferimento: 1419007\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nAnellini di regolazione\nMoschettone\nLunghezza minima (cm)\n16.00\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-claire-oro-giallo-cubic-zirconia/1419007.html', 'F'),
(12, 'Bracciali', 'Bracciale Tennis Claire Oro Bianco Cubic Zirconia', 2859, 35.12, 'Bracciale Tennis Claire Oro Bianco Cubic Zirconia\nBracciale Tennis Claire Oro Bianco 375/1000 Cubic Zirconia Bianco 16 + 2 cm 1419008\nRiferimento: 1419008\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nAnellini di regolazione\nMoschettone\nLunghezza minima (cm)\n16.00\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-claire-oro-bianco-cubic-zirconia/1419008.html', 'F'),
(13, 'Bracciali', 'Bracciale Catena Colette Oro Giallo', 1459, 229.3, 'Bracciale Catena Colette Oro Giallo\nBracciale Catena Colette Oro Giallo 375/1000 Maglia Bizantina 19 cm 1411629\nRiferimento: 1411629\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n19\nSpessore (mm)\n1.40\nTipologia catena\nBizantina\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-catena-colette-oro-giallo/1411629.html\n', 'F'),
(14, 'Bracciali', 'Bracciale Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia', 191, 52.43, 'Bracciale Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia\nBracciale Gabrielle Oro Bianco 375/1000 Perla D\'Acqua Dolce Bianco Cubic Zirconia Bianco 18.5 cm 1413484\nRiferimento: 1413484\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n19\nAnellini di regolazione\nNodo scorrevole\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla D\'Acqua Dolce\nColore\nBianco\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra\nDiametro pietra (mm)\n6\nPIETRA SECONDARIA\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-gabrielle-oro-bianco-perla-dacqua-dolce-cubic-zirconia/1413484.html', 'F'),
(15, 'Bracciali', 'Bracciale Catena Colette Oro Bicolore', 2363, 224.71, 'Bracciale Catena Colette Oro Bicolore\nBracciale Catena Colette Oro Bicolore 375/1000 Maglia Corda 18 cm 1411613\nRiferimento: 1411613\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBicolore\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nSpessore (mm)\n7.50\nTipologia catena\nCorda\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-catena-colette-oro-bicolore/1411613.html', 'F'),
(16, 'Bracciali', 'Bracciale Catena Colette Oro Giallo', 2163, 98.5, 'Bracciale Catena Colette Oro Giallo\nBracciale Catena Colette Oro Giallo 375/1000 Maglia Groumette 18 cm 1421485\nRiferimento: 1421485\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nSpessore (mm)\n5.20\nTipologia catena\nGroumette\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-catena-colette-oro-giallo/1421485.html', 'F'),
(17, 'Bracciali', 'Bracciale Sophia Oro Bianco Diamante', 81, 247.31, 'Bracciale Sophia Oro Bianco Diamante\nBracciale Ovale Sophia Oro Bianco 375/1000 Diamante Nero 0,11 ct Diamante Bianco 0,04 ct Diamante Bianco 0,06 ct 1429690\nRiferimento: 1429690\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nTipologia catena\nRolo\nAnellini di regolazione\nAnello molla\nForma/Simbolo saldato alla catena\nOvale\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nNero\nNumero di Pietre\n6\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.03\nDiametro pietra (mm)\n1\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nNero\nNumero di Pietre\n11\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.08\nDiametro pietra (mm)\n1.1\nTERZA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.04\nDiametro pietra (mm)\n0.9\nQUARTA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.06\nDiametro pietra (mm)\n0.9\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-sophia-oro-bianco-diamante/1429690.html', 'F'),
(18, 'Bracciali', 'Bracciale Tennis Charlotte Oro Bianco Smeraldo', 519, 180.63, 'Bracciale Tennis Charlotte Oro Bianco Smeraldo\nBracciale Tennis Charlotte Oro Bianco 375/1000 Smeraldo 1,15 ct 17 cm 1417348\nRiferimento: 1417348\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n17\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nSmeraldo\nColore\nVerde\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n1.15\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-charlotte-oro-bianco-smeraldo/1417348.html', 'F'),
(19, 'Bracciali', 'Bangle Gold Essence Oro Giallo', 616, 293.63, 'Bangle Gold Essence Oro Giallo\nBangle Gold Essence Oro Giallo 750/1000 1686820\nRiferimento: 1686820\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nAnellini di regolazione\nOtto di sicurezza\n\nhttps://www.stroilioro.com/it_IT/p/bangle-gold-essence-oro-giallo/1686820.html', 'F'),
(20, 'Bracciali', 'Bracciale Tennis Charlotte Oro Bianco Rubino', 2145, 151.34, 'Bracciale Tennis Charlotte Oro Bianco Rubino\nBracciale Tennis Charlotte Oro Bianco 375/1000 Rubino 1,8 ct 17 cm 1417346\nRiferimento: 1417346\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n17\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nRubino\nColore\nRosso\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n1.8\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-charlotte-oro-bianco-rubino/1417346.html\n', 'F'),
(21, 'Bracciali', 'Bracciale Tennis L\'homme Diamant Oro Bianco Diamante', 1182, 198.46, 'Bracciale Tennis L\'homme Diamant Oro Bianco Diamante\nBracciale Tennis L\'homme Diamant Oro Bianco 375/1000 Diamante Nero 0,1 ct 19.5 cm 1412975\nRiferimento: 1412975\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n20\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nNero\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.1\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-lhomme-diamant-oro-bianco-diamante/1412975.html\n', 'F'),
(22, 'Bracciali', 'Bracciale Golden Lover Oro Bicolore', 2653, 52.68, 'Bracciale Golden Lover Oro Bicolore\nBracciale Golden Lover Oro Bicolore 750/1000 18 cm 1627059\nRiferimento: 1627059\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBicolore\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nTipologia catena\nRolo\nAnellini di regolazione\nAnello molla\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-golden-lover-oro-bicolore/1627059.html', 'F'),
(23, 'Collane', 'Collana Crystal Gold Oro Giallo Cristallo', 2323, 171.85, 'Collana Crystal Gold Oro Giallo Cristallo\nCollana Crystal Gold Oro Giallo 750/1000 Cristallo Bianco 42 cm 1620807\nRiferimento: 1620807\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nResina\n\nhttps://www.stroilioro.com/it_IT/p/collana-crystal-gold-oro-giallo-cristallo/1620807.html', 'F'),
(24, 'Collane', 'Catena Colette Oro Giallo', 1026, 196.78, 'Catena Colette Oro Giallo\nCatena Colette Oro Giallo 375/1000 Maglia Pop Corn 42 cm 1413173\nRiferimento: 1413173\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nSpessore (mm)\n3.00\nTipologia catena\nPop corn\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/catena-colette-oro-giallo/1413173.html', 'F'),
(25, 'Collane', 'Collana Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia', 611, 161.26, 'Collana Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia\nCollana Gabrielle Oro Bianco 375/1000 Perla D\'Acqua Dolce Bianco Cubic Zirconia Bianco 45 cm 1413485\nRiferimento: 1413485\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n45\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla D\'Acqua Dolce\nColore\nBianco\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra\nDiametro pietra (mm)\n6\nPIETRA SECONDARIA\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/collana-gabrielle-oro-bianco-perla-dacqua-dolce-cubic-zirconia/1413485.html\n\n', 'F'),
(26, 'Collane', 'Collana Sophia Oro Bianco Diamante', 57, 234.27, 'Collana Sophia Oro Bianco Diamante\nCollana Sophia Oro Bianco 375/1000 Maglia Forzatina Diamante Bianco 0,151 ct 40 + 2 cm 1416273\nRiferimento: 1416273\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nSpessore (mm)\n0.70\nTipologia catena\nForzatina\nAnellini di regolazione\nAnello molla\nLunghezza minima (cm)\n40.00\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n63\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.151\nTipo di incastonatura\nPavÃ©\nDiametro pietra (mm)\n0.75\n\nhttps://www.stroilioro.com/it_IT/p/collana-sophia-oro-bianco-diamante/1416273.html', 'F'),
(27, 'Collane', 'Collana Gold Essence Oro Giallo', 2596, 48.85, 'Collana Gold Essence Oro Giallo\nCollana Cuore Gold Essence Oro Giallo 750/1000 45 cm 1625499\nRiferimento: 1625499\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n45\nForma/Simbolo saldato alla catena\nCuore\n\nhttps://www.stroilioro.com/it_IT/p/collana-gold-essence-oro-giallo/1625499.html\n', 'F'),
(28, 'Collane', 'Collana Punto Luce Elizabeth Crown Oro Bianco Smeraldo Diamante', 755, 104.98, 'Collana Punto Luce Elizabeth Crown Oro Bianco Smeraldo Diamante\nCollana Punto Luce Elizabeth Crown Oro Bianco 750/1000 Maglia Forzatina Smeraldo 0,4 ct Diamante Bianco 0,015 ct 42 cm 1259805\nRiferimento: 1259805\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nTipologia catena\nForzatina\nAnellini di regolazione\nAnello molla\nPIETRA PRINCIPALE\nTipologia di Pietra\nSmeraldo\nColore\nVerde\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n0.4\nTipo di incastonatura\n4 griffe\nLarghezza pietra (mm)\n4\nLunghezza pietra (mm)\n5\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n3\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.015\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.95\n\nhttps://www.stroilioro.com/it_IT/p/collana-punto-luce-elizabeth-crown-oro-bianco-smeraldo-diamante/1259805.html', 'F'),
(29, 'Collane', 'Collana Gold Pearls Oro Bianco Perla D\'Acqua Dolce Diamante', 291, 188.74, 'Collana Gold Pearls Oro Bianco Perla D\'Acqua Dolce Diamante\nCollana Gold Pearls Oro Bianco 750/1000 Perla D\'Acqua Dolce Bianco Diamante Bianco 0,02 ct 42 cm 1616331\nRiferimento: 1616331\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nTipologia catena\nVeneziana\nAnellini di regolazione\nAnello molla\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla D\'Acqua Dolce\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra\nDiametro pietra (mm)\n6.5\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.02\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/collana-gold-pearls-oro-bianco-perla-dacqua-dolce-diamante/1616331.html', 'F'),
(30, 'Collane', 'Collana Punto Luce Diamotion Oro Bianco Diamante', 1302, 69.96, 'Collana Punto Luce Diamotion Oro Bianco Diamante\nCollana Punto Luce Diamotion Oro Bianco 750/1000 Diamante Bianco 0,03 ct 40 + 2 cm 1670208\nRiferimento: 1670208\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nTipologia catena\nVeneziana\nAnellini di regolazione\nMoschettone\nSistema di regolazione\nChiusura\nLunghezza minima (cm)\n40.00\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.03\nTipo di incastonatura\nIllusion\n\nhttps://www.stroilioro.com/it_IT/p/collana-punto-luce-diamotion-oro-bianco-diamante/1670208.html', 'F'),
(31, 'Collane', 'Collana Punto Luce Elizabeth Crown Oro Bianco Zaffiro Diamante', 2348, 133.78, 'Collana Punto Luce Elizabeth Crown Oro Bianco Zaffiro Diamante\nCollana Punto Luce Elizabeth Crown Oro Bianco 750/1000 Maglia Forzatina Zaffiro 0,143 ct Diamante Bianco 0,04 ct 40 + 2 cm 1339453\nRiferimento: 1339453\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nTipologia catena\nForzatina\nAnellini di regolazione\nAnello molla\nSistema di regolazione\nChiusura\nLunghezza minima (cm)\n40.00\nPIETRA PRINCIPALE\nTipologia di Pietra\nZaffiro\nColore\nBlu\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.143\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n14\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.04\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.8\n\nhttps://www.stroilioro.com/it_IT/p/collana-punto-luce-elizabeth-crown-oro-bianco-zaffiro-diamante/1339453.html\n', 'F'),
(32, 'Collane', 'Collana Gold Essence Oro Giallo', 2286, 100.81, 'Collana Gold Essence Oro Giallo\nCollana Gold Essence Oro Giallo 750/1000 Maglia Corda 45 cm 1686829\nRiferimento: 1686829\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n45\nTipologia catena\nCorda\nAnellini di regolazione\nSalvagente\n\nhttps://www.stroilioro.com/it_IT/p/collana-gold-essence-oro-giallo/1686829.html', 'F'),
(33, 'Orecchini', 'Orecchini Lobo Sophia Oro Bianco Diamante', 1573, 149.61, 'Orecchini Lobo Sophia Oro Bianco Diamante\nOrecchini Lobo Cuore Sophia Oro Bianco 375/1000 Diamante Bianco 0,14 ct 1427021\nRiferimento: 1427021\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nForma/Simbolo saldato alla catena\nCuore\nAnellini di regolazione\nFarfallina\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nPrincess\nCarati (ct)\n0.04\nTipo di incastonatura\nGriffe\nLarghezza pietra (mm)\n1.4\nLunghezza pietra (mm)\n1.4\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n4\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.055\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n1.4\nTERZA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n36\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.045\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.6\n\nhttps://www.stroilioro.com/it_IT/p/orecchini-lobo-sophia-oro-bianco-diamante/1427021.html', 'F'),
(34, 'Orecchini', 'Orecchini A Cerchio Toujours Oro Bianco', 294, 250.85, 'Orecchini A Cerchio Toujours Oro Bianco\nOrecchini A Cerchio Toujours Oro Bianco 375/1000 Diametro 8 mm 1415899\nRiferimento: 1415899\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nDiametro degli orecchini a cerchio\n8\nAnellini di regolazione\nFlessibile\n', 'F'),
(35, 'Orecchini', 'Orecchini A Cerchio Toujours Oro Giallo Cubic Zirconia', 503, 29.36, 'Orecchini A Cerchio Toujours Oro Giallo Cubic Zirconia\nOrecchini A Cerchio Toujours Oro Giallo 375/1000 Diametro 8 mm Cubic Zirconia Multicolore 1428541\nRiferimento: 1428541\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nTipo di orecchino\nCerchio\nForma\nCerchio\nDiametro degli orecchini a cerchio\n8\nAnellini di regolazione\nChiusura a scatto\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nMulticolore\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n', 'F'),
(36, 'Orecchini', 'Orecchini A Cerchio Toujours Oro Giallo', 288, 186.84, 'Orecchini A Cerchio Toujours Oro Giallo\nOrecchini A Cerchio Toujours Oro Giallo 375/1000 Diametro 50 mm 1401095\nRiferimento: 1401095\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nTipo di orecchino\nCerchio\nForma\nCerchio\nDiametro degli orecchini a cerchio\n50\nAnellini di regolazione\nBaionetta\n', 'F'),
(37, 'Orecchini', 'Orecchini A Cerchio Toujours Oro Giallo', 641, 141.73, 'Orecchini A Cerchio Toujours Oro Giallo\nOrecchini A Cerchio Toujours Oro Giallo 375/1000 Diametro 10 mm 1417111\nRiferimento: 1417111\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nTipo di orecchino\nCerchio\nForma\nCerchio\nDiametro degli orecchini a cerchio\n10\nAnellini di regolazione\nBaionetta', 'F'),
(38, 'Orecchini', 'Orecchini Lobo Bon Ton Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia', 291, 163.85, 'Orecchini Lobo Bon Ton Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia\nOrecchini Lobo Bon Ton Oro Bianco 375/1000 Perla D\'Acqua Dolce Madreperla Cubic Zirconia Bianco 1400924\nRiferimento: 1400924\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nAnellini di regolazione\nFarfallina in silicone\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla D\'Acqua Dolce\nColore\nMadreperla\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra\nDiametro pietra (mm)\n2\nPIETRA SECONDARIA\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\n4 griffe\n', 'F'),
(39, 'Orecchini', 'Orecchini Lobo Mickey Mouse & Friends Acciaio Rosa Cristallo', 152, 193.06, 'Orecchini Lobo Mickey Mouse & Friends Acciaio Rosa Cristallo\nOrecchini Lobo Minnie Mickey Mouse & Friends Acciaio Rosa Cristallo Bianco 1672067\nRiferimento: 1672067\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nAcciaio\nColore del materiale\nRosa\nGaranzia (mesi)\n24\nMateriale\nSmalto\nColore del materiale\nNero\nForma/Simbolo saldato alla catena\nMinnie\nAnellini di regolazione\nFarfallina\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\n', 'F'),
(40, 'Orecchini', 'Orecchini A Cerchio Toujours Oro Tricolore', 903, 268.94, 'Orecchini A Cerchio Toujours Oro Tricolore\nOrecchini A Cerchio Toujours Oro Tricolore 375/1000 Diametro 10 mm 1401665\nRiferimento: 1401665\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nTricolore\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nTipo di orecchino\nCerchio\nForma\nCerchio\nDiametro degli orecchini a cerchio\n10\nAnellini di regolazione\nBaionetta', 'F'),
(41, 'Orecchini', 'Orecchini Lobo Punto Luce Claire Oro Bianco Cubic Zirconia', 2288, 166.45, 'Orecchini Lobo Punto Luce Claire Oro Bianco Cubic Zirconia\nOrecchini Lobo Punto Luce Cuore Claire Oro Bianco 375/1000 Cubic Zirconia Bianco 1424441\nRiferimento: 1424441\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nForma/Simbolo saldato alla catena\nCuore\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nCuore\nTipo di incastonatura\n3 griffe', 'F'),
(42, 'Orecchini', 'Orecchini Lobo Gabrielle Oro Bianco Perla Akoya', 232, 138.65, 'Orecchini Lobo Gabrielle Oro Bianco Perla Akoya\nOrecchini Lobo Gabrielle Oro Bianco 375/1000 Perla Akoya Bianco 1413493\nRiferimento: 1413493\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nAnellini di regolazione\nFarfallina\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla Akoya', 'F'),
(43, 'Orologi', 'Orologio Al Quarzo Guess Mod Id Gw0668l1', 2419, 184.19, 'Orologio Al Quarzo Guess Mod Id Gw0668l1\nOrologio Al Quarzo Guess Mod Id Gw0668l1 Cassa Rettangolare Acciaio Argentato 24 mm Quadrante Argentato Cinturino Acciaio Argentato\nRiferimento: 1692487\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\n1688846\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nForma della cassa\nRettangolare\nMateriale della cassa\nAcciaio\nColore della cassa\nArgentato\nOuverture boÃ®tier (mm)\n24\nSpessore della cassa (mm)\n7.7\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nArgentato\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nTraforato\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nClip\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo', 'F'),
(44, 'Orologi', 'Smartwatch Garmin Venu 010-02785-04', 355, 270.99, 'Smartwatch Garmin Venu 010-02785-04\nSmartwatch Garmin Venu 010-02785-04 Cassa Rotonda Polimero Fibrorinforzato Avorio 41 mm Cinturino Silicone Avorio\nRiferimento: 1690366\n\nDETTAGLI DEL PRODOTTO\nGenere\nUnisex\nReferenza fornitore\n010-02785-04\nGaranzia (mesi)\n24\nMeccanismo\nSmartwatch\nForma della cassa\nRotonda\nMateriale della cassa\nPolimero Fibrorinforzato\nColore della cassa\nAvorio\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n41\nSpessore della cassa (mm)\n12\nMateriale del vetro\nMinerale\nDisplay orario\nSmart Display\nColore sfondo cassa\nMulticolore\nQuadrante touch\nSÃ¬\nQuadrante personalizzabile\nSÃ¬\nIndici\nNumeri arabi\nMateriale della ghiera\nAcciaio\nColore della ghiera\nDorato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nSilicone\nColore del cinturino\nAvorio\nFinitura del cinturino\nLisse\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nMultifunzione\nSveglia\nSÃ¬\nCronometro\nSÃ¬\nSistemi compatibili\nAndroid, IOS, OS\nNotifiche\nApplications, Batterie, Calendrier, Appels, Messages, Training\nMicrofono / speaker\nSÃ¬\nTipo di caricatore\nCavo USB', 'F'),
(45, 'Orologi', 'Orologio Al Quarzo Casio Vintage La680wea-7ef', 581, 47.14, 'Orologio Al Quarzo Casio Vintage La680wea-7ef\nOrologio Al Quarzo Casio Vintage La680wea-7ef Cassa Quadrata Resina Argentato 28 mm Quadrante Argentato Cinturino Acciaio Argentato\nRiferimento: 1610457\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nLA680WEA-7EF\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nQuadrata\nMateriale della cassa\nResina\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nSpessore della cassa (mm)\n8.6\nMateriale del vetro\nPlastica/Acrilico\nDisplay orario\nDigitale\nColore sfondo cassa\nArgentato\nIndici\nNumeri arabi\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nEasy click\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nBrossÃ©\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nFibbia scorrevole\nImpermeabilitÃ \n10 m (1atm)\nDatario o multifunzione\nDatario\nCronometro\nSÃ¬', 'F'),
(46, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Petite-evergold Dw00100350', 135, 63.88, 'Orologio Al Quarzo Daniel Wellington Petite-evergold Dw00100350\nOrologio Al Quarzo Daniel Wellington Petite-evergold Dw00100350 Cassa Rotonda Acciaio Dorato 28 mm Quadrante Bianco Cinturino Acciaio Dorato\nRiferimento: 1671857\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nDW00100350\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nDorato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nSpessore della cassa (mm)\n6\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nBianco\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nDorato\nTipologia di cinturino\nMilanese\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nDorato\nFinitura del cinturino\nAjourÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'F'),
(47, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Petite-ashfield Dw00100245', 2256, 291.82, 'Orologio Al Quarzo Daniel Wellington Petite-ashfield Dw00100245\nOrologio Al Quarzo Daniel Wellington Petite-ashfield Dw00100245 Cassa Rotonda Acciaio Rosato 28 mm Quadrante Nero Cinturino Acciaio Nero\nRiferimento: 1656664\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nDW00100245\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nRosato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nSpessore della cassa (mm)\n6\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nNero\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nRosato\nTipologia di cinturino\nMilanese\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nNero\nFinitura del cinturino\nAjourÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'F'),
(48, 'Orologi', 'Orologio Al Quarzo Casio Collection Mtp-1302pd-3avef', 2347, 25.95, 'Orologio Al Quarzo Casio Collection Mtp-1302pd-3avef\nOrologio Al Quarzo Casio Collection Mtp-1302pd-3avef Cassa Rotonda Acciaio Nero 38.5 mm Quadrante Verde Cinturino Acciaio Argentato\nRiferimento: 1687033\n\nDETTAGLI DEL PRODOTTO\nGenere\nUnisex\nReferenza fornitore\nMTP-1302PD-3AVEF\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nNero\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n38.5\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nVerde\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nLiscio\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nDatario', 'F'),
(49, 'Orologi', 'Orologio Al Quarzo Guess Lady Frontier W1156l2', 622, 126.94, 'Orologio Al Quarzo Guess Lady Frontier W1156l2\nOrologio Al Quarzo Guess Lady Frontier W1156l2 Cassa Rotonda Acciaio Giallo 36 mm Quadrante Champagne Cinturino Acciaio Bicolore Dorato / Rosa\nRiferimento: 1664618\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nW1156L2\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nGiallo\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n36\nSpessore della cassa (mm)\n12.1\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nChampagne\nIndici\nNumeri arabi\nMateriale della ghiera\nAcciaio\nColore della ghiera\nDorato\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nBicolore Dorato / Rosa\nFinitura del cinturino\nLisse\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nMultifunzione\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nBianco\nTaglio della pietra o forma della perla\nRotondo\n', 'F'),
(50, 'Orologi', 'Orologio Al Quarzo Stroili Brera', 2791, 290.4, 'Orologio Al Quarzo Stroili Brera\nOrologio Al Quarzo Stroili Brera Cassa Rotonda Acciaio Rosato 30 mm Quadrante Rosato Cinturino Acciaio Rosato\nRiferimento: 1671058\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nSR.2107L/09M\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nRosato\nFinitura della cassa\nBrillante\nOuverture boÃ®tier (mm)\n30\nSpessore della cassa (mm)\n7.35\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nRosato\nIndici\nNumeri romani e indici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nRosato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nRosato\nFinitura del cinturino\nAjourÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nFibbia scorrevole\nImpermeabilitÃ \n30 m (3atm)', 'F'),
(51, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Petite Lumine Bezel 5-link Arctic Dw00100664', 167, 35.93, 'Orologio Al Quarzo Daniel Wellington Petite Lumine Bezel 5-link Arctic Dw00100664\nOrologio Al Quarzo Daniel Wellington Petite Lumine Bezel 5-link Arctic Dw00100664 Cassa Rotonda Acciaio Argentato 28 mm Quadrante Blu Cinturino Acciaio Argentato\nRiferimento: 1691081\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nDW00100664\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nBlu\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nLiscio\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'F'),
(52, 'Orologi', 'Orologio Automatico Pierre Lannier Eolia 311d655', 2006, 63.37, 'Orologio Automatico Pierre Lannier Eolia 311d655\nOrologio Automatico Pierre Lannier Eolia 311d655 Cassa Rotonda Acciaio Argentato 37 mm Quadrante Rosso Cinturino Pelle Rosso\nRiferimento: 1691522\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\n311D655\nGaranzia (mesi)\n24\nMeccanismo\nAutomatico\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n37\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nRosso\nIndici\nIndici con pietre\nOpen heart\nSÃ¬\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nPelle\nColore del cinturino\nRosso\nFinitura del cinturino\nLiscio\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n30 m (3atm)\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nBrillante / Tondo', 'F'),
(53, 'Anelli', 'Anello Fascia Man Code Acciaio Bicolore Bianco / Nero', 349, 122.08, 'Anello Fascia Man Code Acciaio Bicolore Bianco / Nero\nAnello Fascia Man Code Acciaio Bicolore Bianco / Nero 1618731\nRiferimento: 1618731\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBicolore Bianco / Nero\nGaranzia (mesi)\n24\n', 'M'),
(54, 'Anelli', 'Anello Chevalier Man Code Acciaio Agata', 1696, 294.06, 'Anello Chevalier Man Code Acciaio Agata\nAnello Chevalier Man Code Acciaio Agata Nero 1666486\nRiferimento: 1666486\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nAgata\nColore\nNero\nTaglio della pietra o forma della perla\nQuadrato\nTipo di incastonatura\nChiuso\n', 'M'),
(55, 'Anelli', 'Fede Classica Leggera 2.5 mm Oro Giallo', 1211, 126.65, 'Fede Classica Leggera 2.5 mm Oro Giallo\nFede Classica Leggera 2.5 mm Oro Giallo 375/1000 1421797\nRiferimento: 1421797\n\nDETTAGLI DEL PRODOTTO\nGenere\nUnisex\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nSpessore anello (mm)\n2.50\nRings type of wire\nFascia mezzo tondo classico', 'M'),
(56, 'Anelli', 'Anello Fedina Silver Collection Argento Rodiato', 1439, 80.39, 'Anello Fedina Silver Collection Argento Rodiato\nAnello Fedina Silver Collection Argento Rodiato 925/1000 1652383\nRiferimento: 1652383\n\nDETTAGLI DEL PRODOTTO\nGenere\nUnisex\nMisura anello\n12\nMateriale principale\nArgento\nColore del materiale\nBianco\nTitolo metallo \n925/1000\nGaranzia (mesi)\n24', 'M'),
(57, 'Anelli', 'Anello Fantasia Man Code Acciaio Cristallo', 151, 241.39, 'Anello Fantasia Man Code Acciaio Cristallo\nAnello Fantasia Serpente Man Code Acciaio Cristallo Nero 1688087\nRiferimento: 1688087\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nForma/Simbolo saldato alla catena\nSerpente\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nNero\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe', 'M'),
(58, 'Anelli', 'Anello Fedina Gentleman Argento Bicolore Bianco / Nero', 2865, 260.74, 'Anello Fedina Gentleman Argento Bicolore Bianco / Nero\nAnello Fedina Gentleman Argento Bicolore Bianco / Nero 925/1000 1674808\nRiferimento: 1674808\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nArgento\nColore del materiale\nBicolore Bianco / Nero\nTitolo metallo \n925/1000\nGaranzia (mesi)\n24', 'M'),
(59, 'Anelli', 'Anello Fascia Man Code Acciaio Cubic Zirconia', 1155, 274.82, 'Anello Fascia Man Code Acciaio Cubic Zirconia\nAnello Fascia Man Code Acciaio Cubic Zirconia Nero 1618736\nRiferimento: 1618736\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nNero\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nChiuso', 'M'),
(60, 'Anelli', 'Anello Fascia Man Code Acciaio Bicolore Bianco / Nero', 2205, 102.31, 'Anello Fascia Man Code Acciaio Bicolore Bianco / Nero\nAnello Fascia Man Code Acciaio Bicolore Bianco / Nero 1664070\nRiferimento: 1664070\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBicolore Bianco / Nero\nGaranzia (mesi)\n24', 'M'),
(61, 'Anelli', 'Anello Chevalier Man Code Acciaio Bicolore Bianco / Nero Cristallo', 1941, 50.8, 'Anello Chevalier Man Code Acciaio Bicolore Bianco / Nero Cristallo\nAnello Chevalier Man Code Acciaio Bicolore Bianco / Nero Cristallo Bianco 1666574\nRiferimento: 1666574\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBicolore Bianco / Nero\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nChiuso', 'M'),
(62, 'Anelli', 'Anello Chevalier L\'homme Or Oro Giallo', 392, 70.99, 'Anello Chevalier L\'homme Or Oro Giallo\nAnello Chevalier Quadrato  L\'homme Or Oro Giallo 375/1000 1425173\nRiferimento: 1425173\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n16\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nForma/Simbolo saldato alla catena\nQuadrato', 'M'),
(63, 'Bracciali', 'Bracciale Tennis L\'homme Or Oro Bianco Spinello', 2743, 153.99, 'Bracciale Tennis L\'homme Or Oro Bianco Spinello\nBracciale Tennis L\'homme Or Oro Bianco 375/1000 Spinello Nero 19.5 cm 1426355\nRiferimento: 1426355\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n20\nTipologia catena\nTennis\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nSpinello\nColore\nNero\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\n4 griffe', 'M'),
(64, 'Bracciali', 'Bracciale Tennis Man Code Acciaio Cristallo', 1851, 231.3, 'Bracciale Tennis Man Code Acciaio Cristallo\nBracciale Tennis Man Code Acciaio Cristallo Nero 21 cm 1681920\nRiferimento: 1681920\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nLunghezza (cm)\n21\nTipologia catena\nTennis\nAnellini di regolazione\nClip\nSistema di regolazione\nRimozione Maglia\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nNero\nNumero di Pietre\n63\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2', 'M');
INSERT INTO `prodotto` (`id_prod`, `categoria`, `nome`, `quantita_disponibile`, `prezzo`, `descrizione`, `sex`) VALUES
(65, 'Bracciali', 'Bracciale Catena L\'homme Or Oro Giallo', 1467, 208.34, 'Bracciale Catena L\'homme Or Oro Giallo\nBracciale Catena L\'homme Or Oro Giallo 375/1000 Maglia Occhio Di Pernice 21 cm 1412937\nRiferimento: 1412937\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n21\nSpessore (mm)\n4.00\nTipologia catena\nOcchio di Pernice\nAnellini di regolazione\nMoschettone', 'M'),
(66, 'Bracciali', 'Bracciale Man Code Acciaio Bicolore Cubic Zirconia', 2833, 159.65, 'Bracciale Man Code Acciaio Bicolore Cubic Zirconia\nBracciale Man Code Acciaio Bicolore Cubic Zirconia Bianco 20 cm 1669727\nRiferimento: 1669727\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nAcciaio\nColore del materiale\nBicolore\nGaranzia (mesi)\n24\nLunghezza (cm)\n20\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nChiuso', 'M'),
(67, 'Bracciali', 'Bracciale Man Code Acciaio Cristallo', 2596, 68.29, 'Bracciale Man Code Acciaio Cristallo\nBracciale Yin Yang Man Code Acciaio Cristallo Bianco Cristallo Nero 16 + 4 cm 1685208\nRiferimento: 1685208\n\nDETTAGLI DEL PRODOTTO\nGenere\nUnisex\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nMateriale\nSmalto\nColore del materiale\nBicolore Bianco / Nero\nLunghezza (cm)\n20\nTipologia catena\nGroumette\nAnellini di regolazione\nMoschettone\nSistema di regolazione\nChiusura\nForma/Simbolo saldato alla catena\nYing Yang\nLunghezza minima (cm)\n16.00\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nChiuso\nPIETRA SECONDARIA\nTipologia di Pietra\nCristallo\nColore\nNero\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nChiuso', 'M'),
(68, 'Bracciali', 'Bracciale Catena Oro Uomo Oro Bicolore', 2154, 131.93, 'Bracciale Catena Oro Uomo Oro Bicolore\nBracciale Catena Oro Uomo Oro Bicolore 750/1000 Maglia Occhio Di Pernice 21 cm 1681894\nRiferimento: 1681894\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nBicolore\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n21\nTipologia catena\nOcchio di Pernice\nAnellini di regolazione\nMoschettone', 'M'),
(69, 'Bracciali', 'Bracciale L\'homme Or Oro Giallo', 2867, 126.62, 'Bracciale L\'homme Or Oro Giallo\nBracciale L\'homme Or Oro Giallo 375/1000 19 + 2 cm 1412924\nRiferimento: 1412924\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nMateriale\nCordino\nColore del materiale\nNero\nLunghezza (cm)\n21\nAnellini di regolazione\nAnello molla\nLunghezza minima (cm)\n19.00', 'M'),
(70, 'Bracciali', 'Bracciale Man Code Acciaio', 2262, 167.27, 'Bracciale Man Code Acciaio\nBracciale Man Code Acciaio 21 cm 1625070\nRiferimento: 1625070\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nMateriale\nCorda\nColore del materiale\nBlu\nLunghezza (cm)\n21', 'M'),
(71, 'Bracciali', 'Bracciale Man Code Acciaio Onice', 821, 64.72, 'Bracciale Man Code Acciaio Onice\nBracciale Man Code Acciaio Onice Nero 1664176\nRiferimento: 1664176\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nElastic cord\nSÃ¬\nCord material\nElastico\nCord color\nTrasparente\nPIETRA PRINCIPALE\nTipologia di Pietra\nOnice\nColore\nNero\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra', 'M'),
(72, 'Bracciali', 'Bracciale Tennis L\'homme Diamant Oro Bianco Diamante', 1973, 133.47, 'Bracciale Tennis L\'homme Diamant Oro Bianco Diamante\nBracciale Tennis L\'homme Diamant Oro Bianco 375/1000 Diamante Nero 2,35 ct 19.5 cm 1412979\nRiferimento: 1412979\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n20\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nNero\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n2.35\nTipo di incastonatura\nGriffe', 'M'),
(73, 'Collane', 'Catena L\'homme Or Oro Bianco', 1270, 26.61, 'Catena L\'homme Or Oro Bianco\nCatena L\'homme Or Oro Bianco 375/1000 Maglia Alternata 1/3 60 cm 1425107\nRiferimento: 1425107\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n60\nTipologia catena\nAlternata 1/3\nAnellini di regolazione\nMoschettone', 'M'),
(74, 'Collane', 'Collana Gentleman Argento Rodiato', 2158, 93.41, 'Collana Gentleman Argento Rodiato\nCollana Croce Gentleman Argento Rodiato 925/1000 Maglia Forzatina 45 + 5 cm 1662784\nRiferimento: 1662784\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nArgento\nColore del materiale\nBianco\nTitolo metallo \n925/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n50\nSpessore (mm)\n1.10\nTipologia catena\nForzatina\nAnellini di regolazione\nAnello molla\nSistema di regolazione\nChiusura\nForma/Simbolo saldato alla catena\nCroce\nLunghezza minima (cm)\n45.00\nForma/Simbolo saldato alla catena\nSÃ¬\n', 'M'),
(75, 'Collane', 'Collana Man Code Acciaio Bicolore Bianco / Nero', 2874, 167.23, 'Collana Man Code Acciaio Bicolore Bianco / Nero\nCollana Rosa Dei Venti Man Code Acciaio Bicolore Bianco / Nero Maglia Forzatina 45 + 5 cm 1666517\nRiferimento: 1666517\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nAcciaio\nColore del materiale\nBicolore Bianco / Nero\nGaranzia (mesi)\n24\nLunghezza (cm)\n50\nSpessore (mm)\n1.60\nTipologia catena\nForzatina\nAnellini di regolazione\nMoschettone\nSistema di regolazione\nChiusura\nForma/Simbolo saldato alla catena\nRosa dei venti\nLunghezza minima (cm)\n45.00\nForma/Simbolo saldato alla catena\nSÃ¬\n', 'M'),
(76, 'Collane', 'Catena L\'homme Or Oro Bicolore', 324, 281.25, 'Catena L\'homme Or Oro Bicolore\nCatena L\'homme Or Oro Bicolore 375/1000 Maglia Fantasia 50 cm 1412958\nRiferimento: 1412958\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nBicolore\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n50\nSpessore (mm)\n3.30\nTipologia catena\nFantasia\nAnellini di regolazione\nAnello molla', 'M'),
(77, 'Collane', 'Pendente L\'homme Or Oro Giallo', 912, 65.27, 'Pendente L\'homme Or Oro Giallo\nPendente Lettera G L\'homme Or Oro Giallo 375/1000 1429395\nRiferimento: 1429395\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nForma/Simbolo saldato alla catena\nG', 'M'),
(78, 'Collane', 'Pendente Oro Uomo Oro Giallo', 2748, 153.9, 'Pendente Oro Uomo Oro Giallo\nPendente Oro Uomo Oro Giallo 750/1000 1664819\nRiferimento: 1664819\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nForma/Simbolo saldato alla catena\nMo', 'M'),
(79, 'Collane', 'Collana Man Code Acciaio', 454, 27.42, 'Collana Man Code Acciaio\nCollana Man Code Acciaio 50 cm 1661902\nRiferimento: 1661902\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nLunghezza (cm)\n50\nForma/Simbolo saldato alla catena\nÃ ncora\n', 'M'),
(80, 'Collane', 'Collana Gentleman Argento Rodiato', 1296, 33.04, 'Collana Gentleman Argento Rodiato\nCollana Croce Gentleman Argento Rodiato 925/1000 Maglia Forzatina 50 cm 1671315\nRiferimento: 1671315\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nArgento\nColore del materiale\nBianco\nTitolo metallo \n925/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n50\nSpessore (mm)\n1.70\nTipologia catena\nForzatina\nAnellini di regolazione\nMoschettone\nForma/Simbolo saldato alla catena\nCroce\nForma/Simbolo saldato alla catena\nSÃ¬\n', 'M'),
(81, 'Collane', 'Collana Man Code Metallo Nero Cubic Zirconia', 1385, 299.68, 'Collana Man Code Metallo Nero Cubic Zirconia\nCollana Croce Man Code Metallo Nero Cubic Zirconia Nero 45 + 5 cm 1658422\nRiferimento: 1658422\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nMetallo\nColore del materiale\nNero\nGaranzia (mesi)\n24\nMateriale\nCordino\nColore del materiale\nNero\nLunghezza (cm)\n50\nForma/Simbolo saldato alla catena\nCroce\nLunghezza minima (cm)\n45.00\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nNero\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nPavÃ©', 'M'),
(82, 'Collane', 'Collana Man Code Acciaio', 2343, 80.97, 'Collana Man Code Acciaio\nCollana Man Code Acciaio 60 cm 1669737\nRiferimento: 1669737\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nLunghezza (cm)\n60', 'M'),
(83, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Classic St Mawes Arctic Dw00100626', 2723, 189.05, 'Orologio Al Quarzo Daniel Wellington Classic St Mawes Arctic Dw00100626\nOrologio Al Quarzo Daniel Wellington Classic St Mawes Arctic Dw00100626 Cassa Rotonda Acciaio Rosato 40 mm Quadrante Blu Cinturino Pelle Marrone\nRiferimento: 1691079\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nDW00100626\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nRosato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n40\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nBlu\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nRosato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nPelle\nColore del cinturino\nMarrone\nFinitura del cinturino\nLiscio\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'M'),
(84, 'Orologi', 'Orologio Al Quarzo Philipp Plein Nobile Pwcaa0821', 306, 111.48, 'Orologio Al Quarzo Philipp Plein Nobile Pwcaa0821\nOrologio Al Quarzo Philipp Plein Nobile Pwcaa0821 Cronografo Cassa Rotonda Acciaio Bicolore 43 mm Quadrante Verde Cinturino Acciaio Bicolore\nRiferimento: 1682655\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\n1677284\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nBicolore\nFinitura della cassa\nBrillante\nOuverture boÃ®tier (mm)\n43\nSpessore della cassa (mm)\n13.7\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nVerde\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nNero\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nBicolore\nFinitura del cinturino\nLisse\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nImpermeabilitÃ \n50 m (5atm)\nCronometro\nSÃ¬\nCronografo\nSÃ¬\nLuminescente\nSÃ¬\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nGiallo\nNumero di Pietre\n11', 'M'),
(85, 'Orologi', 'Orologio Al Quarzo Casio Collection Mtp-1302pd-1a1vef', 611, 173.41, 'Orologio Al Quarzo Casio Collection Mtp-1302pd-1a1vef\nOrologio Al Quarzo Casio Collection Mtp-1302pd-1a1vef Cassa Rotonda Ottone Argentato 38.5 mm Quadrante Nero Cinturino Acciaio Argentato\nRiferimento: 1605836\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nMTP-1302PD-1A1VEF\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nOttone\nColore della cassa\nArgentato\nFinitura della cassa\nBrillante\nOuverture boÃ®tier (mm)\n38.5\nSpessore della cassa (mm)\n9.2\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nNero\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nEasy click\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nBrossÃ©\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nDatario\nLuminescente\nSÃ¬\nFosforescente\nSÃ¬', 'M'),
(86, 'Orologi', 'Orologio Al Quarzo Maserati Successo R8873621002', 471, 137.33, 'Orologio Al Quarzo Maserati Successo R8873621002\nOrologio Al Quarzo Maserati Successo R8873621002 Cronografo Cassa Rotonda Acciaio Argentato 44 mm Quadrante Blu Cinturino Acciaio Argentato\nRiferimento: 1619731\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nR8873621002\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n44\nSpessore della cassa (mm)\n11\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nBlu\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nLisse\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nDatario\nCronografo\nSÃ¬\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'M'),
(87, 'Orologi', 'Orologio Al Quarzo Festina Timeless Chronograph F20560/5', 835, 200.77, 'Orologio Al Quarzo Festina Timeless Chronograph F20560/5\nOrologio Al Quarzo Festina Timeless Chronograph F20560/5 Cronografo Cassa Rotonda Acciaio Argentato 45 mm Quadrante Nero Cinturino Acciaio Argentato\nRiferimento: 1679707\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nF20560/5\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n45\nSpessore della cassa (mm)\n11.8\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nNero\nIndici\nIndici a bastoni\nColore della ghiera\nNero\nGhiera girevole\nSÃ¬\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nLisse\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nImpermeabilitÃ \n100 m (10atm)\nDatario o multifunzione\nDatario\nCronografo\nSÃ¬\nTachimetro\nSÃ¬', 'M'),
(88, 'Orologi', 'Orologio Al Quarzo Maserati Successo R8871621011', 2387, 227.18, 'Orologio Al Quarzo Maserati Successo R8871621011\nOrologio Al Quarzo Maserati Successo R8871621011 Cronografo Cassa Rotonda Acciaio Nero 44 mm Quadrante Nero Cinturino Silicone Nero\nRiferimento: 1669710\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nR8871621011\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nNero\nFinitura della cassa\nOpaco\nOuverture boÃ®tier (mm)\n44\nSpessore della cassa (mm)\n12.5\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nNero\nIndici\nIndici a bastoni\nMateriale della ghiera\nPVD\nColore della ghiera\nNero\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nSilicone\nColore del cinturino\nNero\nFinitura del cinturino\nStriÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nDatario\nCronometro\nSÃ¬\nCronografo\nSÃ¬\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'M'),
(89, 'Orologi', 'Orologio Al Quarzo Fossil Sport Tourer Fs6045', 1471, 173.93, 'Orologio Al Quarzo Fossil Sport Tourer Fs6045\nOrologio Al Quarzo Fossil Sport Tourer Fs6045 Cronografo Cassa Rotonda Acciaio Argentato 42 mm Quadrante Nero Cinturino Acciaio Argentato\nRiferimento: 1692485\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nFS6045\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n42\nSpessore della cassa (mm)\n13\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nNero\nIndici\nNumeri arabi\nMateriale della ghiera\nAcciaio\nColore della ghiera\nNero\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nLiscio\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nDatario\nCronografo\nSÃ¬\nTachimetro\nSÃ¬', 'M'),
(90, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Classic St Mawes Arctic Dw00100626', 2133, 224.11, 'Orologio Al Quarzo Daniel Wellington Classic St Mawes Arctic Dw00100626\nOrologio Al Quarzo Daniel Wellington Classic St Mawes Arctic Dw00100626 Cassa Rotonda Acciaio Rosato 40 mm Quadrante Blu Cinturino Pelle Marrone\nRiferimento: 1691079\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nDW00100626\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nRosato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n40\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nBlu\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nRosato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nPelle\nColore del cinturino\nMarrone\nFinitura del cinturino\nLiscio\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'M'),
(91, 'Orologi', 'Orologio Al Quarzo Casio Collection W-800h-1bves', 616, 84.62, 'Orologio Al Quarzo Casio Collection W-800h-1bves\nOrologio Al Quarzo Casio Collection W-800h-1bves Cronografo Cassa Quadrata Resina Nero 44.2 mm Quadrante Nero Cinturino Resina Nero\nRiferimento: 1672646\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nW-800H-1BVES\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nQuadrata\nMateriale della cassa\nResina\nColore della cassa\nNero\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n44.2\nSpessore della cassa (mm)\n13.4\nMateriale del vetro\nPlastica/Acrilico\nDisplay orario\nDigitale\nColore sfondo cassa\nNero\nIndici\nNumeri arabi\nMateriale della ghiera\nResina\nColore della ghiera\nNero\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nResina\nColore del cinturino\nNero\nFinitura del cinturino\nLisse\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n100 m (10atm)\nDatario o multifunzione\nMultifunzione\nSveglia\nSÃ¬\nCronometro\nSÃ¬\nCronografo\nSÃ¬\nLuminescente\nSÃ¬', 'M'),
(92, 'Orologi', 'Orologio Al Quarzo Maserati Successo R8873621013', 2685, 168.41, 'Orologio Al Quarzo Maserati Successo R8873621013\nOrologio Al Quarzo Maserati Successo R8873621013 Cronografo Cassa Rotonda Acciaio Dorato 44 mm Quadrante Nero Cinturino Acciaio Dorato\nRiferimento: 1664202\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nR8873621013\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nDorato\nFinitura della cassa\nOpaco e brillante\nOuverture boÃ®tier (mm)\n44\nSpessore della cassa (mm)\n11\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nNero\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nDorato\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nDorato\nFinitura del cinturino\nLisse\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nDatario\nCronografo\nSÃ¬\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'M');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto_ordine`
--

CREATE TABLE `prodotto_ordine` (
  `id_ordine` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `categoria` char(20) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `quantita_disponibile` int(11) DEFAULT '0',
  `prezzo` float DEFAULT NULL,
  `descrizione` varchar(2000) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `q` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prodotto_ordine`
--

INSERT INTO `prodotto_ordine` (`id_ordine`, `id_prod`, `categoria`, `nome`, `quantita_disponibile`, `prezzo`, `descrizione`, `sex`, `q`) VALUES
(0, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 1342, 118.37, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'D', 1),
(3, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 1342, 118.37, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'D', 1),
(4, 17, 'Bracciali', 'Bangle Gold Essence Oro Giallo', 1545, 180.99, 'Bangle Gold Essence Oro Giallo\nBangle Gold Essence Oro Giallo 750/1000 1686820\nRiferimento: 1686820\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nAnellini di regolazione\nOtto di sicurezza\n\nhttps://www.stroilioro.com/it_IT/p/bangle-gold-essence-oro-giallo/1686820.html', 'D', 1),
(5, 5, 'Anelli', 'Anello Solitario Sophia Oro Bianco Diamante', 88, 193.18, 'Anello Solitario Sophia Oro Bianco Diamante\nAnello Solitario Sophia Oro Bianco 375/1000 Diamante Bianco 0,1 ct 1431359\nRiferimento: 1431359\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n9\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n16\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.025\nTipo di incastonatura\nPavÃ©\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n7\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.075\nTipo di incastonatura\nPavÃ©\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-sophia-oro-bianco-diamante/1431359.html', 'D', 1),
(6, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 1342, 118.37, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'D', 1),
(6, 4, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 783, 203.79, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425536\nRiferimento: 1425536\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425536.html', 'D', 1),
(6, 42, 'Anelli', 'Anello Fascia Man Code Acciaio Bicolore Bianco / Nero', 2500, 100.41, 'Anello Fascia Man Code Acciaio Bicolore Bianco / Nero\nAnello Fascia Man Code Acciaio Bicolore Bianco / Nero 1618731\nRiferimento: 1618731\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBicolore Bianco / Nero\nGaranzia (mesi)\n24\n', 'M', 1),
(7, 5, 'Anelli', 'Anello Solitario Sophia Oro Bianco Diamante', 88, 193.18, 'Anello Solitario Sophia Oro Bianco Diamante\nAnello Solitario Sophia Oro Bianco 375/1000 Diamante Bianco 0,1 ct 1431359\nRiferimento: 1431359\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n9\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n16\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.025\nTipo di incastonatura\nPavÃ©\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n7\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.075\nTipo di incastonatura\nPavÃ©\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-sophia-oro-bianco-diamante/1431359.html', 'D', 1),
(7, 38, 'Orecchini', 'Orecchini Lobo Gabrielle Oro Bianco Perla Akoya', 1756, 183.42, 'Orecchini Lobo Gabrielle Oro Bianco Perla Akoya\nOrecchini Lobo Gabrielle Oro Bianco 375/1000 Perla Akoya Bianco 1413493\nRiferimento: 1413493\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nAnellini di regolazione\nFarfallina\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla Akoya', 'D', 1),
(7, 39, 'Orologi', 'Orologio Al Quarzo Casio Vintage La680wea-7ef', 2190, 254.05, 'Orologio Al Quarzo Casio Vintage La680wea-7ef\nOrologio Al Quarzo Casio Vintage La680wea-7ef Cassa Quadrata Resina Argentato 28 mm Quadrante Argentato Cinturino Acciaio Argentato\nRiferimento: 1610457\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nLA680WEA-7EF\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nQuadrata\nMateriale della cassa\nResina\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nSpessore della cassa (mm)\n8.6\nMateriale del vetro\nPlastica/Acrilico\nDisplay orario\nDigitale\nColore sfondo cassa\nArgentato\nIndici\nNumeri arabi\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nEasy click\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nBrossÃ©\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nFibbia scorrevole\nImpermeabilitÃ \n10 m (1atm)\nDatario o multifunzione\nDatario\nCronometro\nSÃ¬', 'D', 1),
(8, 54, 'Anelli', 'Anello Chevalier Man Code Acciaio Agata', 1697, 294.06, 'Anello Chevalier Man Code Acciaio Agata\nAnello Chevalier Man Code Acciaio Agata Nero 1666486\nRiferimento: 1666486\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMisura anello\n18\nMateriale principale\nAcciaio\nColore del materiale\nBianco\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nAgata\nColore\nNero\nTaglio della pietra o forma della perla\nQuadrato\nTipo di incastonatura\nChiuso\n', 'M', 1),
(9, 50, 'Orologi', 'Orologio Al Quarzo Stroili Brera', 2793, 290.4, 'Orologio Al Quarzo Stroili Brera\nOrologio Al Quarzo Stroili Brera Cassa Rotonda Acciaio Rosato 30 mm Quadrante Rosato Cinturino Acciaio Rosato\nRiferimento: 1671058\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nSR.2107L/09M\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nRosato\nFinitura della cassa\nBrillante\nOuverture boÃ®tier (mm)\n30\nSpessore della cassa (mm)\n7.35\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nRosato\nIndici\nNumeri romani e indici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nRosato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nRosato\nFinitura del cinturino\nAjourÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nFibbia scorrevole\nImpermeabilitÃ \n30 m (3atm)', 'F', 1),
(12, 23, 'Collane', 'Collana Crystal Gold Oro Giallo Cristallo', 2324, 171.85, 'Collana Crystal Gold Oro Giallo Cristallo\nCollana Crystal Gold Oro Giallo 750/1000 Cristallo Bianco 42 cm 1620807\nRiferimento: 1620807\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n750/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nPIETRA PRINCIPALE\nTipologia di Pietra\nCristallo\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nResina\n\nhttps://www.stroilioro.com/it_IT/p/collana-crystal-gold-oro-giallo-cristallo/1620807.html', 'F', 1),
(12, 50, 'Orologi', 'Orologio Al Quarzo Stroili Brera', 2792, 290.4, 'Orologio Al Quarzo Stroili Brera\nOrologio Al Quarzo Stroili Brera Cassa Rotonda Acciaio Rosato 30 mm Quadrante Rosato Cinturino Acciaio Rosato\nRiferimento: 1671058\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nSR.2107L/09M\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nRosato\nFinitura della cassa\nBrillante\nOuverture boÃ®tier (mm)\n30\nSpessore della cassa (mm)\n7.35\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nRosato\nIndici\nNumeri romani e indici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nRosato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nRosato\nFinitura del cinturino\nAjourÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nFibbia scorrevole\nImpermeabilitÃ \n30 m (3atm)', 'F', 1),
(14, 21, 'Bracciali', 'Bracciale Tennis L\'homme Diamant Oro Bianco Diamante', 1183, 198.46, 'Bracciale Tennis L\'homme Diamant Oro Bianco Diamante\nBracciale Tennis L\'homme Diamant Oro Bianco 375/1000 Diamante Nero 0,1 ct 19.5 cm 1412975\nRiferimento: 1412975\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n20\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nNero\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.1\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-lhomme-diamant-oro-bianco-diamante/1412975.html\n', 'F', 1),
(15, 91, 'Orologi', 'Orologio Al Quarzo Casio Collection W-800h-1bves', 617, 84.62, 'Orologio Al Quarzo Casio Collection W-800h-1bves\nOrologio Al Quarzo Casio Collection W-800h-1bves Cronografo Cassa Quadrata Resina Nero 44.2 mm Quadrante Nero Cinturino Resina Nero\nRiferimento: 1672646\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nReferenza fornitore\nW-800H-1BVES\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nQuadrata\nMateriale della cassa\nResina\nColore della cassa\nNero\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n44.2\nSpessore della cassa (mm)\n13.4\nMateriale del vetro\nPlastica/Acrilico\nDisplay orario\nDigitale\nColore sfondo cassa\nNero\nIndici\nNumeri arabi\nMateriale della ghiera\nResina\nColore della ghiera\nNero\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nResina\nColore del cinturino\nNero\nFinitura del cinturino\nLisse\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n100 m (10atm)\nDatario o multifunzione\nMultifunzione\nSveglia\nSÃ¬\nCronometro\nSÃ¬\nCronografo\nSÃ¬\nLuminescente\nSÃ¬', 'M', 1),
(16, 8, 'Anelli', 'Anello Solitario Charlotte Oro Giallo Rubino Diamante', 2858, 78.67, 'Anello Solitario Charlotte Oro Giallo Rubino Diamante\nAnello Solitario Charlotte Oro Giallo 375/1000 Rubino 0,57 ct Diamante Bianco 0,174 ct 1429555\nRiferimento: 1429555\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nRubino\nColore\nRosso\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n0.57\nTipo di incastonatura\nGriffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.174\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-giallo-rubino-diamante/1429555.html', 'F', 1),
(17, 5, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 2324, 298.78, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425536\nRiferimento: 1425536\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425536.html', 'F', 1),
(18, 4, 'Anelli', 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante', 96, 73.92, 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante\nAnello Solitario Charlotte Oro Bianco 375/1000 Zaffiro 1 ct Diamante Bianco 0,3 ct 1416652\nRiferimento: 1416652\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nZaffiro\nColore\nBlu\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n1\nTipo di incastonatura\n4 griffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.3\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-bianco-zaffiro-diamante/1416652.html', 'F', 1),
(19, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 829, 91.1, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'F', 1),
(21, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 828, 91.1, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'F', 1),
(22, 3, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 280, 260.45, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,108 ct 1425706\nRiferimento: 1425706\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.085\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.7\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n4\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.016\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.7\nTERZA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n4\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.001\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.75\nQUARTA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.006\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.08\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425706.html', 'F', 1),
(22, 42, 'Orecchini', 'Orecchini Lobo Gabrielle Oro Bianco Perla Akoya', 233, 138.65, 'Orecchini Lobo Gabrielle Oro Bianco Perla Akoya\nOrecchini Lobo Gabrielle Oro Bianco 375/1000 Perla Akoya Bianco 1413493\nRiferimento: 1413493\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nAnellini di regolazione\nFarfallina\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla Akoya', 'F', 1),
(23, 3, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 279, 260.45, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,108 ct 1425706\nRiferimento: 1425706\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.085\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.7\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n4\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.016\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.7\nTERZA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n4\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.001\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.75\nQUARTA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.006\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n0.08\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425706.html', 'F', 1),
(23, 4, 'Anelli', 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante', 95, 73.92, 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante\nAnello Solitario Charlotte Oro Bianco 375/1000 Zaffiro 1 ct Diamante Bianco 0,3 ct 1416652\nRiferimento: 1416652\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nZaffiro\nColore\nBlu\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n1\nTipo di incastonatura\n4 griffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.3\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-bianco-zaffiro-diamante/1416652.html', 'F', 1),
(24, 4, 'Anelli', 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante', 94, 73.92, 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante\nAnello Solitario Charlotte Oro Bianco 375/1000 Zaffiro 1 ct Diamante Bianco 0,3 ct 1416652\nRiferimento: 1416652\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nZaffiro\nColore\nBlu\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n1\nTipo di incastonatura\n4 griffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.3\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-bianco-zaffiro-diamante/1416652.html', 'F', 1),
(25, 5, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 2323, 298.78, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425536\nRiferimento: 1425536\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425536.html', 'F', 4),
(26, 5, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 2322, 298.78, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425536\nRiferimento: 1425536\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425536.html', 'F', 1),
(27, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 827, 91.1, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'F', 5),
(27, 5, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 2321, 298.78, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425536\nRiferimento: 1425536\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425536.html', 'F', 3),
(28, 15, 'Bracciali', 'Bracciale Catena Colette Oro Bicolore', 2365, 224.71, 'Bracciale Catena Colette Oro Bicolore\nBracciale Catena Colette Oro Bicolore 375/1000 Maglia Corda 18 cm 1411613\nRiferimento: 1411613\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBicolore\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nSpessore (mm)\n7.50\nTipologia catena\nCorda\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-catena-colette-oro-bicolore/1411613.html', 'F', 6),
(29, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 826, 91.1, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'F', 800),
(29, 35, 'Orecchini', 'Orecchini A Cerchio Toujours Oro Giallo Cubic Zirconia', 512, 29.36, 'Orecchini A Cerchio Toujours Oro Giallo Cubic Zirconia\nOrecchini A Cerchio Toujours Oro Giallo 375/1000 Diametro 8 mm Cubic Zirconia Multicolore 1428541\nRiferimento: 1428541\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nTipo di orecchino\nCerchio\nForma\nCerchio\nDiametro degli orecchini a cerchio\n8\nAnellini di regolazione\nChiusura a scatto\nPIETRA PRINCIPALE\nTipologia di Pietra\nCubic Zirconia\nColore\nMulticolore\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n', 'F', 9),
(30, 69, 'Bracciali', 'Bracciale L\'homme Or Oro Giallo', 2872, 126.62, 'Bracciale L\'homme Or Oro Giallo\nBracciale L\'homme Or Oro Giallo 375/1000 19 + 2 cm 1412924\nRiferimento: 1412924\n\nDETTAGLI DEL PRODOTTO\nGenere\nUomo\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nMateriale\nCordino\nColore del materiale\nNero\nLunghezza (cm)\n21\nAnellini di regolazione\nAnello molla\nLunghezza minima (cm)\n19.00', 'M', 5),
(31, 14, 'Bracciali', 'Bracciale Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia', 195, 52.43, 'Bracciale Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia\nBracciale Gabrielle Oro Bianco 375/1000 Perla D\'Acqua Dolce Bianco Cubic Zirconia Bianco 18.5 cm 1413484\nRiferimento: 1413484\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n19\nAnellini di regolazione\nNodo scorrevole\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla D\'Acqua Dolce\nColore\nBianco\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra\nDiametro pietra (mm)\n6\nPIETRA SECONDARIA\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-gabrielle-oro-bianco-perla-dacqua-dolce-cubic-zirconia/1413484.html', 'F', 1),
(31, 15, 'Bracciali', 'Bracciale Catena Colette Oro Bicolore', 2364, 224.71, 'Bracciale Catena Colette Oro Bicolore\nBracciale Catena Colette Oro Bicolore 375/1000 Maglia Corda 18 cm 1411613\nRiferimento: 1411613\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBicolore\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nSpessore (mm)\n7.50\nTipologia catena\nCorda\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-catena-colette-oro-bicolore/1411613.html', 'F', 1),
(31, 51, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Petite Lumine Bezel 5-link Arctic Dw00100664', 168, 35.93, 'Orologio Al Quarzo Daniel Wellington Petite Lumine Bezel 5-link Arctic Dw00100664\nOrologio Al Quarzo Daniel Wellington Petite Lumine Bezel 5-link Arctic Dw00100664 Cassa Rotonda Acciaio Argentato 28 mm Quadrante Blu Cinturino Acciaio Argentato\nRiferimento: 1691081\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nDW00100664\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nArgentato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nBlu\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nArgentato\nTipologia di cinturino\nMaglie\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nArgentato\nFinitura del cinturino\nLiscio\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nRimozione Maglia\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'F', 1),
(32, 4, 'Anelli', 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante', 93, 73.92, 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante\nAnello Solitario Charlotte Oro Bianco 375/1000 Zaffiro 1 ct Diamante Bianco 0,3 ct 1416652\nRiferimento: 1416652\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nZaffiro\nColore\nBlu\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n1\nTipo di incastonatura\n4 griffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.3\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-bianco-zaffiro-diamante/1416652.html', 'F', 4),
(32, 5, 'Anelli', 'Anello Solitario Grace Oro Bianco Diamante', 2320, 298.78, 'Anello Solitario Grace Oro Bianco Diamante\nAnello Solitario Grace Oro Bianco 375/1000 Diamante Bianco 0,15 ct 1425536\nRiferimento: 1425536\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.15\nTipo di incastonatura\n4 griffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-grace-oro-bianco-diamante/1425536.html', 'F', 1),
(32, 8, 'Anelli', 'Anello Solitario Charlotte Oro Giallo Rubino Diamante', 2857, 78.67, 'Anello Solitario Charlotte Oro Giallo Rubino Diamante\nAnello Solitario Charlotte Oro Giallo 375/1000 Rubino 0,57 ct Diamante Bianco 0,174 ct 1429555\nRiferimento: 1429555\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nRubino\nColore\nRosso\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n0.57\nTipo di incastonatura\nGriffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.174\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-giallo-rubino-diamante/1429555.html', 'F', 4),
(32, 14, 'Bracciali', 'Bracciale Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia', 194, 52.43, 'Bracciale Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia\nBracciale Gabrielle Oro Bianco 375/1000 Perla D\'Acqua Dolce Bianco Cubic Zirconia Bianco 18.5 cm 1413484\nRiferimento: 1413484\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n19\nAnellini di regolazione\nNodo scorrevole\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla D\'Acqua Dolce\nColore\nBianco\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra\nDiametro pietra (mm)\n6\nPIETRA SECONDARIA\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-gabrielle-oro-bianco-perla-dacqua-dolce-cubic-zirconia/1413484.html', 'F', 3),
(32, 17, 'Bracciali', 'Bracciale Sophia Oro Bianco Diamante', 82, 247.31, 'Bracciale Sophia Oro Bianco Diamante\nBracciale Ovale Sophia Oro Bianco 375/1000 Diamante Nero 0,11 ct Diamante Bianco 0,04 ct Diamante Bianco 0,06 ct 1429690\nRiferimento: 1429690\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n18\nTipologia catena\nRolo\nAnellini di regolazione\nAnello molla\nForma/Simbolo saldato alla catena\nOvale\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nNero\nNumero di Pietre\n6\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.03\nDiametro pietra (mm)\n1\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nNero\nNumero di Pietre\n11\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.08\nDiametro pietra (mm)\n1.1\nTERZA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.04\nDiametro pietra (mm)\n0.9\nQUARTA PIETRA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n12\nTaglio della pietra o forma della perla\nRotondo\nCarati (ct)\n0.06\nDiametro pietra (mm)\n0.9\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-sophia-oro-bianco-diamante/1429690.html', 'F', 1),
(32, 25, 'Collane', 'Collana Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia', 613, 161.26, 'Collana Gabrielle Oro Bianco Perla D\'Acqua Dolce Cubic Zirconia\nCollana Gabrielle Oro Bianco 375/1000 Perla D\'Acqua Dolce Bianco Cubic Zirconia Bianco 45 cm 1413485\nRiferimento: 1413485\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n45\nPIETRA PRINCIPALE\nTipologia di Pietra\nPerla D\'Acqua Dolce\nColore\nBianco\nTaglio della pietra o forma della perla\nRotondo\nTipo di incastonatura\nForato in pietra\nDiametro pietra (mm)\n6\nPIETRA SECONDARIA\nTipologia di Pietra\nCubic Zirconia\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/collana-gabrielle-oro-bianco-perla-dacqua-dolce-cubic-zirconia/1413485.html\n\n', 'F', 2),
(32, 44, 'Orologi', 'Smartwatch Garmin Venu 010-02785-04', 356, 270.99, 'Smartwatch Garmin Venu 010-02785-04\nSmartwatch Garmin Venu 010-02785-04 Cassa Rotonda Polimero Fibrorinforzato Avorio 41 mm Cinturino Silicone Avorio\nRiferimento: 1690366\n\nDETTAGLI DEL PRODOTTO\nGenere\nUnisex\nReferenza fornitore\n010-02785-04\nGaranzia (mesi)\n24\nMeccanismo\nSmartwatch\nForma della cassa\nRotonda\nMateriale della cassa\nPolimero Fibrorinforzato\nColore della cassa\nAvorio\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n41\nSpessore della cassa (mm)\n12\nMateriale del vetro\nMinerale\nDisplay orario\nSmart Display\nColore sfondo cassa\nMulticolore\nQuadrante touch\nSÃ¬\nQuadrante personalizzabile\nSÃ¬\nIndici\nNumeri arabi\nMateriale della ghiera\nAcciaio\nColore della ghiera\nDorato\nTipologia di cinturino\nMorbido\nMateriale del cinturnino\nSilicone\nColore del cinturino\nAvorio\nFinitura del cinturino\nLisse\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nCinturino Forato\nTipologia di chiusura\nFibbia ad ardiglione\nImpermeabilitÃ \n50 m (5atm)\nDatario o multifunzione\nMultifunzione\nSveglia\nSÃ¬\nCronometro\nSÃ¬\nSistemi compatibili\nAndroid, IOS, OS\nNotifiche\nApplications, Batterie, Calendrier, Appels, Messages, Training\nMicrofono / speaker\nSÃ¬\nTipo di caricatore\nCavo USB', 'F', 1),
(33, 4, 'Anelli', 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante', 89, 73.92, 'Anello Solitario Charlotte Oro Bianco Zaffiro Diamante\nAnello Solitario Charlotte Oro Bianco 375/1000 Zaffiro 1 ct Diamante Bianco 0,3 ct 1416652\nRiferimento: 1416652\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nZaffiro\nColore\nBlu\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nOvale\nCarati (ct)\n1\nTipo di incastonatura\n4 griffe\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.3\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/anello-solitario-charlotte-oro-bianco-zaffiro-diamante/1416652.html', 'F', 2),
(34, 24, 'Collane', 'Catena Colette Oro Giallo', 1029, 196.78, 'Catena Colette Oro Giallo\nCatena Colette Oro Giallo 375/1000 Maglia Pop Corn 42 cm 1413173\nRiferimento: 1413173\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n42\nSpessore (mm)\n3.00\nTipologia catena\nPop corn\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/catena-colette-oro-giallo/1413173.html', 'F', 3),
(35, 13, 'Bracciali', 'Bracciale Catena Colette Oro Giallo', 1460, 229.3, 'Bracciale Catena Colette Oro Giallo\nBracciale Catena Colette Oro Giallo 375/1000 Maglia Bizantina 19 cm 1411629\nRiferimento: 1411629\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nGiallo\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n19\nSpessore (mm)\n1.40\nTipologia catena\nBizantina\nAnellini di regolazione\nMoschettone\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-catena-colette-oro-giallo/1411629.html\n', 'F', 1),
(37, 47, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Petite-ashfield Dw00100245', 2257, 291.82, 'Orologio Al Quarzo Daniel Wellington Petite-ashfield Dw00100245\nOrologio Al Quarzo Daniel Wellington Petite-ashfield Dw00100245 Cassa Rotonda Acciaio Rosato 28 mm Quadrante Nero Cinturino Acciaio Nero\nRiferimento: 1656664\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nDW00100245\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nRosato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nSpessore della cassa (mm)\n6\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nNero\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nRosato\nTipologia di cinturino\nMilanese\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nNero\nFinitura del cinturino\nAjourÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'F', 1),
(38, 2, 'Anelli', 'Anello Trilogy Grace Oro Bianco Diamante', 26, 91.1, 'Anello Trilogy Grace Oro Bianco Diamante\nAnello Trilogy Grace Oro Bianco 375/1000 Diamante Bianco 0,16 ct 1425791\nRiferimento: 1425791\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMisura anello\n7\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nPIETRA PRINCIPALE\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n1\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.05\nTipo di incastonatura\n4 griffe\nDiametro pietra (mm)\n2.3\nPIETRA SECONDARIA\nTipologia di Pietra\nDiamante\nColore\nBianco\nNumero di Pietre\n2\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n0.11\nTipo di incastonatura\nGriffe\nDiametro pietra (mm)\n2.2\n\nhttps://www.stroilioro.com/it_IT/p/anello-trilogy-grace-oro-bianco-diamante/1425791.html', 'F', 2),
(40, 20, 'Bracciali', 'Bracciale Tennis Charlotte Oro Bianco Rubino', 2149, 151.34, 'Bracciale Tennis Charlotte Oro Bianco Rubino\nBracciale Tennis Charlotte Oro Bianco 375/1000 Rubino 1,8 ct 17 cm 1417346\nRiferimento: 1417346\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n17\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nRubino\nColore\nRosso\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n1.8\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-charlotte-oro-bianco-rubino/1417346.html\n', 'F', 1),
(41, 20, 'Bracciali', 'Bracciale Tennis Charlotte Oro Bianco Rubino', 2148, 151.34, 'Bracciale Tennis Charlotte Oro Bianco Rubino\nBracciale Tennis Charlotte Oro Bianco 375/1000 Rubino 1,8 ct 17 cm 1417346\nRiferimento: 1417346\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nMateriale principale\nOro\nColore del materiale\nBianco\nTitolo metallo \n375/1000\nGaranzia (mesi)\n24\nLunghezza (cm)\n17\nAnellini di regolazione\nOtto di sicurezza\nPIETRA PRINCIPALE\nTipologia di Pietra\nRubino\nColore\nRosso\nTaglio della pietra o forma della perla\nBrillante / Tondo\nCarati (ct)\n1.8\nTipo di incastonatura\nGriffe\n\nhttps://www.stroilioro.com/it_IT/p/bracciale-tennis-charlotte-oro-bianco-rubino/1417346.html\n', 'F', 3),
(41, 46, 'Orologi', 'Orologio Al Quarzo Daniel Wellington Petite-evergold Dw00100350', 136, 63.88, 'Orologio Al Quarzo Daniel Wellington Petite-evergold Dw00100350\nOrologio Al Quarzo Daniel Wellington Petite-evergold Dw00100350 Cassa Rotonda Acciaio Dorato 28 mm Quadrante Bianco Cinturino Acciaio Dorato\nRiferimento: 1671857\n\nDETTAGLI DEL PRODOTTO\nGenere\nDonna\nReferenza fornitore\nDW00100350\nGaranzia (mesi)\n24\nMeccanismo\nAl Quarzo\nTipo di movimento\nGiapponese\nForma della cassa\nRotonda\nMateriale della cassa\nAcciaio\nColore della cassa\nDorato\nFinitura della cassa\nLiscio\nOuverture boÃ®tier (mm)\n28\nSpessore della cassa (mm)\n6\nMateriale del vetro\nMinerale\nDisplay orario\nAnalogico\nColore sfondo cassa\nBianco\nIndici\nIndici a bastoni\nMateriale della ghiera\nAcciaio\nColore della ghiera\nDorato\nTipologia di cinturino\nMilanese\nMateriale del cinturnino\nAcciaio\nColore del cinturino\nDorato\nFinitura del cinturino\nAjourÃ©\nCinturino intercambiabile\nSÃ¬\nCinturino regolabile\nSÃ¬\nSistema di regolazione\nFibbia Scorrevole\nTipologia di chiusura\nChiusura dÃ©ployante semplice\nImpermeabilitÃ \n30 m (3atm)\nUnitÃ  di misura dell\'autonomia\nMesi\nAutonomia\n24', 'F', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `username` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `cognome` char(20) DEFAULT NULL,
  `nome` char(20) DEFAULT NULL,
  `admin` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`username`, `email`, `password`, `telefono`, `cognome`, `nome`, `admin`) VALUES
('root', 'pasqualeiannone@liberi.it', '9c7db988712bc02eb3e952ec721c11e3232672be', '', '', '', 1),
('danny', 'danielesiano03@gmail.com', '9c7db988712bc02eb3e952ec721c11e3232672be', '3298542243', 'Fimiani', 'Daniele', 0),
('manu', '', '9c7db988712bc02eb3e952ec721c11e3232672be', '3207070440', 'D\'avanzo', 'Manuele', 0),
('gio', '', 'ac859f658354bb2b3cbf0dad927a0d8aed1c052a', '', '', '', 0),
('admin', '', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '', '', 1),
('test', '', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684', '', '', '', 0),
('prova', 'danielesiano03@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', '4343433', 'fimi', 'dadda', 0),
('rett', '', '1c589c507ef9639b583f1eb628eeb9d46f9a1f41', '', '', '', 0),
('rett45', '', '163907758394e5df46493dcc6d9f48d412c05554', '', '', '', 0),
('roote', 'danielesiano03@gmail.com', '482eb9fcbff61e68be14a22327c3a35121da901f', '', '', '', 0),
('user123', 'danielesiano03@gmail.com', 'c49b96db6ccfbd6d7afdde9234ddace9a326b4c2', '3298542243', '', 'Daniele Fimiani', 0),
('user345', 'danielesiano03@gmail.com', '65cf44ad1fc230b01ecab63072cb1bce8e4c7524', '3298542243', '', 'Daniele Fimiani', 0),
('add', 'danielesiano03@gmail.com', 'f416168b5eb1a5be010bbbc327eabee876de8b05', '3298542243', '', 'Daniele Fimiani', 0),
('assss', 'danielesiano03@gmail.com', '58d1bbce297de3c304a9fefc3b483181872a5c6b', '3298542243', '', 'Daniele Fimiani', 0),
('alessio', 'danielesiano03@gmail.com', '061214bafcb6598eb607452aa5cd8c79975dad78', '3298542243', '', 'Daniele Fimiani', 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `carrello`
--
ALTER TABLE `carrello`
  ADD PRIMARY KEY (`id_prod`,`id_user`);

--
-- Indici per le tabelle `img_prodotti`
--
ALTER TABLE `img_prodotti`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Indici per le tabelle `indirizzo`
--
ALTER TABLE `indirizzo`
  ADD PRIMARY KEY (`user_id`);

--
-- Indici per le tabelle `ordine`
--
ALTER TABLE `ordine`
  ADD PRIMARY KEY (`id_ordine`);

--
-- Indici per le tabelle `preferiti`
--
ALTER TABLE `preferiti`
  ADD PRIMARY KEY (`id_prod`,`id_user`);

--
-- Indici per le tabelle `prodotto`
--
ALTER TABLE `prodotto`
  ADD PRIMARY KEY (`id_prod`),
  ADD UNIQUE KEY `id_prod` (`id_prod`);

--
-- Indici per le tabelle `prodotto_ordine`
--
ALTER TABLE `prodotto_ordine`
  ADD PRIMARY KEY (`id_ordine`,`id_prod`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `usurname` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `img_prodotti`
--
ALTER TABLE `img_prodotti`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;
--
-- AUTO_INCREMENT per la tabella `ordine`
--
ALTER TABLE `ordine`
  MODIFY `id_ordine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT per la tabella `prodotto`
--
ALTER TABLE `prodotto`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
