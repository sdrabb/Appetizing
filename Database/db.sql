-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2017 at 10:04 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id501917_appetizing`
--
CREATE DATABASE IF NOT EXISTS `id501917_appetizing` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id501917_appetizing`;

-- --------------------------------------------------------

--
-- Table structure for table `Antipasto`
--

CREATE TABLE `Antipasto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Antipasto`
--

INSERT INTO `Antipasto` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(2, 'Crostini Misti', 'piatto di crostini misti', 'http://blog.giallozafferano.it/dicembre63/wp-content/uploads/2015/01/image.jpg', 4),
(3, 'Patate fritte', 'piatto di patate fritte con salsa', 'http://static.salepepe.it/files/2014/03/come-fare-patate-fritte_05.jpg', 3),
(4, 'Totani fritti', 'piatto di totani fritti', 'http://blog.giallozafferano.it/isaporiditerry/wp-content/uploads/2016/01/1051.jpg', 6),
(5, 'Anelli di cipolla fritti', 'Anelli di cipolla in pastella\\r\\nAntipasti\\r\\n\\r\\nAnelli di cipolla in pastellaGuarda altre ricette simili\\r\\n89Aggiungi al tuo ricettario\\r\\nDifficoltà:\\r\\nbassa\\r\\nPreparazione:\\r\\n10 min\\r\\nCottura:\\r\\n30 min\\r\\nDosi per:\\r\\n4 persone\\r\\nCosto:\\r\\nbasso\\r\\nNOTA: + 30 minuti di riposo\\r\\nPresentazione\\r\\n\\r\\nGli anelli di cipolla in pastella formano una pietanza rustica e stuzzicante: possono essere serviti come stuzzichini durante un aperitivo, come accompagnamento ad un piatto di carne oppure in abbinamento ad un un piatto di ', 'http://www.giallozafferano.it/images/ricette/6/614/foto_hd/hd650x433_wm.jpg', 3.2),
(6, 'Alici marinate', 'Le alici marinate vengono servite come antipasto e spesso si trovano anche nei menù dei ristoranti. Il gusto della marinatura, intenso e acidulato, sposa la tenerezza del pesce azzurro, rendendo questo piatto molto saporito e fresco', 'http://www.giallozafferano.it/images/ricette/1/184/foto_hd/hd650x433_wm.jpg', 4),
(7, 'Asparagi allo zabaione', 'Gli asparagi allo zabaione salato sono un antipasto gustoso e originale e rappresentano un modo alternativo di servire gli asparagi verdi, che vengono bolliti e per finire conditi con una soffice e cremosa salsa.', 'http://www.giallozafferano.it/images/ricette/12/1249/foto_hd/hd650x433_wm.jpg', 2),
(8, 'Asparagi mummia', 'nack sfizioso e nutriente ai vostri bambini! Gli asparagi mummia sono un esempio: strisce di pasta sfoglia che simulano le bende, avvolgono un ripieno di prosciutto cotto e asparagi! ', 'http://www.giallozafferano.it/images/ricette/38/3818/foto_hd/hd650x433_wm.jpg', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenu`
--

CREATE TABLE `AntipastoMenu` (
  `antipasto` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenu`
--

INSERT INTO `AntipastoMenu` (`antipasto`, `menu`) VALUES
(2, 8),
(3, 5),
(3, 10),
(4, 6),
(4, 7),
(5, 7),
(5, 8),
(6, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenuCompleto`
--

CREATE TABLE `AntipastoMenuCompleto` (
  `antipasto` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenuCompleto`
--

INSERT INTO `AntipastoMenuCompleto` (`antipasto`, `menucompleto`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 7),
(3, 1),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 8),
(5, 10),
(6, 7),
(6, 10),
(7, 2),
(7, 8),
(7, 10),
(8, 2),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Dolce`
--

CREATE TABLE `Dolce` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dolce`
--

INSERT INTO `Dolce` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'panna cotta', 'piatto di panna cotta con salsa', 'http://assets.epicurious.com/photos/5761d0268accf290434553aa/master/pass/panna-cotta.jpg', 7),
(2, 'tiramisu', 'piatto di tiramisu con cacao', 'http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/2/4/2/RX-FNM_030111-Sugar-Fix-005_s4x3.jpg.rend.sniipadlarge.jpeg', 5),
(3, 'Banana sushi', 'Le crepes sono uno dei dolci preferiti dai bambini, soprattutto farcite con la Nutella. In questa ricetta vi proponiamo un modo originale per unire questa sfiziosa merenda con la frutta e dare vita al banana sushi', 'http://www.giallozafferano.it/images/ricette/38/3832/foto_hd/hd650x433_wm.jpg', 3.5),
(4, 'Acai bowl', 'L’acai bowl consiste fondamentalmente in una ricca macedonia con aggiunta di cereali e frutta secca, il tutto servito con un composto a base di purea o polvere di acai, solitamente mescolato con frutta frullata per una versione vegana oppure con yogurt, come vi proponiamo nella nostra variante.', 'http://www.giallozafferano.it/images/ricette/169/16918/foto_hd/hd650x433_wm.jpg', 4),
(5, 'Amaretti', 'Gli amaretti sono piccoli biscotti molto amati e diffusi in tante regioni italiane. Da nord a sud si contano diverse varianti, a pasta morbida, cosparsi con zucchero e granella oppure croccanti, come quelli che vi proponiamo in questa ricetta. Il gusto intenso degli amaretti è ottenuto grazie alla combinazione di mandorle pelate dolci e mandorle armelline,  ricavate dai noccioli delle albicocche e delle pesche ed usate nelle preparazioni di pasticceria in piccole dosi.', 'http://www.giallozafferano.it/images/ricette/34/3457/foto_hd/hd650x433_wm.jpg', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenu`
--

CREATE TABLE `DolceMenu` (
  `dolce` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenu`
--

INSERT INTO `DolceMenu` (`dolce`, `menu`) VALUES
(1, 6),
(1, 9),
(2, 5),
(3, 8),
(4, 7),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenuCompleto`
--

CREATE TABLE `DolceMenuCompleto` (
  `dolce` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenuCompleto`
--

INSERT INTO `DolceMenuCompleto` (`dolce`, `menucompleto`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 10),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(2, 8),
(3, 4),
(3, 7),
(3, 10),
(4, 5),
(4, 10),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `name`) VALUES
(5, 'menu di carne'),
(6, 'menu di pesce'),
(7, 'menu del cacciatore'),
(8, 'menu della casa'),
(9, 'menu del pescatore'),
(10, 'menu del boscaiolo');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompleto`
--

CREATE TABLE `MenuCompleto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompleto`
--

INSERT INTO `MenuCompleto` (`id`, `name`) VALUES
(1, 'menu completo'),
(2, 'complete'),
(3, 'test1'),
(4, 'test2'),
(5, 'test5'),
(6, 'test7'),
(7, 'test8'),
(8, 'test9'),
(9, 'test10'),
(10, 'test13');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompletoRestaurant`
--

CREATE TABLE `MenuCompletoRestaurant` (
  `restaurant` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompletoRestaurant`
--

INSERT INTO `MenuCompletoRestaurant` (`restaurant`, `menucompleto`) VALUES
(1, 1),
(5, 3),
(10, 3),
(3, 4),
(9, 4),
(6, 7),
(8, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `MenuRestaurant`
--

CREATE TABLE `MenuRestaurant` (
  `menu` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuRestaurant`
--

INSERT INTO `MenuRestaurant` (`menu`, `restaurant`) VALUES
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 9),
(6, 1),
(6, 6),
(6, 7),
(6, 9),
(6, 10),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 3),
(8, 4),
(8, 7),
(8, 10),
(9, 9),
(10, 1),
(10, 3),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Orario`
--

CREATE TABLE `Orario` (
  `id` int(11) NOT NULL,
  `hour` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Orario`
--

INSERT INTO `Orario` (`id`, `hour`) VALUES
(5, '19:00'),
(6, '19:30'),
(7, '20:30'),
(8, '21:00'),
(9, '20:00');

-- --------------------------------------------------------

--
-- Table structure for table `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numberOfPeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Prenotazione`
--

INSERT INTO `Prenotazione` (`id`, `name`, `date`, `time`, `numberOfPeople`) VALUES
(7, 'res9287', '17/1/2017', '20:30', 2),
(8, 'res3376', '17/1/2017', '20:00', 2),
(9, 'res8601', '17/1/2017', '20:00', 2),
(10, 'res2028', '17/1/2017', '19:30', 2),
(11, 'res506', '18/1/2017', '19:30', 2),
(12, 'res2765', '18/1/2017', '19:30', 1),
(13, 'res2797', '18/1/2017', '19:30', 1),
(14, 'res6127', '18/1/2017', '19:30', 1),
(15, 'res2758', '18/1/2017', '19:30', 1),
(16, 'res5563', '18/1/2017', '20:30', 2),
(17, 'res5821', '18/1/2017', '19:00', 2),
(18, 'res2868', '18/1/2017', '19:00', 2),
(19, 'res8557', '18/1/2017', '19:00', 2),
(20, 'res8482', '18/1/2017', '19:00', 2),
(21, 'res843', '18/1/2017', '19:00', 2),
(22, 'res3814', '18/1/2017', '19:30', 2),
(23, 'res2512', '18/1/2017', '19:00', 2),
(24, 'res4523', '18/1/2017', '19:00', 2),
(25, 'res3593', '18/1/2017', '19:00', 2),
(26, 'res2172', '18/1/2017', '19:00', 2),
(27, 'res195', '18/1/2017', '19:00', 1),
(28, 'res472', '18/1/2017', '19:00', 1),
(29, 'res8707', '19/1/2017', '19:00', 1),
(30, 'res7696', '18/2/2017', '19:00', 1),
(31, 'res3801', '19/1/2017', 'undefined', 2),
(32, 'res1955', '19/1/2017', 'undefined', 1),
(33, 'res6745', '19/1/2017', '19:00', 1),
(34, 'res9359', '20/1/2017', 'undefined', 2),
(35, 'res2163', '20/1/2017', 'undefined', 2),
(36, 'res9921', '20/1/2017', '19:00', 2),
(37, 'res1721', '21/1/2017', '19:00', 1),
(38, 'giuliano', '22/1/2017', '19:30', 2),
(39, 'res9010', '22/1/2017', '21:00', 4),
(40, 'res4044', '28/1/2017', '21:00', 2),
(41, 'res9327', '22/1/2017', '19:30', 4),
(42, 'res990', '22/1/2017', '19:00', 2),
(43, 'res4929', '22/1/2017', '19:30', 1),
(44, 'res7162', '26/1/2017', '19:00', 2),
(45, 'giulialte', '26/1/2017', '21:00', 2),
(46, 'giulialte', '25/1/2017', '19:00', 2),
(47, 'res4215', '22/1/2017', '19:30', 8),
(48, 'res8286', '22/1/2017', '19:00', 2),
(49, 'res1184', '23/1/2017', '19:30', 4),
(50, 'res4133', '23/1/2017', '19:00', 2),
(51, 'res4320', '22/1/2017', '20:30', 2),
(52, 'res8012', '22/1/2017', '19:30', 2),
(53, 'res3396', '22/1/2017', '19:30', 2),
(54, 'res9829', '22/1/2017', '20:30', 2),
(55, 'res2073', '22/1/2017', '21:00', 2),
(56, 'res1315', '22/1/2017', '20:30', 2),
(57, 'res2402', '22/1/2017', '19:00', 2),
(58, 'res4842', '16/1/2017', '19:00', 4),
(59, 'res4453', '22/1/2017', '19:30', 1),
(60, 'res8972', '27/1/2017', '19:00', 2),
(61, 'res435', '27/1/2017', '19:00', 2),
(62, 'res4231', '24/1/2017', '19:30', 3),
(63, 'res7704', '24/1/2017', '19:30', 3),
(64, 'res1359', '22/1/2017', '20:00', 2),
(65, 'res2394', '22/1/2017', '19:30', 2),
(66, 'res8366', '22/1/2017', '20:30', 1),
(67, 'res6770', '28/1/2017', '19:30', 4),
(68, 'res8508', '28/1/2017', '21:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Primo`
--

CREATE TABLE `Primo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Primo`
--

INSERT INTO `Primo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(3, 'pappardelle al cinghiale', 'piatto di pappardelle con sugo di cinghiale', 'http://www.ilcaffe.tv/img_articoli/big/2015/05/496.jpg', 9.5),
(4, 'risotto di mare', 'risotto con frutti di mare freschi', 'http://statics.cucchiaio.it/content/cucchiaio/it/ricette/2012/05/ricetta-risotto-frutti-mare/jcr:content/header-par/image_single.img10.jpg/1463562169958.jpg', 7.5),
(5, 'Agnolotti', 'Gli agnolotti sono il tipico primo piatto della cucina Piemontese e rappresentano una ricetta conosciuta ed apprezzata non solo inItalia, ma anche all’estero per la sua bontà e semplicità.', 'http://www.giallozafferano.it/images/ricette/0/62/foto_hd/hd650x433_wm.jpg', 6),
(6, 'Arancini di spaghetti', 'Gli arancini di spaghetti sono una gustosa alternativa ai classici arancini di riso, tipici della gastronomia siciliana. Come dice il nome stesso, a differenza della ricetta tradizionale, in questa versione vengono utilizzati spaghetti, arricchiti con burro, formaggio e uova, con i quali si forma una “palla” che viene poi fritta.', 'http://www.giallozafferano.it/images/ricette/23/2343/foto_hd/hd650x433_wm.jpg', 5.5),
(7, 'Bavette al pesto', 'Avete voglia di un piatto fresco e profumato perfetto per il vostro menù? Allora le bavette al pesto sono proprio la ricetta che state cercando! Il pesto, caposaldo della cucina ligure, è una salsa molto versatile e sempre molto apprezzata sulla tavola', 'http://www.giallozafferano.it/images/ricette/157/15710/foto_hd/hd650x433_wm.jpg', 6.5),
(8, 'Bigoli in salsa', 'I bigoli in salsa sono un primo piatto tipico del Veneto che, secondo tradizione, venivano consumati durante i giorni di magro, come la vigilia di Natale, il venerdì Santo e il mercoledì delle Ceneri.\\r\\nI bigoli in salsa sono realizzati con un condimento semplice, ma molto gustoso, formato da cipolle affettate finissime e acciughe (o sarde) disciolte lentamente in olio di oliva', 'http://www.giallozafferano.it/images/ricette/7/779/foto_hd/hd650x433_wm.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenu`
--

CREATE TABLE `PrimoMenu` (
  `primo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenu`
--

INSERT INTO `PrimoMenu` (`primo`, `menu`) VALUES
(3, 5),
(4, 6),
(4, 8),
(4, 9),
(5, 10),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenuCompleto`
--

CREATE TABLE `PrimoMenuCompleto` (
  `primo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenuCompleto`
--

INSERT INTO `PrimoMenuCompleto` (`primo`, `menucompleto`) VALUES
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 10),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avg_vote` double NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `name`, `thumbnail`, `avg_vote`, `latitude`, `longitude`, `address`) VALUES
(1, 'Ponterosso', 'https://www.scandichotels.com/imagevault/publishedmedia/qn6infvg30381stkubky/scandic-sundsvall-city-restaurant-verket-10.jpg', 4, 43.6237, 11.4641, 'Via Costa Andrea, 18, 50066 Reggello FI'),
(2, 'Il passeggero', 'http://parkresto.com/wp-content/themes/parkrestaurant/images/11onlinereservationpark.jpg', 2, 43.6968, 11.529, 'Via del Ponterosso, 9, 50063 Figline Valdarno FI'),
(3, 'Antica Trattoria il Burchio', 'https://media-cdn.tripadvisor.com/media/photo-s/0a/df/d9/a0/il-burchio.jpg', 4, 43.6789, 11.4433, 'S. Donato I-50064 Burchio'),
(4, 'Yamasaky Wok Sushi', 'https://lh6.googleusercontent.com/-1sjUzK4auoc/V8sQpv8XNzI/AAAAAAAAA3Q/GCTK916mt9EyKl9jX-7oMNXG_PQVhHOBwCJkC/s408-k-no/', 4, 43.6299, 11.4631, 'Via della Comunità Europea, 13, 50063 Figline Valdarno FI'),
(5, 'Osteria Pizzeria Portici', 'https://lh6.googleusercontent.com/-08jm4kX5uxs/V9xCSPENGLI/AAAAAAAAF5k/CxsGp-ot63ElWUn6Wb1e9ak70vMxgeu_ACJkC/s408-k-no/', 4, 43.6183, 11.4738, 'Via Fabbrini, 40, 50063 Figline Valdarno FI'),
(6, 'Ristorante Pizzeria Mari E Monti ', 'https://lh5.googleusercontent.com/-HA0nHcCkAzk/VNa0yctAnBI/AAAAAAAAAAU/YmKx0VLKs4EcVdoh7N0YZQe6HN2so9NZgCJkC/s408-k-no/', 2.5, 43.6238, 11.4639, 'Via di Maestro da Figline, 2, 50063 Figline Valdarno FI'),
(7, 'Ristorante Firenze Nova', 'https://lh5.googleusercontent.com/-dRwJ5VzNZs8/WCDyZzVbzjI/AAAAAAAAAF4/KBrgl7bc5SIHS4O29YC_4nnjDuHsuV5mgCLIB/s408-k-no/', 5, 43.8258, 11.1421, 'Via Palagetta, 47/2/3, 50013 Campi Bisenzio FI'),
(8, 'La Bottega Del Buon Caffè', 'https://lh4.googleusercontent.com/-_I_BH_lqUbM/VPSB2bPcvrI/AAAAAAAAARE/2FqltFqNAlM8KpkORksKuI89QwZl0ihRACJkC/s408-k-no/', 5, 43.7976, 11.2657, 'Lungarno Benvenuto Cellini, 69r, 50125 Firenze'),
(9, 'Trattoria La Querce', 'https://lh5.googleusercontent.com/proxy/ziDujWN_n5gXwJ4YxT492r5Hm-XbBsOqINV8XXfmkuVWZXlZqg87-ajfLqHy6RPuTi58j94DNfZdQJLkqJXcASR45qM-6Y9r28PztX8Q9PbTROAQpD0JrceaXOPPMWvK6elFXso0L66RnAEryCWQpySpV6F7tw=w408-h280', 5, 43.4932, 11.6256, 'Via Aretina, 12, 52021 Localita\' La Querce, Bucine AR'),
(10, 'Al Solito Posto', 'https://lh6.googleusercontent.com/-_yeNam2uJ9o/UO65QCNzm3I/AAAAAAAAAHs/0CO63yxufHocYvYW_mfLgcoYBdhL0ovuACJkC/s408-k-no/', 4, 43.5513, 11.5813, 'Via Dante, 27, 52028 Terranuova Bracciolini AR');

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantOrario`
--

CREATE TABLE `RestaurantOrario` (
  `restaurant` int(11) NOT NULL,
  `orario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RestaurantOrario`
--

INSERT INTO `RestaurantOrario` (`restaurant`, `orario`) VALUES
(1, 5),
(1, 6),
(2, 5),
(3, 7),
(3, 9),
(4, 5),
(4, 7),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(6, 6),
(6, 8),
(7, 8),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(8, 9),
(9, 6),
(9, 7),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Secondo`
--

CREATE TABLE `Secondo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Secondo`
--

INSERT INTO `Secondo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'hamburgher di chianina', 'hamburgher di carne chianina', 'http://www.ilgiornaledelcibo.it/wp-content/uploads/2015/07/hamburger-di-chianina1.jpg', 6.5),
(2, 'petto di pollo ', 'petto di pollo rosolato in padella', 'http://www.ricetta.it/Uploads/Imgs/10-ricette-per-cucinare-petti-di-pollo-big.jpg', 7),
(3, 'sogliola fritta', 'piatto con sogliola impanata e fritta', 'http://it.geniuscook.com/wp-content/uploads/2014/01/sogliola-fritta.jpg', 6),
(4, 'Ali di pollo fritte', 'Le ali di pollo fritte sono un secondo piatto sfizioso e molto appetitoso! Ottime da spiluccare come finger food o per una cena informale tra amici, sono irresistibili con la loro panatura croccante.', 'http://www.giallozafferano.it/images/ricette/10/1008/foto_hd/hd650x433_wm.jpg', 3.5),
(5, 'Alici alla pizzaiola', 'Un secondo piatto estivo, fatto di ingredienti semplici: teneri filetti di alici ammorbiditi da un gustoso sughetto rilasciato dai pomodori, sapori che diventano tutt’uno assicurandovi così una vera prelibatezza', 'http://www.giallozafferano.it/images/ricette/10/1006/foto_hd/hd650x433_wm.jpg', 5.3),
(6, 'Anguilla in crosta di mandorle', 'L\'anguilla in crosta di mandorle è un piatto di pesce raffinato ed elaborato: i filetti di anguilla vengono insaporiti con del miele di Acacia e cosparsi di mandorle tostate che gli conferiscono una piacevole croccantezza.', 'http://www.giallozafferano.it/images/ricette/14/1433/foto_hd/hd650x433_wm.jpg', 7),
(7, 'Anatra all\'arancia\\r\\n', 'Nell\'immaginario comune, l\'anatra all\'arancia, è una tipica ricetta francese ma, veramente pochi sanno che in realtà questo piatto così particolare affonda le sue origini nella cucina Toscana di Firenze. Questo succulento piatto, che i toscani chiamavano \"paparo alla melarancia\", fu esportato in Francia da Caterina de Medici che, andata in sposa a Enrico II di Francia, decise di portarsi dietro un pezzettino della sua Firenze.', 'http://www.giallozafferano.it/images/ricette/0/30/foto_hd/hd650x433_wm.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenu`
--

CREATE TABLE `SecondoMenu` (
  `secondo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenu`
--

INSERT INTO `SecondoMenu` (`secondo`, `menu`) VALUES
(1, 5),
(2, 10),
(3, 6),
(3, 9),
(4, 8),
(5, 10),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenuCompleto`
--

CREATE TABLE `SecondoMenuCompleto` (
  `secondo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenuCompleto`
--

INSERT INTO `SecondoMenuCompleto` (`secondo`, `menucompleto`) VALUES
(1, 10),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 2),
(4, 7),
(4, 10),
(5, 4),
(5, 8),
(6, 6),
(6, 8),
(6, 10),
(7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Antipasto`
--
ALTER TABLE `Antipasto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD PRIMARY KEY (`antipasto`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD PRIMARY KEY (`antipasto`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Dolce`
--
ALTER TABLE `Dolce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD PRIMARY KEY (`dolce`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD PRIMARY KEY (`dolce`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD PRIMARY KEY (`restaurant`),
  ADD KEY `restaurant` (`restaurant`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD PRIMARY KEY (`menu`,`restaurant`),
  ADD KEY `restaurant` (`restaurant`);

--
-- Indexes for table `Orario`
--
ALTER TABLE `Orario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Primo`
--
ALTER TABLE `Primo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD PRIMARY KEY (`primo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD PRIMARY KEY (`primo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD PRIMARY KEY (`restaurant`,`orario`),
  ADD KEY `orario` (`orario`);

--
-- Indexes for table `Secondo`
--
ALTER TABLE `Secondo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD PRIMARY KEY (`secondo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD PRIMARY KEY (`secondo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Antipasto`
--
ALTER TABLE `Antipasto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Dolce`
--
ALTER TABLE `Dolce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Menu`
--
ALTER TABLE `Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Orario`
--
ALTER TABLE `Orario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Primo`
--
ALTER TABLE `Primo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Secondo`
--
ALTER TABLE `Secondo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD CONSTRAINT `AntipastoMenu_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD CONSTRAINT `DolceMenu_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD CONSTRAINT `MenuRestaurant_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`),
  ADD CONSTRAINT `MenuRestaurant_ibfk_2` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD CONSTRAINT `PrimoMenu_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD CONSTRAINT `RestaurantOrario_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `RestaurantOrario_ibfk_2` FOREIGN KEY (`orario`) REFERENCES `Orario` (`id`);

--
-- Constraints for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD CONSTRAINT `SecondoMenu_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);
--
-- Database: `id501917_appetizing`
--
CREATE DATABASE IF NOT EXISTS `id501917_appetizing` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id501917_appetizing`;

-- --------------------------------------------------------

--
-- Table structure for table `Antipasto`
--

CREATE TABLE `Antipasto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Antipasto`
--

INSERT INTO `Antipasto` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(2, 'Crostini Misti', 'piatto di crostini misti', 'http://blog.giallozafferano.it/dicembre63/wp-content/uploads/2015/01/image.jpg', 4),
(3, 'Patate fritte', 'piatto di patate fritte con salsa', 'http://static.salepepe.it/files/2014/03/come-fare-patate-fritte_05.jpg', 3),
(4, 'Totani fritti', 'piatto di totani fritti', 'http://blog.giallozafferano.it/isaporiditerry/wp-content/uploads/2016/01/1051.jpg', 6),
(5, 'Anelli di cipolla fritti', 'Anelli di cipolla in pastella\\r\\nAntipasti\\r\\n\\r\\nAnelli di cipolla in pastellaGuarda altre ricette simili\\r\\n89Aggiungi al tuo ricettario\\r\\nDifficoltà:\\r\\nbassa\\r\\nPreparazione:\\r\\n10 min\\r\\nCottura:\\r\\n30 min\\r\\nDosi per:\\r\\n4 persone\\r\\nCosto:\\r\\nbasso\\r\\nNOTA: + 30 minuti di riposo\\r\\nPresentazione\\r\\n\\r\\nGli anelli di cipolla in pastella formano una pietanza rustica e stuzzicante: possono essere serviti come stuzzichini durante un aperitivo, come accompagnamento ad un piatto di carne oppure in abbinamento ad un un piatto di ', 'http://www.giallozafferano.it/images/ricette/6/614/foto_hd/hd650x433_wm.jpg', 3.2),
(6, 'Alici marinate', 'Le alici marinate vengono servite come antipasto e spesso si trovano anche nei menù dei ristoranti. Il gusto della marinatura, intenso e acidulato, sposa la tenerezza del pesce azzurro, rendendo questo piatto molto saporito e fresco', 'http://www.giallozafferano.it/images/ricette/1/184/foto_hd/hd650x433_wm.jpg', 4),
(7, 'Asparagi allo zabaione', 'Gli asparagi allo zabaione salato sono un antipasto gustoso e originale e rappresentano un modo alternativo di servire gli asparagi verdi, che vengono bolliti e per finire conditi con una soffice e cremosa salsa.', 'http://www.giallozafferano.it/images/ricette/12/1249/foto_hd/hd650x433_wm.jpg', 2),
(8, 'Asparagi mummia', 'nack sfizioso e nutriente ai vostri bambini! Gli asparagi mummia sono un esempio: strisce di pasta sfoglia che simulano le bende, avvolgono un ripieno di prosciutto cotto e asparagi! ', 'http://www.giallozafferano.it/images/ricette/38/3818/foto_hd/hd650x433_wm.jpg', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenu`
--

CREATE TABLE `AntipastoMenu` (
  `antipasto` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenu`
--

INSERT INTO `AntipastoMenu` (`antipasto`, `menu`) VALUES
(2, 8),
(3, 5),
(3, 10),
(4, 6),
(4, 7),
(5, 7),
(5, 8),
(6, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenuCompleto`
--

CREATE TABLE `AntipastoMenuCompleto` (
  `antipasto` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenuCompleto`
--

INSERT INTO `AntipastoMenuCompleto` (`antipasto`, `menucompleto`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 7),
(3, 1),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 8),
(5, 10),
(6, 7),
(6, 10),
(7, 2),
(7, 8),
(7, 10),
(8, 2),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Dolce`
--

CREATE TABLE `Dolce` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dolce`
--

INSERT INTO `Dolce` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'panna cotta', 'piatto di panna cotta con salsa', 'http://assets.epicurious.com/photos/5761d0268accf290434553aa/master/pass/panna-cotta.jpg', 7),
(2, 'tiramisu', 'piatto di tiramisu con cacao', 'http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/2/4/2/RX-FNM_030111-Sugar-Fix-005_s4x3.jpg.rend.sniipadlarge.jpeg', 5),
(3, 'Banana sushi', 'Le crepes sono uno dei dolci preferiti dai bambini, soprattutto farcite con la Nutella. In questa ricetta vi proponiamo un modo originale per unire questa sfiziosa merenda con la frutta e dare vita al banana sushi', 'http://www.giallozafferano.it/images/ricette/38/3832/foto_hd/hd650x433_wm.jpg', 3.5),
(4, 'Acai bowl', 'L’acai bowl consiste fondamentalmente in una ricca macedonia con aggiunta di cereali e frutta secca, il tutto servito con un composto a base di purea o polvere di acai, solitamente mescolato con frutta frullata per una versione vegana oppure con yogurt, come vi proponiamo nella nostra variante.', 'http://www.giallozafferano.it/images/ricette/169/16918/foto_hd/hd650x433_wm.jpg', 4),
(5, 'Amaretti', 'Gli amaretti sono piccoli biscotti molto amati e diffusi in tante regioni italiane. Da nord a sud si contano diverse varianti, a pasta morbida, cosparsi con zucchero e granella oppure croccanti, come quelli che vi proponiamo in questa ricetta. Il gusto intenso degli amaretti è ottenuto grazie alla combinazione di mandorle pelate dolci e mandorle armelline,  ricavate dai noccioli delle albicocche e delle pesche ed usate nelle preparazioni di pasticceria in piccole dosi.', 'http://www.giallozafferano.it/images/ricette/34/3457/foto_hd/hd650x433_wm.jpg', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenu`
--

CREATE TABLE `DolceMenu` (
  `dolce` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenu`
--

INSERT INTO `DolceMenu` (`dolce`, `menu`) VALUES
(1, 6),
(1, 9),
(2, 5),
(3, 8),
(4, 7),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenuCompleto`
--

CREATE TABLE `DolceMenuCompleto` (
  `dolce` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenuCompleto`
--

INSERT INTO `DolceMenuCompleto` (`dolce`, `menucompleto`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 10),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(2, 8),
(3, 4),
(3, 7),
(3, 10),
(4, 5),
(4, 10),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `name`) VALUES
(5, 'menu di carne'),
(6, 'menu di pesce'),
(7, 'menu del cacciatore'),
(8, 'menu della casa'),
(9, 'menu del pescatore'),
(10, 'menu del boscaiolo');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompleto`
--

CREATE TABLE `MenuCompleto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompleto`
--

INSERT INTO `MenuCompleto` (`id`, `name`) VALUES
(1, 'menu completo'),
(2, 'complete'),
(3, 'test1'),
(4, 'test2'),
(5, 'test5'),
(6, 'test7'),
(7, 'test8'),
(8, 'test9'),
(9, 'test10'),
(10, 'test13');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompletoRestaurant`
--

CREATE TABLE `MenuCompletoRestaurant` (
  `restaurant` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompletoRestaurant`
--

INSERT INTO `MenuCompletoRestaurant` (`restaurant`, `menucompleto`) VALUES
(1, 1),
(5, 3),
(10, 3),
(3, 4),
(9, 4),
(6, 7),
(8, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `MenuRestaurant`
--

CREATE TABLE `MenuRestaurant` (
  `menu` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuRestaurant`
--

INSERT INTO `MenuRestaurant` (`menu`, `restaurant`) VALUES
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 9),
(6, 1),
(6, 6),
(6, 7),
(6, 9),
(6, 10),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 3),
(8, 4),
(8, 7),
(8, 10),
(9, 9),
(10, 1),
(10, 3),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Orario`
--

CREATE TABLE `Orario` (
  `id` int(11) NOT NULL,
  `hour` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Orario`
--

INSERT INTO `Orario` (`id`, `hour`) VALUES
(5, '19:00'),
(6, '19:30'),
(7, '20:30'),
(8, '21:00'),
(9, '20:00');

-- --------------------------------------------------------

--
-- Table structure for table `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numberOfPeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Prenotazione`
--

INSERT INTO `Prenotazione` (`id`, `name`, `date`, `time`, `numberOfPeople`) VALUES
(7, 'res9287', '17/1/2017', '20:30', 2),
(8, 'res3376', '17/1/2017', '20:00', 2),
(9, 'res8601', '17/1/2017', '20:00', 2),
(10, 'res2028', '17/1/2017', '19:30', 2),
(11, 'res506', '18/1/2017', '19:30', 2),
(12, 'res2765', '18/1/2017', '19:30', 1),
(13, 'res2797', '18/1/2017', '19:30', 1),
(14, 'res6127', '18/1/2017', '19:30', 1),
(15, 'res2758', '18/1/2017', '19:30', 1),
(16, 'res5563', '18/1/2017', '20:30', 2),
(17, 'res5821', '18/1/2017', '19:00', 2),
(18, 'res2868', '18/1/2017', '19:00', 2),
(19, 'res8557', '18/1/2017', '19:00', 2),
(20, 'res8482', '18/1/2017', '19:00', 2),
(21, 'res843', '18/1/2017', '19:00', 2),
(22, 'res3814', '18/1/2017', '19:30', 2),
(23, 'res2512', '18/1/2017', '19:00', 2),
(24, 'res4523', '18/1/2017', '19:00', 2),
(25, 'res3593', '18/1/2017', '19:00', 2),
(26, 'res2172', '18/1/2017', '19:00', 2),
(27, 'res195', '18/1/2017', '19:00', 1),
(28, 'res472', '18/1/2017', '19:00', 1),
(29, 'res8707', '19/1/2017', '19:00', 1),
(30, 'res7696', '18/2/2017', '19:00', 1),
(31, 'res3801', '19/1/2017', 'undefined', 2),
(32, 'res1955', '19/1/2017', 'undefined', 1),
(33, 'res6745', '19/1/2017', '19:00', 1),
(34, 'res9359', '20/1/2017', 'undefined', 2),
(35, 'res2163', '20/1/2017', 'undefined', 2),
(36, 'res9921', '20/1/2017', '19:00', 2),
(37, 'res1721', '21/1/2017', '19:00', 1),
(38, 'giuliano', '22/1/2017', '19:30', 2),
(39, 'res9010', '22/1/2017', '21:00', 4),
(40, 'res4044', '28/1/2017', '21:00', 2),
(41, 'res9327', '22/1/2017', '19:30', 4),
(42, 'res990', '22/1/2017', '19:00', 2),
(43, 'res4929', '22/1/2017', '19:30', 1),
(44, 'res7162', '26/1/2017', '19:00', 2),
(45, 'giulialte', '26/1/2017', '21:00', 2),
(46, 'giulialte', '25/1/2017', '19:00', 2),
(47, 'res4215', '22/1/2017', '19:30', 8),
(48, 'res8286', '22/1/2017', '19:00', 2),
(49, 'res1184', '23/1/2017', '19:30', 4),
(50, 'res4133', '23/1/2017', '19:00', 2),
(51, 'res4320', '22/1/2017', '20:30', 2),
(52, 'res8012', '22/1/2017', '19:30', 2),
(53, 'res3396', '22/1/2017', '19:30', 2),
(54, 'res9829', '22/1/2017', '20:30', 2),
(55, 'res2073', '22/1/2017', '21:00', 2),
(56, 'res1315', '22/1/2017', '20:30', 2),
(57, 'res2402', '22/1/2017', '19:00', 2),
(58, 'res4842', '16/1/2017', '19:00', 4),
(59, 'res4453', '22/1/2017', '19:30', 1),
(60, 'res8972', '27/1/2017', '19:00', 2),
(61, 'res435', '27/1/2017', '19:00', 2),
(62, 'res4231', '24/1/2017', '19:30', 3),
(63, 'res7704', '24/1/2017', '19:30', 3),
(64, 'res1359', '22/1/2017', '20:00', 2),
(65, 'res2394', '22/1/2017', '19:30', 2),
(66, 'res8366', '22/1/2017', '20:30', 1),
(67, 'res6770', '28/1/2017', '19:30', 4),
(68, 'res8508', '28/1/2017', '21:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Primo`
--

CREATE TABLE `Primo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Primo`
--

INSERT INTO `Primo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(3, 'pappardelle al cinghiale', 'piatto di pappardelle con sugo di cinghiale', 'http://www.ilcaffe.tv/img_articoli/big/2015/05/496.jpg', 9.5),
(4, 'risotto di mare', 'risotto con frutti di mare freschi', 'http://statics.cucchiaio.it/content/cucchiaio/it/ricette/2012/05/ricetta-risotto-frutti-mare/jcr:content/header-par/image_single.img10.jpg/1463562169958.jpg', 7.5),
(5, 'Agnolotti', 'Gli agnolotti sono il tipico primo piatto della cucina Piemontese e rappresentano una ricetta conosciuta ed apprezzata non solo inItalia, ma anche all’estero per la sua bontà e semplicità.', 'http://www.giallozafferano.it/images/ricette/0/62/foto_hd/hd650x433_wm.jpg', 6),
(6, 'Arancini di spaghetti', 'Gli arancini di spaghetti sono una gustosa alternativa ai classici arancini di riso, tipici della gastronomia siciliana. Come dice il nome stesso, a differenza della ricetta tradizionale, in questa versione vengono utilizzati spaghetti, arricchiti con burro, formaggio e uova, con i quali si forma una “palla” che viene poi fritta.', 'http://www.giallozafferano.it/images/ricette/23/2343/foto_hd/hd650x433_wm.jpg', 5.5),
(7, 'Bavette al pesto', 'Avete voglia di un piatto fresco e profumato perfetto per il vostro menù? Allora le bavette al pesto sono proprio la ricetta che state cercando! Il pesto, caposaldo della cucina ligure, è una salsa molto versatile e sempre molto apprezzata sulla tavola', 'http://www.giallozafferano.it/images/ricette/157/15710/foto_hd/hd650x433_wm.jpg', 6.5),
(8, 'Bigoli in salsa', 'I bigoli in salsa sono un primo piatto tipico del Veneto che, secondo tradizione, venivano consumati durante i giorni di magro, come la vigilia di Natale, il venerdì Santo e il mercoledì delle Ceneri.\\r\\nI bigoli in salsa sono realizzati con un condimento semplice, ma molto gustoso, formato da cipolle affettate finissime e acciughe (o sarde) disciolte lentamente in olio di oliva', 'http://www.giallozafferano.it/images/ricette/7/779/foto_hd/hd650x433_wm.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenu`
--

CREATE TABLE `PrimoMenu` (
  `primo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenu`
--

INSERT INTO `PrimoMenu` (`primo`, `menu`) VALUES
(3, 5),
(4, 6),
(4, 8),
(4, 9),
(5, 10),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenuCompleto`
--

CREATE TABLE `PrimoMenuCompleto` (
  `primo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenuCompleto`
--

INSERT INTO `PrimoMenuCompleto` (`primo`, `menucompleto`) VALUES
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 10),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avg_vote` double NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `name`, `thumbnail`, `avg_vote`, `latitude`, `longitude`, `address`) VALUES
(1, 'Ponterosso', 'https://www.scandichotels.com/imagevault/publishedmedia/qn6infvg30381stkubky/scandic-sundsvall-city-restaurant-verket-10.jpg', 4, 43.6237, 11.4641, 'Via Costa Andrea, 18, 50066 Reggello FI'),
(2, 'Il passeggero', 'http://parkresto.com/wp-content/themes/parkrestaurant/images/11onlinereservationpark.jpg', 2, 43.6968, 11.529, 'Via del Ponterosso, 9, 50063 Figline Valdarno FI'),
(3, 'Antica Trattoria il Burchio', 'https://media-cdn.tripadvisor.com/media/photo-s/0a/df/d9/a0/il-burchio.jpg', 4, 43.6789, 11.4433, 'S. Donato I-50064 Burchio'),
(4, 'Yamasaky Wok Sushi', 'https://lh6.googleusercontent.com/-1sjUzK4auoc/V8sQpv8XNzI/AAAAAAAAA3Q/GCTK916mt9EyKl9jX-7oMNXG_PQVhHOBwCJkC/s408-k-no/', 4, 43.6299, 11.4631, 'Via della Comunità Europea, 13, 50063 Figline Valdarno FI'),
(5, 'Osteria Pizzeria Portici', 'https://lh6.googleusercontent.com/-08jm4kX5uxs/V9xCSPENGLI/AAAAAAAAF5k/CxsGp-ot63ElWUn6Wb1e9ak70vMxgeu_ACJkC/s408-k-no/', 4, 43.6183, 11.4738, 'Via Fabbrini, 40, 50063 Figline Valdarno FI'),
(6, 'Ristorante Pizzeria Mari E Monti ', 'https://lh5.googleusercontent.com/-HA0nHcCkAzk/VNa0yctAnBI/AAAAAAAAAAU/YmKx0VLKs4EcVdoh7N0YZQe6HN2so9NZgCJkC/s408-k-no/', 2.5, 43.6238, 11.4639, 'Via di Maestro da Figline, 2, 50063 Figline Valdarno FI'),
(7, 'Ristorante Firenze Nova', 'https://lh5.googleusercontent.com/-dRwJ5VzNZs8/WCDyZzVbzjI/AAAAAAAAAF4/KBrgl7bc5SIHS4O29YC_4nnjDuHsuV5mgCLIB/s408-k-no/', 5, 43.8258, 11.1421, 'Via Palagetta, 47/2/3, 50013 Campi Bisenzio FI'),
(8, 'La Bottega Del Buon Caffè', 'https://lh4.googleusercontent.com/-_I_BH_lqUbM/VPSB2bPcvrI/AAAAAAAAARE/2FqltFqNAlM8KpkORksKuI89QwZl0ihRACJkC/s408-k-no/', 5, 43.7976, 11.2657, 'Lungarno Benvenuto Cellini, 69r, 50125 Firenze'),
(9, 'Trattoria La Querce', 'https://lh5.googleusercontent.com/proxy/ziDujWN_n5gXwJ4YxT492r5Hm-XbBsOqINV8XXfmkuVWZXlZqg87-ajfLqHy6RPuTi58j94DNfZdQJLkqJXcASR45qM-6Y9r28PztX8Q9PbTROAQpD0JrceaXOPPMWvK6elFXso0L66RnAEryCWQpySpV6F7tw=w408-h280', 5, 43.4932, 11.6256, 'Via Aretina, 12, 52021 Localita\' La Querce, Bucine AR'),
(10, 'Al Solito Posto', 'https://lh6.googleusercontent.com/-_yeNam2uJ9o/UO65QCNzm3I/AAAAAAAAAHs/0CO63yxufHocYvYW_mfLgcoYBdhL0ovuACJkC/s408-k-no/', 4, 43.5513, 11.5813, 'Via Dante, 27, 52028 Terranuova Bracciolini AR');

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantOrario`
--

CREATE TABLE `RestaurantOrario` (
  `restaurant` int(11) NOT NULL,
  `orario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RestaurantOrario`
--

INSERT INTO `RestaurantOrario` (`restaurant`, `orario`) VALUES
(1, 5),
(1, 6),
(2, 5),
(3, 7),
(3, 9),
(4, 5),
(4, 7),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(6, 6),
(6, 8),
(7, 8),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(8, 9),
(9, 6),
(9, 7),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Secondo`
--

CREATE TABLE `Secondo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Secondo`
--

INSERT INTO `Secondo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'hamburgher di chianina', 'hamburgher di carne chianina', 'http://www.ilgiornaledelcibo.it/wp-content/uploads/2015/07/hamburger-di-chianina1.jpg', 6.5),
(2, 'petto di pollo ', 'petto di pollo rosolato in padella', 'http://www.ricetta.it/Uploads/Imgs/10-ricette-per-cucinare-petti-di-pollo-big.jpg', 7),
(3, 'sogliola fritta', 'piatto con sogliola impanata e fritta', 'http://it.geniuscook.com/wp-content/uploads/2014/01/sogliola-fritta.jpg', 6),
(4, 'Ali di pollo fritte', 'Le ali di pollo fritte sono un secondo piatto sfizioso e molto appetitoso! Ottime da spiluccare come finger food o per una cena informale tra amici, sono irresistibili con la loro panatura croccante.', 'http://www.giallozafferano.it/images/ricette/10/1008/foto_hd/hd650x433_wm.jpg', 3.5),
(5, 'Alici alla pizzaiola', 'Un secondo piatto estivo, fatto di ingredienti semplici: teneri filetti di alici ammorbiditi da un gustoso sughetto rilasciato dai pomodori, sapori che diventano tutt’uno assicurandovi così una vera prelibatezza', 'http://www.giallozafferano.it/images/ricette/10/1006/foto_hd/hd650x433_wm.jpg', 5.3),
(6, 'Anguilla in crosta di mandorle', 'L\'anguilla in crosta di mandorle è un piatto di pesce raffinato ed elaborato: i filetti di anguilla vengono insaporiti con del miele di Acacia e cosparsi di mandorle tostate che gli conferiscono una piacevole croccantezza.', 'http://www.giallozafferano.it/images/ricette/14/1433/foto_hd/hd650x433_wm.jpg', 7),
(7, 'Anatra all\'arancia\\r\\n', 'Nell\'immaginario comune, l\'anatra all\'arancia, è una tipica ricetta francese ma, veramente pochi sanno che in realtà questo piatto così particolare affonda le sue origini nella cucina Toscana di Firenze. Questo succulento piatto, che i toscani chiamavano \"paparo alla melarancia\", fu esportato in Francia da Caterina de Medici che, andata in sposa a Enrico II di Francia, decise di portarsi dietro un pezzettino della sua Firenze.', 'http://www.giallozafferano.it/images/ricette/0/30/foto_hd/hd650x433_wm.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenu`
--

CREATE TABLE `SecondoMenu` (
  `secondo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenu`
--

INSERT INTO `SecondoMenu` (`secondo`, `menu`) VALUES
(1, 5),
(2, 10),
(3, 6),
(3, 9),
(4, 8),
(5, 10),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenuCompleto`
--

CREATE TABLE `SecondoMenuCompleto` (
  `secondo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenuCompleto`
--

INSERT INTO `SecondoMenuCompleto` (`secondo`, `menucompleto`) VALUES
(1, 10),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 2),
(4, 7),
(4, 10),
(5, 4),
(5, 8),
(6, 6),
(6, 8),
(6, 10),
(7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Antipasto`
--
ALTER TABLE `Antipasto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD PRIMARY KEY (`antipasto`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD PRIMARY KEY (`antipasto`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Dolce`
--
ALTER TABLE `Dolce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD PRIMARY KEY (`dolce`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD PRIMARY KEY (`dolce`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD PRIMARY KEY (`restaurant`),
  ADD KEY `restaurant` (`restaurant`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD PRIMARY KEY (`menu`,`restaurant`),
  ADD KEY `restaurant` (`restaurant`);

--
-- Indexes for table `Orario`
--
ALTER TABLE `Orario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Primo`
--
ALTER TABLE `Primo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD PRIMARY KEY (`primo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD PRIMARY KEY (`primo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD PRIMARY KEY (`restaurant`,`orario`),
  ADD KEY `orario` (`orario`);

--
-- Indexes for table `Secondo`
--
ALTER TABLE `Secondo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD PRIMARY KEY (`secondo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD PRIMARY KEY (`secondo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Antipasto`
--
ALTER TABLE `Antipasto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Dolce`
--
ALTER TABLE `Dolce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Menu`
--
ALTER TABLE `Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Orario`
--
ALTER TABLE `Orario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Primo`
--
ALTER TABLE `Primo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Secondo`
--
ALTER TABLE `Secondo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD CONSTRAINT `AntipastoMenu_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD CONSTRAINT `DolceMenu_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD CONSTRAINT `MenuRestaurant_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`),
  ADD CONSTRAINT `MenuRestaurant_ibfk_2` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD CONSTRAINT `PrimoMenu_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD CONSTRAINT `RestaurantOrario_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `RestaurantOrario_ibfk_2` FOREIGN KEY (`orario`) REFERENCES `Orario` (`id`);

--
-- Constraints for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD CONSTRAINT `SecondoMenu_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);
--
-- Database: `id501917_appetizing`
--
CREATE DATABASE IF NOT EXISTS `id501917_appetizing` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id501917_appetizing`;

-- --------------------------------------------------------

--
-- Table structure for table `Antipasto`
--

CREATE TABLE `Antipasto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Antipasto`
--

INSERT INTO `Antipasto` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(2, 'Crostini Misti', 'piatto di crostini misti', 'http://blog.giallozafferano.it/dicembre63/wp-content/uploads/2015/01/image.jpg', 4),
(3, 'Patate fritte', 'piatto di patate fritte con salsa', 'http://static.salepepe.it/files/2014/03/come-fare-patate-fritte_05.jpg', 3),
(4, 'Totani fritti', 'piatto di totani fritti', 'http://blog.giallozafferano.it/isaporiditerry/wp-content/uploads/2016/01/1051.jpg', 6),
(5, 'Anelli di cipolla fritti', 'Anelli di cipolla in pastella\\r\\nAntipasti\\r\\n\\r\\nAnelli di cipolla in pastellaGuarda altre ricette simili\\r\\n89Aggiungi al tuo ricettario\\r\\nDifficoltà:\\r\\nbassa\\r\\nPreparazione:\\r\\n10 min\\r\\nCottura:\\r\\n30 min\\r\\nDosi per:\\r\\n4 persone\\r\\nCosto:\\r\\nbasso\\r\\nNOTA: + 30 minuti di riposo\\r\\nPresentazione\\r\\n\\r\\nGli anelli di cipolla in pastella formano una pietanza rustica e stuzzicante: possono essere serviti come stuzzichini durante un aperitivo, come accompagnamento ad un piatto di carne oppure in abbinamento ad un un piatto di ', 'http://www.giallozafferano.it/images/ricette/6/614/foto_hd/hd650x433_wm.jpg', 3.2),
(6, 'Alici marinate', 'Le alici marinate vengono servite come antipasto e spesso si trovano anche nei menù dei ristoranti. Il gusto della marinatura, intenso e acidulato, sposa la tenerezza del pesce azzurro, rendendo questo piatto molto saporito e fresco', 'http://www.giallozafferano.it/images/ricette/1/184/foto_hd/hd650x433_wm.jpg', 4),
(7, 'Asparagi allo zabaione', 'Gli asparagi allo zabaione salato sono un antipasto gustoso e originale e rappresentano un modo alternativo di servire gli asparagi verdi, che vengono bolliti e per finire conditi con una soffice e cremosa salsa.', 'http://www.giallozafferano.it/images/ricette/12/1249/foto_hd/hd650x433_wm.jpg', 2),
(8, 'Asparagi mummia', 'nack sfizioso e nutriente ai vostri bambini! Gli asparagi mummia sono un esempio: strisce di pasta sfoglia che simulano le bende, avvolgono un ripieno di prosciutto cotto e asparagi! ', 'http://www.giallozafferano.it/images/ricette/38/3818/foto_hd/hd650x433_wm.jpg', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenu`
--

CREATE TABLE `AntipastoMenu` (
  `antipasto` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenu`
--

INSERT INTO `AntipastoMenu` (`antipasto`, `menu`) VALUES
(2, 8),
(3, 5),
(3, 10),
(4, 6),
(4, 7),
(5, 7),
(5, 8),
(6, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenuCompleto`
--

CREATE TABLE `AntipastoMenuCompleto` (
  `antipasto` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenuCompleto`
--

INSERT INTO `AntipastoMenuCompleto` (`antipasto`, `menucompleto`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 7),
(3, 1),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 8),
(5, 10),
(6, 7),
(6, 10),
(7, 2),
(7, 8),
(7, 10),
(8, 2),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Dolce`
--

CREATE TABLE `Dolce` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dolce`
--

INSERT INTO `Dolce` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'panna cotta', 'piatto di panna cotta con salsa', 'http://assets.epicurious.com/photos/5761d0268accf290434553aa/master/pass/panna-cotta.jpg', 7),
(2, 'tiramisu', 'piatto di tiramisu con cacao', 'http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/2/4/2/RX-FNM_030111-Sugar-Fix-005_s4x3.jpg.rend.sniipadlarge.jpeg', 5),
(3, 'Banana sushi', 'Le crepes sono uno dei dolci preferiti dai bambini, soprattutto farcite con la Nutella. In questa ricetta vi proponiamo un modo originale per unire questa sfiziosa merenda con la frutta e dare vita al banana sushi', 'http://www.giallozafferano.it/images/ricette/38/3832/foto_hd/hd650x433_wm.jpg', 3.5),
(4, 'Acai bowl', 'L’acai bowl consiste fondamentalmente in una ricca macedonia con aggiunta di cereali e frutta secca, il tutto servito con un composto a base di purea o polvere di acai, solitamente mescolato con frutta frullata per una versione vegana oppure con yogurt, come vi proponiamo nella nostra variante.', 'http://www.giallozafferano.it/images/ricette/169/16918/foto_hd/hd650x433_wm.jpg', 4),
(5, 'Amaretti', 'Gli amaretti sono piccoli biscotti molto amati e diffusi in tante regioni italiane. Da nord a sud si contano diverse varianti, a pasta morbida, cosparsi con zucchero e granella oppure croccanti, come quelli che vi proponiamo in questa ricetta. Il gusto intenso degli amaretti è ottenuto grazie alla combinazione di mandorle pelate dolci e mandorle armelline,  ricavate dai noccioli delle albicocche e delle pesche ed usate nelle preparazioni di pasticceria in piccole dosi.', 'http://www.giallozafferano.it/images/ricette/34/3457/foto_hd/hd650x433_wm.jpg', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenu`
--

CREATE TABLE `DolceMenu` (
  `dolce` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenu`
--

INSERT INTO `DolceMenu` (`dolce`, `menu`) VALUES
(1, 6),
(1, 9),
(2, 5),
(3, 8),
(4, 7),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenuCompleto`
--

CREATE TABLE `DolceMenuCompleto` (
  `dolce` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenuCompleto`
--

INSERT INTO `DolceMenuCompleto` (`dolce`, `menucompleto`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 10),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(2, 8),
(3, 4),
(3, 7),
(3, 10),
(4, 5),
(4, 10),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `name`) VALUES
(5, 'menu di carne'),
(6, 'menu di pesce'),
(7, 'menu del cacciatore'),
(8, 'menu della casa'),
(9, 'menu del pescatore'),
(10, 'menu del boscaiolo');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompleto`
--

CREATE TABLE `MenuCompleto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompleto`
--

INSERT INTO `MenuCompleto` (`id`, `name`) VALUES
(1, 'menu completo'),
(2, 'complete'),
(3, 'test1'),
(4, 'test2'),
(5, 'test5'),
(6, 'test7'),
(7, 'test8'),
(8, 'test9'),
(9, 'test10'),
(10, 'test13');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompletoRestaurant`
--

CREATE TABLE `MenuCompletoRestaurant` (
  `restaurant` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompletoRestaurant`
--

INSERT INTO `MenuCompletoRestaurant` (`restaurant`, `menucompleto`) VALUES
(1, 1),
(5, 3),
(10, 3),
(3, 4),
(9, 4),
(6, 7),
(8, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `MenuRestaurant`
--

CREATE TABLE `MenuRestaurant` (
  `menu` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuRestaurant`
--

INSERT INTO `MenuRestaurant` (`menu`, `restaurant`) VALUES
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 9),
(6, 1),
(6, 6),
(6, 7),
(6, 9),
(6, 10),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 3),
(8, 4),
(8, 7),
(8, 10),
(9, 9),
(10, 1),
(10, 3),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Orario`
--

CREATE TABLE `Orario` (
  `id` int(11) NOT NULL,
  `hour` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Orario`
--

INSERT INTO `Orario` (`id`, `hour`) VALUES
(5, '19:00'),
(6, '19:30'),
(7, '20:30'),
(8, '21:00'),
(9, '20:00');

-- --------------------------------------------------------

--
-- Table structure for table `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numberOfPeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Prenotazione`
--

INSERT INTO `Prenotazione` (`id`, `name`, `date`, `time`, `numberOfPeople`) VALUES
(7, 'res9287', '17/1/2017', '20:30', 2),
(8, 'res3376', '17/1/2017', '20:00', 2),
(9, 'res8601', '17/1/2017', '20:00', 2),
(10, 'res2028', '17/1/2017', '19:30', 2),
(11, 'res506', '18/1/2017', '19:30', 2),
(12, 'res2765', '18/1/2017', '19:30', 1),
(13, 'res2797', '18/1/2017', '19:30', 1),
(14, 'res6127', '18/1/2017', '19:30', 1),
(15, 'res2758', '18/1/2017', '19:30', 1),
(16, 'res5563', '18/1/2017', '20:30', 2),
(17, 'res5821', '18/1/2017', '19:00', 2),
(18, 'res2868', '18/1/2017', '19:00', 2),
(19, 'res8557', '18/1/2017', '19:00', 2),
(20, 'res8482', '18/1/2017', '19:00', 2),
(21, 'res843', '18/1/2017', '19:00', 2),
(22, 'res3814', '18/1/2017', '19:30', 2),
(23, 'res2512', '18/1/2017', '19:00', 2),
(24, 'res4523', '18/1/2017', '19:00', 2),
(25, 'res3593', '18/1/2017', '19:00', 2),
(26, 'res2172', '18/1/2017', '19:00', 2),
(27, 'res195', '18/1/2017', '19:00', 1),
(28, 'res472', '18/1/2017', '19:00', 1),
(29, 'res8707', '19/1/2017', '19:00', 1),
(30, 'res7696', '18/2/2017', '19:00', 1),
(31, 'res3801', '19/1/2017', 'undefined', 2),
(32, 'res1955', '19/1/2017', 'undefined', 1),
(33, 'res6745', '19/1/2017', '19:00', 1),
(34, 'res9359', '20/1/2017', 'undefined', 2),
(35, 'res2163', '20/1/2017', 'undefined', 2),
(36, 'res9921', '20/1/2017', '19:00', 2),
(37, 'res1721', '21/1/2017', '19:00', 1),
(38, 'giuliano', '22/1/2017', '19:30', 2),
(39, 'res9010', '22/1/2017', '21:00', 4),
(40, 'res4044', '28/1/2017', '21:00', 2),
(41, 'res9327', '22/1/2017', '19:30', 4),
(42, 'res990', '22/1/2017', '19:00', 2),
(43, 'res4929', '22/1/2017', '19:30', 1),
(44, 'res7162', '26/1/2017', '19:00', 2),
(45, 'giulialte', '26/1/2017', '21:00', 2),
(46, 'giulialte', '25/1/2017', '19:00', 2),
(47, 'res4215', '22/1/2017', '19:30', 8),
(48, 'res8286', '22/1/2017', '19:00', 2),
(49, 'res1184', '23/1/2017', '19:30', 4),
(50, 'res4133', '23/1/2017', '19:00', 2),
(51, 'res4320', '22/1/2017', '20:30', 2),
(52, 'res8012', '22/1/2017', '19:30', 2),
(53, 'res3396', '22/1/2017', '19:30', 2),
(54, 'res9829', '22/1/2017', '20:30', 2),
(55, 'res2073', '22/1/2017', '21:00', 2),
(56, 'res1315', '22/1/2017', '20:30', 2),
(57, 'res2402', '22/1/2017', '19:00', 2),
(58, 'res4842', '16/1/2017', '19:00', 4),
(59, 'res4453', '22/1/2017', '19:30', 1),
(60, 'res8972', '27/1/2017', '19:00', 2),
(61, 'res435', '27/1/2017', '19:00', 2),
(62, 'res4231', '24/1/2017', '19:30', 3),
(63, 'res7704', '24/1/2017', '19:30', 3),
(64, 'res1359', '22/1/2017', '20:00', 2),
(65, 'res2394', '22/1/2017', '19:30', 2),
(66, 'res8366', '22/1/2017', '20:30', 1),
(67, 'res6770', '28/1/2017', '19:30', 4),
(68, 'res8508', '28/1/2017', '21:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Primo`
--

CREATE TABLE `Primo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Primo`
--

INSERT INTO `Primo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(3, 'pappardelle al cinghiale', 'piatto di pappardelle con sugo di cinghiale', 'http://www.ilcaffe.tv/img_articoli/big/2015/05/496.jpg', 9.5),
(4, 'risotto di mare', 'risotto con frutti di mare freschi', 'http://statics.cucchiaio.it/content/cucchiaio/it/ricette/2012/05/ricetta-risotto-frutti-mare/jcr:content/header-par/image_single.img10.jpg/1463562169958.jpg', 7.5),
(5, 'Agnolotti', 'Gli agnolotti sono il tipico primo piatto della cucina Piemontese e rappresentano una ricetta conosciuta ed apprezzata non solo inItalia, ma anche all’estero per la sua bontà e semplicità.', 'http://www.giallozafferano.it/images/ricette/0/62/foto_hd/hd650x433_wm.jpg', 6),
(6, 'Arancini di spaghetti', 'Gli arancini di spaghetti sono una gustosa alternativa ai classici arancini di riso, tipici della gastronomia siciliana. Come dice il nome stesso, a differenza della ricetta tradizionale, in questa versione vengono utilizzati spaghetti, arricchiti con burro, formaggio e uova, con i quali si forma una “palla” che viene poi fritta.', 'http://www.giallozafferano.it/images/ricette/23/2343/foto_hd/hd650x433_wm.jpg', 5.5),
(7, 'Bavette al pesto', 'Avete voglia di un piatto fresco e profumato perfetto per il vostro menù? Allora le bavette al pesto sono proprio la ricetta che state cercando! Il pesto, caposaldo della cucina ligure, è una salsa molto versatile e sempre molto apprezzata sulla tavola', 'http://www.giallozafferano.it/images/ricette/157/15710/foto_hd/hd650x433_wm.jpg', 6.5),
(8, 'Bigoli in salsa', 'I bigoli in salsa sono un primo piatto tipico del Veneto che, secondo tradizione, venivano consumati durante i giorni di magro, come la vigilia di Natale, il venerdì Santo e il mercoledì delle Ceneri.\\r\\nI bigoli in salsa sono realizzati con un condimento semplice, ma molto gustoso, formato da cipolle affettate finissime e acciughe (o sarde) disciolte lentamente in olio di oliva', 'http://www.giallozafferano.it/images/ricette/7/779/foto_hd/hd650x433_wm.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenu`
--

CREATE TABLE `PrimoMenu` (
  `primo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenu`
--

INSERT INTO `PrimoMenu` (`primo`, `menu`) VALUES
(3, 5),
(4, 6),
(4, 8),
(4, 9),
(5, 10),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenuCompleto`
--

CREATE TABLE `PrimoMenuCompleto` (
  `primo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenuCompleto`
--

INSERT INTO `PrimoMenuCompleto` (`primo`, `menucompleto`) VALUES
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 10),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avg_vote` double NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `name`, `thumbnail`, `avg_vote`, `latitude`, `longitude`, `address`) VALUES
(1, 'Ponterosso', 'https://www.scandichotels.com/imagevault/publishedmedia/qn6infvg30381stkubky/scandic-sundsvall-city-restaurant-verket-10.jpg', 4, 43.6237, 11.4641, 'Via Costa Andrea, 18, 50066 Reggello FI'),
(2, 'Il passeggero', 'http://parkresto.com/wp-content/themes/parkrestaurant/images/11onlinereservationpark.jpg', 2, 43.6968, 11.529, 'Via del Ponterosso, 9, 50063 Figline Valdarno FI'),
(3, 'Antica Trattoria il Burchio', 'https://media-cdn.tripadvisor.com/media/photo-s/0a/df/d9/a0/il-burchio.jpg', 4, 43.6789, 11.4433, 'S. Donato I-50064 Burchio'),
(4, 'Yamasaky Wok Sushi', 'https://lh6.googleusercontent.com/-1sjUzK4auoc/V8sQpv8XNzI/AAAAAAAAA3Q/GCTK916mt9EyKl9jX-7oMNXG_PQVhHOBwCJkC/s408-k-no/', 4, 43.6299, 11.4631, 'Via della Comunità Europea, 13, 50063 Figline Valdarno FI'),
(5, 'Osteria Pizzeria Portici', 'https://lh6.googleusercontent.com/-08jm4kX5uxs/V9xCSPENGLI/AAAAAAAAF5k/CxsGp-ot63ElWUn6Wb1e9ak70vMxgeu_ACJkC/s408-k-no/', 4, 43.6183, 11.4738, 'Via Fabbrini, 40, 50063 Figline Valdarno FI'),
(6, 'Ristorante Pizzeria Mari E Monti ', 'https://lh5.googleusercontent.com/-HA0nHcCkAzk/VNa0yctAnBI/AAAAAAAAAAU/YmKx0VLKs4EcVdoh7N0YZQe6HN2so9NZgCJkC/s408-k-no/', 2.5, 43.6238, 11.4639, 'Via di Maestro da Figline, 2, 50063 Figline Valdarno FI'),
(7, 'Ristorante Firenze Nova', 'https://lh5.googleusercontent.com/-dRwJ5VzNZs8/WCDyZzVbzjI/AAAAAAAAAF4/KBrgl7bc5SIHS4O29YC_4nnjDuHsuV5mgCLIB/s408-k-no/', 5, 43.8258, 11.1421, 'Via Palagetta, 47/2/3, 50013 Campi Bisenzio FI'),
(8, 'La Bottega Del Buon Caffè', 'https://lh4.googleusercontent.com/-_I_BH_lqUbM/VPSB2bPcvrI/AAAAAAAAARE/2FqltFqNAlM8KpkORksKuI89QwZl0ihRACJkC/s408-k-no/', 5, 43.7976, 11.2657, 'Lungarno Benvenuto Cellini, 69r, 50125 Firenze'),
(9, 'Trattoria La Querce', 'https://lh5.googleusercontent.com/proxy/ziDujWN_n5gXwJ4YxT492r5Hm-XbBsOqINV8XXfmkuVWZXlZqg87-ajfLqHy6RPuTi58j94DNfZdQJLkqJXcASR45qM-6Y9r28PztX8Q9PbTROAQpD0JrceaXOPPMWvK6elFXso0L66RnAEryCWQpySpV6F7tw=w408-h280', 5, 43.4932, 11.6256, 'Via Aretina, 12, 52021 Localita\' La Querce, Bucine AR'),
(10, 'Al Solito Posto', 'https://lh6.googleusercontent.com/-_yeNam2uJ9o/UO65QCNzm3I/AAAAAAAAAHs/0CO63yxufHocYvYW_mfLgcoYBdhL0ovuACJkC/s408-k-no/', 4, 43.5513, 11.5813, 'Via Dante, 27, 52028 Terranuova Bracciolini AR');

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantOrario`
--

CREATE TABLE `RestaurantOrario` (
  `restaurant` int(11) NOT NULL,
  `orario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RestaurantOrario`
--

INSERT INTO `RestaurantOrario` (`restaurant`, `orario`) VALUES
(1, 5),
(1, 6),
(2, 5),
(3, 7),
(3, 9),
(4, 5),
(4, 7),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(6, 6),
(6, 8),
(7, 8),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(8, 9),
(9, 6),
(9, 7),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Secondo`
--

CREATE TABLE `Secondo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Secondo`
--

INSERT INTO `Secondo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'hamburgher di chianina', 'hamburgher di carne chianina', 'http://www.ilgiornaledelcibo.it/wp-content/uploads/2015/07/hamburger-di-chianina1.jpg', 6.5),
(2, 'petto di pollo ', 'petto di pollo rosolato in padella', 'http://www.ricetta.it/Uploads/Imgs/10-ricette-per-cucinare-petti-di-pollo-big.jpg', 7),
(3, 'sogliola fritta', 'piatto con sogliola impanata e fritta', 'http://it.geniuscook.com/wp-content/uploads/2014/01/sogliola-fritta.jpg', 6),
(4, 'Ali di pollo fritte', 'Le ali di pollo fritte sono un secondo piatto sfizioso e molto appetitoso! Ottime da spiluccare come finger food o per una cena informale tra amici, sono irresistibili con la loro panatura croccante.', 'http://www.giallozafferano.it/images/ricette/10/1008/foto_hd/hd650x433_wm.jpg', 3.5),
(5, 'Alici alla pizzaiola', 'Un secondo piatto estivo, fatto di ingredienti semplici: teneri filetti di alici ammorbiditi da un gustoso sughetto rilasciato dai pomodori, sapori che diventano tutt’uno assicurandovi così una vera prelibatezza', 'http://www.giallozafferano.it/images/ricette/10/1006/foto_hd/hd650x433_wm.jpg', 5.3),
(6, 'Anguilla in crosta di mandorle', 'L\'anguilla in crosta di mandorle è un piatto di pesce raffinato ed elaborato: i filetti di anguilla vengono insaporiti con del miele di Acacia e cosparsi di mandorle tostate che gli conferiscono una piacevole croccantezza.', 'http://www.giallozafferano.it/images/ricette/14/1433/foto_hd/hd650x433_wm.jpg', 7),
(7, 'Anatra all\'arancia\\r\\n', 'Nell\'immaginario comune, l\'anatra all\'arancia, è una tipica ricetta francese ma, veramente pochi sanno che in realtà questo piatto così particolare affonda le sue origini nella cucina Toscana di Firenze. Questo succulento piatto, che i toscani chiamavano \"paparo alla melarancia\", fu esportato in Francia da Caterina de Medici che, andata in sposa a Enrico II di Francia, decise di portarsi dietro un pezzettino della sua Firenze.', 'http://www.giallozafferano.it/images/ricette/0/30/foto_hd/hd650x433_wm.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenu`
--

CREATE TABLE `SecondoMenu` (
  `secondo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenu`
--

INSERT INTO `SecondoMenu` (`secondo`, `menu`) VALUES
(1, 5),
(2, 10),
(3, 6),
(3, 9),
(4, 8),
(5, 10),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenuCompleto`
--

CREATE TABLE `SecondoMenuCompleto` (
  `secondo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenuCompleto`
--

INSERT INTO `SecondoMenuCompleto` (`secondo`, `menucompleto`) VALUES
(1, 10),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 2),
(4, 7),
(4, 10),
(5, 4),
(5, 8),
(6, 6),
(6, 8),
(6, 10),
(7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Antipasto`
--
ALTER TABLE `Antipasto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD PRIMARY KEY (`antipasto`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD PRIMARY KEY (`antipasto`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Dolce`
--
ALTER TABLE `Dolce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD PRIMARY KEY (`dolce`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD PRIMARY KEY (`dolce`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD PRIMARY KEY (`restaurant`),
  ADD KEY `restaurant` (`restaurant`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD PRIMARY KEY (`menu`,`restaurant`),
  ADD KEY `restaurant` (`restaurant`);

--
-- Indexes for table `Orario`
--
ALTER TABLE `Orario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Primo`
--
ALTER TABLE `Primo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD PRIMARY KEY (`primo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD PRIMARY KEY (`primo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD PRIMARY KEY (`restaurant`,`orario`),
  ADD KEY `orario` (`orario`);

--
-- Indexes for table `Secondo`
--
ALTER TABLE `Secondo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD PRIMARY KEY (`secondo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD PRIMARY KEY (`secondo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Antipasto`
--
ALTER TABLE `Antipasto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Dolce`
--
ALTER TABLE `Dolce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Menu`
--
ALTER TABLE `Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Orario`
--
ALTER TABLE `Orario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Primo`
--
ALTER TABLE `Primo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Secondo`
--
ALTER TABLE `Secondo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD CONSTRAINT `AntipastoMenu_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD CONSTRAINT `DolceMenu_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD CONSTRAINT `MenuRestaurant_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`),
  ADD CONSTRAINT `MenuRestaurant_ibfk_2` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD CONSTRAINT `PrimoMenu_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD CONSTRAINT `RestaurantOrario_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `RestaurantOrario_ibfk_2` FOREIGN KEY (`orario`) REFERENCES `Orario` (`id`);

--
-- Constraints for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD CONSTRAINT `SecondoMenu_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);
--
-- Database: `id501917_appetizing`
--
CREATE DATABASE IF NOT EXISTS `id501917_appetizing` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id501917_appetizing`;

-- --------------------------------------------------------

--
-- Table structure for table `Antipasto`
--

CREATE TABLE `Antipasto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Antipasto`
--

INSERT INTO `Antipasto` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(2, 'Crostini Misti', 'piatto di crostini misti', 'http://blog.giallozafferano.it/dicembre63/wp-content/uploads/2015/01/image.jpg', 4),
(3, 'Patate fritte', 'piatto di patate fritte con salsa', 'http://static.salepepe.it/files/2014/03/come-fare-patate-fritte_05.jpg', 3),
(4, 'Totani fritti', 'piatto di totani fritti', 'http://blog.giallozafferano.it/isaporiditerry/wp-content/uploads/2016/01/1051.jpg', 6),
(5, 'Anelli di cipolla fritti', 'Anelli di cipolla in pastella\\r\\nAntipasti\\r\\n\\r\\nAnelli di cipolla in pastellaGuarda altre ricette simili\\r\\n89Aggiungi al tuo ricettario\\r\\nDifficoltà:\\r\\nbassa\\r\\nPreparazione:\\r\\n10 min\\r\\nCottura:\\r\\n30 min\\r\\nDosi per:\\r\\n4 persone\\r\\nCosto:\\r\\nbasso\\r\\nNOTA: + 30 minuti di riposo\\r\\nPresentazione\\r\\n\\r\\nGli anelli di cipolla in pastella formano una pietanza rustica e stuzzicante: possono essere serviti come stuzzichini durante un aperitivo, come accompagnamento ad un piatto di carne oppure in abbinamento ad un un piatto di ', 'http://www.giallozafferano.it/images/ricette/6/614/foto_hd/hd650x433_wm.jpg', 3.2),
(6, 'Alici marinate', 'Le alici marinate vengono servite come antipasto e spesso si trovano anche nei menù dei ristoranti. Il gusto della marinatura, intenso e acidulato, sposa la tenerezza del pesce azzurro, rendendo questo piatto molto saporito e fresco', 'http://www.giallozafferano.it/images/ricette/1/184/foto_hd/hd650x433_wm.jpg', 4),
(7, 'Asparagi allo zabaione', 'Gli asparagi allo zabaione salato sono un antipasto gustoso e originale e rappresentano un modo alternativo di servire gli asparagi verdi, che vengono bolliti e per finire conditi con una soffice e cremosa salsa.', 'http://www.giallozafferano.it/images/ricette/12/1249/foto_hd/hd650x433_wm.jpg', 2),
(8, 'Asparagi mummia', 'nack sfizioso e nutriente ai vostri bambini! Gli asparagi mummia sono un esempio: strisce di pasta sfoglia che simulano le bende, avvolgono un ripieno di prosciutto cotto e asparagi! ', 'http://www.giallozafferano.it/images/ricette/38/3818/foto_hd/hd650x433_wm.jpg', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenu`
--

CREATE TABLE `AntipastoMenu` (
  `antipasto` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenu`
--

INSERT INTO `AntipastoMenu` (`antipasto`, `menu`) VALUES
(2, 8),
(3, 5),
(3, 10),
(4, 6),
(4, 7),
(5, 7),
(5, 8),
(6, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenuCompleto`
--

CREATE TABLE `AntipastoMenuCompleto` (
  `antipasto` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenuCompleto`
--

INSERT INTO `AntipastoMenuCompleto` (`antipasto`, `menucompleto`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 7),
(3, 1),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 8),
(5, 10),
(6, 7),
(6, 10),
(7, 2),
(7, 8),
(7, 10),
(8, 2),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Dolce`
--

CREATE TABLE `Dolce` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dolce`
--

INSERT INTO `Dolce` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'panna cotta', 'piatto di panna cotta con salsa', 'http://assets.epicurious.com/photos/5761d0268accf290434553aa/master/pass/panna-cotta.jpg', 7),
(2, 'tiramisu', 'piatto di tiramisu con cacao', 'http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/2/4/2/RX-FNM_030111-Sugar-Fix-005_s4x3.jpg.rend.sniipadlarge.jpeg', 5),
(3, 'Banana sushi', 'Le crepes sono uno dei dolci preferiti dai bambini, soprattutto farcite con la Nutella. In questa ricetta vi proponiamo un modo originale per unire questa sfiziosa merenda con la frutta e dare vita al banana sushi', 'http://www.giallozafferano.it/images/ricette/38/3832/foto_hd/hd650x433_wm.jpg', 3.5),
(4, 'Acai bowl', 'L’acai bowl consiste fondamentalmente in una ricca macedonia con aggiunta di cereali e frutta secca, il tutto servito con un composto a base di purea o polvere di acai, solitamente mescolato con frutta frullata per una versione vegana oppure con yogurt, come vi proponiamo nella nostra variante.', 'http://www.giallozafferano.it/images/ricette/169/16918/foto_hd/hd650x433_wm.jpg', 4),
(5, 'Amaretti', 'Gli amaretti sono piccoli biscotti molto amati e diffusi in tante regioni italiane. Da nord a sud si contano diverse varianti, a pasta morbida, cosparsi con zucchero e granella oppure croccanti, come quelli che vi proponiamo in questa ricetta. Il gusto intenso degli amaretti è ottenuto grazie alla combinazione di mandorle pelate dolci e mandorle armelline,  ricavate dai noccioli delle albicocche e delle pesche ed usate nelle preparazioni di pasticceria in piccole dosi.', 'http://www.giallozafferano.it/images/ricette/34/3457/foto_hd/hd650x433_wm.jpg', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenu`
--

CREATE TABLE `DolceMenu` (
  `dolce` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenu`
--

INSERT INTO `DolceMenu` (`dolce`, `menu`) VALUES
(1, 6),
(1, 9),
(2, 5),
(3, 8),
(4, 7),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenuCompleto`
--

CREATE TABLE `DolceMenuCompleto` (
  `dolce` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenuCompleto`
--

INSERT INTO `DolceMenuCompleto` (`dolce`, `menucompleto`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 10),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(2, 8),
(3, 4),
(3, 7),
(3, 10),
(4, 5),
(4, 10),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `name`) VALUES
(5, 'menu di carne'),
(6, 'menu di pesce'),
(7, 'menu del cacciatore'),
(8, 'menu della casa'),
(9, 'menu del pescatore'),
(10, 'menu del boscaiolo');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompleto`
--

CREATE TABLE `MenuCompleto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompleto`
--

INSERT INTO `MenuCompleto` (`id`, `name`) VALUES
(1, 'menu completo'),
(2, 'complete'),
(3, 'test1'),
(4, 'test2'),
(5, 'test5'),
(6, 'test7'),
(7, 'test8'),
(8, 'test9'),
(9, 'test10'),
(10, 'test13');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompletoRestaurant`
--

CREATE TABLE `MenuCompletoRestaurant` (
  `restaurant` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompletoRestaurant`
--

INSERT INTO `MenuCompletoRestaurant` (`restaurant`, `menucompleto`) VALUES
(1, 1),
(5, 3),
(10, 3),
(3, 4),
(9, 4),
(6, 7),
(8, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `MenuRestaurant`
--

CREATE TABLE `MenuRestaurant` (
  `menu` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuRestaurant`
--

INSERT INTO `MenuRestaurant` (`menu`, `restaurant`) VALUES
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 9),
(6, 1),
(6, 6),
(6, 7),
(6, 9),
(6, 10),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 3),
(8, 4),
(8, 7),
(8, 10),
(9, 9),
(10, 1),
(10, 3),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Orario`
--

CREATE TABLE `Orario` (
  `id` int(11) NOT NULL,
  `hour` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Orario`
--

INSERT INTO `Orario` (`id`, `hour`) VALUES
(5, '19:00'),
(6, '19:30'),
(7, '20:30'),
(8, '21:00'),
(9, '20:00');

-- --------------------------------------------------------

--
-- Table structure for table `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numberOfPeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Prenotazione`
--

INSERT INTO `Prenotazione` (`id`, `name`, `date`, `time`, `numberOfPeople`) VALUES
(7, 'res9287', '17/1/2017', '20:30', 2),
(8, 'res3376', '17/1/2017', '20:00', 2),
(9, 'res8601', '17/1/2017', '20:00', 2),
(10, 'res2028', '17/1/2017', '19:30', 2),
(11, 'res506', '18/1/2017', '19:30', 2),
(12, 'res2765', '18/1/2017', '19:30', 1),
(13, 'res2797', '18/1/2017', '19:30', 1),
(14, 'res6127', '18/1/2017', '19:30', 1),
(15, 'res2758', '18/1/2017', '19:30', 1),
(16, 'res5563', '18/1/2017', '20:30', 2),
(17, 'res5821', '18/1/2017', '19:00', 2),
(18, 'res2868', '18/1/2017', '19:00', 2),
(19, 'res8557', '18/1/2017', '19:00', 2),
(20, 'res8482', '18/1/2017', '19:00', 2),
(21, 'res843', '18/1/2017', '19:00', 2),
(22, 'res3814', '18/1/2017', '19:30', 2),
(23, 'res2512', '18/1/2017', '19:00', 2),
(24, 'res4523', '18/1/2017', '19:00', 2),
(25, 'res3593', '18/1/2017', '19:00', 2),
(26, 'res2172', '18/1/2017', '19:00', 2),
(27, 'res195', '18/1/2017', '19:00', 1),
(28, 'res472', '18/1/2017', '19:00', 1),
(29, 'res8707', '19/1/2017', '19:00', 1),
(30, 'res7696', '18/2/2017', '19:00', 1),
(31, 'res3801', '19/1/2017', 'undefined', 2),
(32, 'res1955', '19/1/2017', 'undefined', 1),
(33, 'res6745', '19/1/2017', '19:00', 1),
(34, 'res9359', '20/1/2017', 'undefined', 2),
(35, 'res2163', '20/1/2017', 'undefined', 2),
(36, 'res9921', '20/1/2017', '19:00', 2),
(37, 'res1721', '21/1/2017', '19:00', 1),
(38, 'giuliano', '22/1/2017', '19:30', 2),
(39, 'res9010', '22/1/2017', '21:00', 4),
(40, 'res4044', '28/1/2017', '21:00', 2),
(41, 'res9327', '22/1/2017', '19:30', 4),
(42, 'res990', '22/1/2017', '19:00', 2),
(43, 'res4929', '22/1/2017', '19:30', 1),
(44, 'res7162', '26/1/2017', '19:00', 2),
(45, 'giulialte', '26/1/2017', '21:00', 2),
(46, 'giulialte', '25/1/2017', '19:00', 2),
(47, 'res4215', '22/1/2017', '19:30', 8),
(48, 'res8286', '22/1/2017', '19:00', 2),
(49, 'res1184', '23/1/2017', '19:30', 4),
(50, 'res4133', '23/1/2017', '19:00', 2),
(51, 'res4320', '22/1/2017', '20:30', 2),
(52, 'res8012', '22/1/2017', '19:30', 2),
(53, 'res3396', '22/1/2017', '19:30', 2),
(54, 'res9829', '22/1/2017', '20:30', 2),
(55, 'res2073', '22/1/2017', '21:00', 2),
(56, 'res1315', '22/1/2017', '20:30', 2),
(57, 'res2402', '22/1/2017', '19:00', 2),
(58, 'res4842', '16/1/2017', '19:00', 4),
(59, 'res4453', '22/1/2017', '19:30', 1),
(60, 'res8972', '27/1/2017', '19:00', 2),
(61, 'res435', '27/1/2017', '19:00', 2),
(62, 'res4231', '24/1/2017', '19:30', 3),
(63, 'res7704', '24/1/2017', '19:30', 3),
(64, 'res1359', '22/1/2017', '20:00', 2),
(65, 'res2394', '22/1/2017', '19:30', 2),
(66, 'res8366', '22/1/2017', '20:30', 1),
(67, 'res6770', '28/1/2017', '19:30', 4),
(68, 'res8508', '28/1/2017', '21:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Primo`
--

CREATE TABLE `Primo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Primo`
--

INSERT INTO `Primo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(3, 'pappardelle al cinghiale', 'piatto di pappardelle con sugo di cinghiale', 'http://www.ilcaffe.tv/img_articoli/big/2015/05/496.jpg', 9.5),
(4, 'risotto di mare', 'risotto con frutti di mare freschi', 'http://statics.cucchiaio.it/content/cucchiaio/it/ricette/2012/05/ricetta-risotto-frutti-mare/jcr:content/header-par/image_single.img10.jpg/1463562169958.jpg', 7.5),
(5, 'Agnolotti', 'Gli agnolotti sono il tipico primo piatto della cucina Piemontese e rappresentano una ricetta conosciuta ed apprezzata non solo inItalia, ma anche all’estero per la sua bontà e semplicità.', 'http://www.giallozafferano.it/images/ricette/0/62/foto_hd/hd650x433_wm.jpg', 6),
(6, 'Arancini di spaghetti', 'Gli arancini di spaghetti sono una gustosa alternativa ai classici arancini di riso, tipici della gastronomia siciliana. Come dice il nome stesso, a differenza della ricetta tradizionale, in questa versione vengono utilizzati spaghetti, arricchiti con burro, formaggio e uova, con i quali si forma una “palla” che viene poi fritta.', 'http://www.giallozafferano.it/images/ricette/23/2343/foto_hd/hd650x433_wm.jpg', 5.5),
(7, 'Bavette al pesto', 'Avete voglia di un piatto fresco e profumato perfetto per il vostro menù? Allora le bavette al pesto sono proprio la ricetta che state cercando! Il pesto, caposaldo della cucina ligure, è una salsa molto versatile e sempre molto apprezzata sulla tavola', 'http://www.giallozafferano.it/images/ricette/157/15710/foto_hd/hd650x433_wm.jpg', 6.5),
(8, 'Bigoli in salsa', 'I bigoli in salsa sono un primo piatto tipico del Veneto che, secondo tradizione, venivano consumati durante i giorni di magro, come la vigilia di Natale, il venerdì Santo e il mercoledì delle Ceneri.\\r\\nI bigoli in salsa sono realizzati con un condimento semplice, ma molto gustoso, formato da cipolle affettate finissime e acciughe (o sarde) disciolte lentamente in olio di oliva', 'http://www.giallozafferano.it/images/ricette/7/779/foto_hd/hd650x433_wm.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenu`
--

CREATE TABLE `PrimoMenu` (
  `primo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenu`
--

INSERT INTO `PrimoMenu` (`primo`, `menu`) VALUES
(3, 5),
(4, 6),
(4, 8),
(4, 9),
(5, 10),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenuCompleto`
--

CREATE TABLE `PrimoMenuCompleto` (
  `primo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenuCompleto`
--

INSERT INTO `PrimoMenuCompleto` (`primo`, `menucompleto`) VALUES
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 10),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avg_vote` double NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `name`, `thumbnail`, `avg_vote`, `latitude`, `longitude`, `address`) VALUES
(1, 'Ponterosso', 'https://www.scandichotels.com/imagevault/publishedmedia/qn6infvg30381stkubky/scandic-sundsvall-city-restaurant-verket-10.jpg', 4, 43.6237, 11.4641, 'Via Costa Andrea, 18, 50066 Reggello FI'),
(2, 'Il passeggero', 'http://parkresto.com/wp-content/themes/parkrestaurant/images/11onlinereservationpark.jpg', 2, 43.6968, 11.529, 'Via del Ponterosso, 9, 50063 Figline Valdarno FI'),
(3, 'Antica Trattoria il Burchio', 'https://media-cdn.tripadvisor.com/media/photo-s/0a/df/d9/a0/il-burchio.jpg', 4, 43.6789, 11.4433, 'S. Donato I-50064 Burchio'),
(4, 'Yamasaky Wok Sushi', 'https://lh6.googleusercontent.com/-1sjUzK4auoc/V8sQpv8XNzI/AAAAAAAAA3Q/GCTK916mt9EyKl9jX-7oMNXG_PQVhHOBwCJkC/s408-k-no/', 4, 43.6299, 11.4631, 'Via della Comunità Europea, 13, 50063 Figline Valdarno FI'),
(5, 'Osteria Pizzeria Portici', 'https://lh6.googleusercontent.com/-08jm4kX5uxs/V9xCSPENGLI/AAAAAAAAF5k/CxsGp-ot63ElWUn6Wb1e9ak70vMxgeu_ACJkC/s408-k-no/', 4, 43.6183, 11.4738, 'Via Fabbrini, 40, 50063 Figline Valdarno FI'),
(6, 'Ristorante Pizzeria Mari E Monti ', 'https://lh5.googleusercontent.com/-HA0nHcCkAzk/VNa0yctAnBI/AAAAAAAAAAU/YmKx0VLKs4EcVdoh7N0YZQe6HN2so9NZgCJkC/s408-k-no/', 2.5, 43.6238, 11.4639, 'Via di Maestro da Figline, 2, 50063 Figline Valdarno FI'),
(7, 'Ristorante Firenze Nova', 'https://lh5.googleusercontent.com/-dRwJ5VzNZs8/WCDyZzVbzjI/AAAAAAAAAF4/KBrgl7bc5SIHS4O29YC_4nnjDuHsuV5mgCLIB/s408-k-no/', 5, 43.8258, 11.1421, 'Via Palagetta, 47/2/3, 50013 Campi Bisenzio FI'),
(8, 'La Bottega Del Buon Caffè', 'https://lh4.googleusercontent.com/-_I_BH_lqUbM/VPSB2bPcvrI/AAAAAAAAARE/2FqltFqNAlM8KpkORksKuI89QwZl0ihRACJkC/s408-k-no/', 5, 43.7976, 11.2657, 'Lungarno Benvenuto Cellini, 69r, 50125 Firenze'),
(9, 'Trattoria La Querce', 'https://lh5.googleusercontent.com/proxy/ziDujWN_n5gXwJ4YxT492r5Hm-XbBsOqINV8XXfmkuVWZXlZqg87-ajfLqHy6RPuTi58j94DNfZdQJLkqJXcASR45qM-6Y9r28PztX8Q9PbTROAQpD0JrceaXOPPMWvK6elFXso0L66RnAEryCWQpySpV6F7tw=w408-h280', 5, 43.4932, 11.6256, 'Via Aretina, 12, 52021 Localita\' La Querce, Bucine AR'),
(10, 'Al Solito Posto', 'https://lh6.googleusercontent.com/-_yeNam2uJ9o/UO65QCNzm3I/AAAAAAAAAHs/0CO63yxufHocYvYW_mfLgcoYBdhL0ovuACJkC/s408-k-no/', 4, 43.5513, 11.5813, 'Via Dante, 27, 52028 Terranuova Bracciolini AR');

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantOrario`
--

CREATE TABLE `RestaurantOrario` (
  `restaurant` int(11) NOT NULL,
  `orario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RestaurantOrario`
--

INSERT INTO `RestaurantOrario` (`restaurant`, `orario`) VALUES
(1, 5),
(1, 6),
(2, 5),
(3, 7),
(3, 9),
(4, 5),
(4, 7),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(6, 6),
(6, 8),
(7, 8),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(8, 9),
(9, 6),
(9, 7),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Secondo`
--

CREATE TABLE `Secondo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Secondo`
--

INSERT INTO `Secondo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'hamburgher di chianina', 'hamburgher di carne chianina', 'http://www.ilgiornaledelcibo.it/wp-content/uploads/2015/07/hamburger-di-chianina1.jpg', 6.5),
(2, 'petto di pollo ', 'petto di pollo rosolato in padella', 'http://www.ricetta.it/Uploads/Imgs/10-ricette-per-cucinare-petti-di-pollo-big.jpg', 7),
(3, 'sogliola fritta', 'piatto con sogliola impanata e fritta', 'http://it.geniuscook.com/wp-content/uploads/2014/01/sogliola-fritta.jpg', 6),
(4, 'Ali di pollo fritte', 'Le ali di pollo fritte sono un secondo piatto sfizioso e molto appetitoso! Ottime da spiluccare come finger food o per una cena informale tra amici, sono irresistibili con la loro panatura croccante.', 'http://www.giallozafferano.it/images/ricette/10/1008/foto_hd/hd650x433_wm.jpg', 3.5),
(5, 'Alici alla pizzaiola', 'Un secondo piatto estivo, fatto di ingredienti semplici: teneri filetti di alici ammorbiditi da un gustoso sughetto rilasciato dai pomodori, sapori che diventano tutt’uno assicurandovi così una vera prelibatezza', 'http://www.giallozafferano.it/images/ricette/10/1006/foto_hd/hd650x433_wm.jpg', 5.3),
(6, 'Anguilla in crosta di mandorle', 'L\'anguilla in crosta di mandorle è un piatto di pesce raffinato ed elaborato: i filetti di anguilla vengono insaporiti con del miele di Acacia e cosparsi di mandorle tostate che gli conferiscono una piacevole croccantezza.', 'http://www.giallozafferano.it/images/ricette/14/1433/foto_hd/hd650x433_wm.jpg', 7),
(7, 'Anatra all\'arancia\\r\\n', 'Nell\'immaginario comune, l\'anatra all\'arancia, è una tipica ricetta francese ma, veramente pochi sanno che in realtà questo piatto così particolare affonda le sue origini nella cucina Toscana di Firenze. Questo succulento piatto, che i toscani chiamavano \"paparo alla melarancia\", fu esportato in Francia da Caterina de Medici che, andata in sposa a Enrico II di Francia, decise di portarsi dietro un pezzettino della sua Firenze.', 'http://www.giallozafferano.it/images/ricette/0/30/foto_hd/hd650x433_wm.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenu`
--

CREATE TABLE `SecondoMenu` (
  `secondo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenu`
--

INSERT INTO `SecondoMenu` (`secondo`, `menu`) VALUES
(1, 5),
(2, 10),
(3, 6),
(3, 9),
(4, 8),
(5, 10),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenuCompleto`
--

CREATE TABLE `SecondoMenuCompleto` (
  `secondo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenuCompleto`
--

INSERT INTO `SecondoMenuCompleto` (`secondo`, `menucompleto`) VALUES
(1, 10),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 2),
(4, 7),
(4, 10),
(5, 4),
(5, 8),
(6, 6),
(6, 8),
(6, 10),
(7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Antipasto`
--
ALTER TABLE `Antipasto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD PRIMARY KEY (`antipasto`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD PRIMARY KEY (`antipasto`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Dolce`
--
ALTER TABLE `Dolce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD PRIMARY KEY (`dolce`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD PRIMARY KEY (`dolce`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD PRIMARY KEY (`restaurant`),
  ADD KEY `restaurant` (`restaurant`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD PRIMARY KEY (`menu`,`restaurant`),
  ADD KEY `restaurant` (`restaurant`);

--
-- Indexes for table `Orario`
--
ALTER TABLE `Orario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Primo`
--
ALTER TABLE `Primo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD PRIMARY KEY (`primo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD PRIMARY KEY (`primo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD PRIMARY KEY (`restaurant`,`orario`),
  ADD KEY `orario` (`orario`);

--
-- Indexes for table `Secondo`
--
ALTER TABLE `Secondo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD PRIMARY KEY (`secondo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD PRIMARY KEY (`secondo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Antipasto`
--
ALTER TABLE `Antipasto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Dolce`
--
ALTER TABLE `Dolce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Menu`
--
ALTER TABLE `Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Orario`
--
ALTER TABLE `Orario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Primo`
--
ALTER TABLE `Primo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Secondo`
--
ALTER TABLE `Secondo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD CONSTRAINT `AntipastoMenu_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD CONSTRAINT `DolceMenu_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD CONSTRAINT `MenuRestaurant_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`),
  ADD CONSTRAINT `MenuRestaurant_ibfk_2` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD CONSTRAINT `PrimoMenu_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD CONSTRAINT `RestaurantOrario_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `RestaurantOrario_ibfk_2` FOREIGN KEY (`orario`) REFERENCES `Orario` (`id`);

--
-- Constraints for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD CONSTRAINT `SecondoMenu_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);
--
-- Database: `id501917_appetizing`
--
CREATE DATABASE IF NOT EXISTS `id501917_appetizing` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id501917_appetizing`;

-- --------------------------------------------------------

--
-- Table structure for table `Antipasto`
--

CREATE TABLE `Antipasto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Antipasto`
--

INSERT INTO `Antipasto` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(2, 'Crostini Misti', 'piatto di crostini misti', 'http://blog.giallozafferano.it/dicembre63/wp-content/uploads/2015/01/image.jpg', 4),
(3, 'Patate fritte', 'piatto di patate fritte con salsa', 'http://static.salepepe.it/files/2014/03/come-fare-patate-fritte_05.jpg', 3),
(4, 'Totani fritti', 'piatto di totani fritti', 'http://blog.giallozafferano.it/isaporiditerry/wp-content/uploads/2016/01/1051.jpg', 6),
(5, 'Anelli di cipolla fritti', 'Anelli di cipolla in pastella\\r\\nAntipasti\\r\\n\\r\\nAnelli di cipolla in pastellaGuarda altre ricette simili\\r\\n89Aggiungi al tuo ricettario\\r\\nDifficoltà:\\r\\nbassa\\r\\nPreparazione:\\r\\n10 min\\r\\nCottura:\\r\\n30 min\\r\\nDosi per:\\r\\n4 persone\\r\\nCosto:\\r\\nbasso\\r\\nNOTA: + 30 minuti di riposo\\r\\nPresentazione\\r\\n\\r\\nGli anelli di cipolla in pastella formano una pietanza rustica e stuzzicante: possono essere serviti come stuzzichini durante un aperitivo, come accompagnamento ad un piatto di carne oppure in abbinamento ad un un piatto di ', 'http://www.giallozafferano.it/images/ricette/6/614/foto_hd/hd650x433_wm.jpg', 3.2),
(6, 'Alici marinate', 'Le alici marinate vengono servite come antipasto e spesso si trovano anche nei menù dei ristoranti. Il gusto della marinatura, intenso e acidulato, sposa la tenerezza del pesce azzurro, rendendo questo piatto molto saporito e fresco', 'http://www.giallozafferano.it/images/ricette/1/184/foto_hd/hd650x433_wm.jpg', 4),
(7, 'Asparagi allo zabaione', 'Gli asparagi allo zabaione salato sono un antipasto gustoso e originale e rappresentano un modo alternativo di servire gli asparagi verdi, che vengono bolliti e per finire conditi con una soffice e cremosa salsa.', 'http://www.giallozafferano.it/images/ricette/12/1249/foto_hd/hd650x433_wm.jpg', 2),
(8, 'Asparagi mummia', 'nack sfizioso e nutriente ai vostri bambini! Gli asparagi mummia sono un esempio: strisce di pasta sfoglia che simulano le bende, avvolgono un ripieno di prosciutto cotto e asparagi! ', 'http://www.giallozafferano.it/images/ricette/38/3818/foto_hd/hd650x433_wm.jpg', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenu`
--

CREATE TABLE `AntipastoMenu` (
  `antipasto` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenu`
--

INSERT INTO `AntipastoMenu` (`antipasto`, `menu`) VALUES
(2, 8),
(3, 5),
(3, 10),
(4, 6),
(4, 7),
(5, 7),
(5, 8),
(6, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenuCompleto`
--

CREATE TABLE `AntipastoMenuCompleto` (
  `antipasto` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenuCompleto`
--

INSERT INTO `AntipastoMenuCompleto` (`antipasto`, `menucompleto`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 7),
(3, 1),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 8),
(5, 10),
(6, 7),
(6, 10),
(7, 2),
(7, 8),
(7, 10),
(8, 2),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Dolce`
--

CREATE TABLE `Dolce` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dolce`
--

INSERT INTO `Dolce` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'panna cotta', 'piatto di panna cotta con salsa', 'http://assets.epicurious.com/photos/5761d0268accf290434553aa/master/pass/panna-cotta.jpg', 7),
(2, 'tiramisu', 'piatto di tiramisu con cacao', 'http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/2/4/2/RX-FNM_030111-Sugar-Fix-005_s4x3.jpg.rend.sniipadlarge.jpeg', 5),
(3, 'Banana sushi', 'Le crepes sono uno dei dolci preferiti dai bambini, soprattutto farcite con la Nutella. In questa ricetta vi proponiamo un modo originale per unire questa sfiziosa merenda con la frutta e dare vita al banana sushi', 'http://www.giallozafferano.it/images/ricette/38/3832/foto_hd/hd650x433_wm.jpg', 3.5),
(4, 'Acai bowl', 'L’acai bowl consiste fondamentalmente in una ricca macedonia con aggiunta di cereali e frutta secca, il tutto servito con un composto a base di purea o polvere di acai, solitamente mescolato con frutta frullata per una versione vegana oppure con yogurt, come vi proponiamo nella nostra variante.', 'http://www.giallozafferano.it/images/ricette/169/16918/foto_hd/hd650x433_wm.jpg', 4),
(5, 'Amaretti', 'Gli amaretti sono piccoli biscotti molto amati e diffusi in tante regioni italiane. Da nord a sud si contano diverse varianti, a pasta morbida, cosparsi con zucchero e granella oppure croccanti, come quelli che vi proponiamo in questa ricetta. Il gusto intenso degli amaretti è ottenuto grazie alla combinazione di mandorle pelate dolci e mandorle armelline,  ricavate dai noccioli delle albicocche e delle pesche ed usate nelle preparazioni di pasticceria in piccole dosi.', 'http://www.giallozafferano.it/images/ricette/34/3457/foto_hd/hd650x433_wm.jpg', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenu`
--

CREATE TABLE `DolceMenu` (
  `dolce` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenu`
--

INSERT INTO `DolceMenu` (`dolce`, `menu`) VALUES
(1, 6),
(1, 9),
(2, 5),
(3, 8),
(4, 7),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenuCompleto`
--

CREATE TABLE `DolceMenuCompleto` (
  `dolce` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenuCompleto`
--

INSERT INTO `DolceMenuCompleto` (`dolce`, `menucompleto`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 10),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(2, 8),
(3, 4),
(3, 7),
(3, 10),
(4, 5),
(4, 10),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `name`) VALUES
(5, 'menu di carne'),
(6, 'menu di pesce'),
(7, 'menu del cacciatore'),
(8, 'menu della casa'),
(9, 'menu del pescatore'),
(10, 'menu del boscaiolo');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompleto`
--

CREATE TABLE `MenuCompleto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompleto`
--

INSERT INTO `MenuCompleto` (`id`, `name`) VALUES
(1, 'menu completo'),
(2, 'complete'),
(3, 'test1'),
(4, 'test2'),
(5, 'test5'),
(6, 'test7'),
(7, 'test8'),
(8, 'test9'),
(9, 'test10'),
(10, 'test13');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompletoRestaurant`
--

CREATE TABLE `MenuCompletoRestaurant` (
  `restaurant` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompletoRestaurant`
--

INSERT INTO `MenuCompletoRestaurant` (`restaurant`, `menucompleto`) VALUES
(1, 1),
(5, 3),
(10, 3),
(3, 4),
(9, 4),
(6, 7),
(8, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `MenuRestaurant`
--

CREATE TABLE `MenuRestaurant` (
  `menu` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuRestaurant`
--

INSERT INTO `MenuRestaurant` (`menu`, `restaurant`) VALUES
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 9),
(6, 1),
(6, 6),
(6, 7),
(6, 9),
(6, 10),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 3),
(8, 4),
(8, 7),
(8, 10),
(9, 9),
(10, 1),
(10, 3),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Orario`
--

CREATE TABLE `Orario` (
  `id` int(11) NOT NULL,
  `hour` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Orario`
--

INSERT INTO `Orario` (`id`, `hour`) VALUES
(5, '19:00'),
(6, '19:30'),
(7, '20:30'),
(8, '21:00'),
(9, '20:00');

-- --------------------------------------------------------

--
-- Table structure for table `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numberOfPeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Prenotazione`
--

INSERT INTO `Prenotazione` (`id`, `name`, `date`, `time`, `numberOfPeople`) VALUES
(7, 'res9287', '17/1/2017', '20:30', 2),
(8, 'res3376', '17/1/2017', '20:00', 2),
(9, 'res8601', '17/1/2017', '20:00', 2),
(10, 'res2028', '17/1/2017', '19:30', 2),
(11, 'res506', '18/1/2017', '19:30', 2),
(12, 'res2765', '18/1/2017', '19:30', 1),
(13, 'res2797', '18/1/2017', '19:30', 1),
(14, 'res6127', '18/1/2017', '19:30', 1),
(15, 'res2758', '18/1/2017', '19:30', 1),
(16, 'res5563', '18/1/2017', '20:30', 2),
(17, 'res5821', '18/1/2017', '19:00', 2),
(18, 'res2868', '18/1/2017', '19:00', 2),
(19, 'res8557', '18/1/2017', '19:00', 2),
(20, 'res8482', '18/1/2017', '19:00', 2),
(21, 'res843', '18/1/2017', '19:00', 2),
(22, 'res3814', '18/1/2017', '19:30', 2),
(23, 'res2512', '18/1/2017', '19:00', 2),
(24, 'res4523', '18/1/2017', '19:00', 2),
(25, 'res3593', '18/1/2017', '19:00', 2),
(26, 'res2172', '18/1/2017', '19:00', 2),
(27, 'res195', '18/1/2017', '19:00', 1),
(28, 'res472', '18/1/2017', '19:00', 1),
(29, 'res8707', '19/1/2017', '19:00', 1),
(30, 'res7696', '18/2/2017', '19:00', 1),
(31, 'res3801', '19/1/2017', 'undefined', 2),
(32, 'res1955', '19/1/2017', 'undefined', 1),
(33, 'res6745', '19/1/2017', '19:00', 1),
(34, 'res9359', '20/1/2017', 'undefined', 2),
(35, 'res2163', '20/1/2017', 'undefined', 2),
(36, 'res9921', '20/1/2017', '19:00', 2),
(37, 'res1721', '21/1/2017', '19:00', 1),
(38, 'giuliano', '22/1/2017', '19:30', 2),
(39, 'res9010', '22/1/2017', '21:00', 4),
(40, 'res4044', '28/1/2017', '21:00', 2),
(41, 'res9327', '22/1/2017', '19:30', 4),
(42, 'res990', '22/1/2017', '19:00', 2),
(43, 'res4929', '22/1/2017', '19:30', 1),
(44, 'res7162', '26/1/2017', '19:00', 2),
(45, 'giulialte', '26/1/2017', '21:00', 2),
(46, 'giulialte', '25/1/2017', '19:00', 2),
(47, 'res4215', '22/1/2017', '19:30', 8),
(48, 'res8286', '22/1/2017', '19:00', 2),
(49, 'res1184', '23/1/2017', '19:30', 4),
(50, 'res4133', '23/1/2017', '19:00', 2),
(51, 'res4320', '22/1/2017', '20:30', 2),
(52, 'res8012', '22/1/2017', '19:30', 2),
(53, 'res3396', '22/1/2017', '19:30', 2),
(54, 'res9829', '22/1/2017', '20:30', 2),
(55, 'res2073', '22/1/2017', '21:00', 2),
(56, 'res1315', '22/1/2017', '20:30', 2),
(57, 'res2402', '22/1/2017', '19:00', 2),
(58, 'res4842', '16/1/2017', '19:00', 4),
(59, 'res4453', '22/1/2017', '19:30', 1),
(60, 'res8972', '27/1/2017', '19:00', 2),
(61, 'res435', '27/1/2017', '19:00', 2),
(62, 'res4231', '24/1/2017', '19:30', 3),
(63, 'res7704', '24/1/2017', '19:30', 3),
(64, 'res1359', '22/1/2017', '20:00', 2),
(65, 'res2394', '22/1/2017', '19:30', 2),
(66, 'res8366', '22/1/2017', '20:30', 1),
(67, 'res6770', '28/1/2017', '19:30', 4),
(68, 'res8508', '28/1/2017', '21:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Primo`
--

CREATE TABLE `Primo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Primo`
--

INSERT INTO `Primo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(3, 'pappardelle al cinghiale', 'piatto di pappardelle con sugo di cinghiale', 'http://www.ilcaffe.tv/img_articoli/big/2015/05/496.jpg', 9.5),
(4, 'risotto di mare', 'risotto con frutti di mare freschi', 'http://statics.cucchiaio.it/content/cucchiaio/it/ricette/2012/05/ricetta-risotto-frutti-mare/jcr:content/header-par/image_single.img10.jpg/1463562169958.jpg', 7.5),
(5, 'Agnolotti', 'Gli agnolotti sono il tipico primo piatto della cucina Piemontese e rappresentano una ricetta conosciuta ed apprezzata non solo inItalia, ma anche all’estero per la sua bontà e semplicità.', 'http://www.giallozafferano.it/images/ricette/0/62/foto_hd/hd650x433_wm.jpg', 6),
(6, 'Arancini di spaghetti', 'Gli arancini di spaghetti sono una gustosa alternativa ai classici arancini di riso, tipici della gastronomia siciliana. Come dice il nome stesso, a differenza della ricetta tradizionale, in questa versione vengono utilizzati spaghetti, arricchiti con burro, formaggio e uova, con i quali si forma una “palla” che viene poi fritta.', 'http://www.giallozafferano.it/images/ricette/23/2343/foto_hd/hd650x433_wm.jpg', 5.5),
(7, 'Bavette al pesto', 'Avete voglia di un piatto fresco e profumato perfetto per il vostro menù? Allora le bavette al pesto sono proprio la ricetta che state cercando! Il pesto, caposaldo della cucina ligure, è una salsa molto versatile e sempre molto apprezzata sulla tavola', 'http://www.giallozafferano.it/images/ricette/157/15710/foto_hd/hd650x433_wm.jpg', 6.5),
(8, 'Bigoli in salsa', 'I bigoli in salsa sono un primo piatto tipico del Veneto che, secondo tradizione, venivano consumati durante i giorni di magro, come la vigilia di Natale, il venerdì Santo e il mercoledì delle Ceneri.\\r\\nI bigoli in salsa sono realizzati con un condimento semplice, ma molto gustoso, formato da cipolle affettate finissime e acciughe (o sarde) disciolte lentamente in olio di oliva', 'http://www.giallozafferano.it/images/ricette/7/779/foto_hd/hd650x433_wm.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenu`
--

CREATE TABLE `PrimoMenu` (
  `primo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenu`
--

INSERT INTO `PrimoMenu` (`primo`, `menu`) VALUES
(3, 5),
(4, 6),
(4, 8),
(4, 9),
(5, 10),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenuCompleto`
--

CREATE TABLE `PrimoMenuCompleto` (
  `primo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenuCompleto`
--

INSERT INTO `PrimoMenuCompleto` (`primo`, `menucompleto`) VALUES
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 10),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avg_vote` double NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `name`, `thumbnail`, `avg_vote`, `latitude`, `longitude`, `address`) VALUES
(1, 'Ponterosso', 'https://www.scandichotels.com/imagevault/publishedmedia/qn6infvg30381stkubky/scandic-sundsvall-city-restaurant-verket-10.jpg', 4, 43.6237, 11.4641, 'Via Costa Andrea, 18, 50066 Reggello FI'),
(2, 'Il passeggero', 'http://parkresto.com/wp-content/themes/parkrestaurant/images/11onlinereservationpark.jpg', 2, 43.6968, 11.529, 'Via del Ponterosso, 9, 50063 Figline Valdarno FI'),
(3, 'Antica Trattoria il Burchio', 'https://media-cdn.tripadvisor.com/media/photo-s/0a/df/d9/a0/il-burchio.jpg', 4, 43.6789, 11.4433, 'S. Donato I-50064 Burchio'),
(4, 'Yamasaky Wok Sushi', 'https://lh6.googleusercontent.com/-1sjUzK4auoc/V8sQpv8XNzI/AAAAAAAAA3Q/GCTK916mt9EyKl9jX-7oMNXG_PQVhHOBwCJkC/s408-k-no/', 4, 43.6299, 11.4631, 'Via della Comunità Europea, 13, 50063 Figline Valdarno FI'),
(5, 'Osteria Pizzeria Portici', 'https://lh6.googleusercontent.com/-08jm4kX5uxs/V9xCSPENGLI/AAAAAAAAF5k/CxsGp-ot63ElWUn6Wb1e9ak70vMxgeu_ACJkC/s408-k-no/', 4, 43.6183, 11.4738, 'Via Fabbrini, 40, 50063 Figline Valdarno FI'),
(6, 'Ristorante Pizzeria Mari E Monti ', 'https://lh5.googleusercontent.com/-HA0nHcCkAzk/VNa0yctAnBI/AAAAAAAAAAU/YmKx0VLKs4EcVdoh7N0YZQe6HN2so9NZgCJkC/s408-k-no/', 2.5, 43.6238, 11.4639, 'Via di Maestro da Figline, 2, 50063 Figline Valdarno FI'),
(7, 'Ristorante Firenze Nova', 'https://lh5.googleusercontent.com/-dRwJ5VzNZs8/WCDyZzVbzjI/AAAAAAAAAF4/KBrgl7bc5SIHS4O29YC_4nnjDuHsuV5mgCLIB/s408-k-no/', 5, 43.8258, 11.1421, 'Via Palagetta, 47/2/3, 50013 Campi Bisenzio FI'),
(8, 'La Bottega Del Buon Caffè', 'https://lh4.googleusercontent.com/-_I_BH_lqUbM/VPSB2bPcvrI/AAAAAAAAARE/2FqltFqNAlM8KpkORksKuI89QwZl0ihRACJkC/s408-k-no/', 5, 43.7976, 11.2657, 'Lungarno Benvenuto Cellini, 69r, 50125 Firenze'),
(9, 'Trattoria La Querce', 'https://lh5.googleusercontent.com/proxy/ziDujWN_n5gXwJ4YxT492r5Hm-XbBsOqINV8XXfmkuVWZXlZqg87-ajfLqHy6RPuTi58j94DNfZdQJLkqJXcASR45qM-6Y9r28PztX8Q9PbTROAQpD0JrceaXOPPMWvK6elFXso0L66RnAEryCWQpySpV6F7tw=w408-h280', 5, 43.4932, 11.6256, 'Via Aretina, 12, 52021 Localita\' La Querce, Bucine AR'),
(10, 'Al Solito Posto', 'https://lh6.googleusercontent.com/-_yeNam2uJ9o/UO65QCNzm3I/AAAAAAAAAHs/0CO63yxufHocYvYW_mfLgcoYBdhL0ovuACJkC/s408-k-no/', 4, 43.5513, 11.5813, 'Via Dante, 27, 52028 Terranuova Bracciolini AR');

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantOrario`
--

CREATE TABLE `RestaurantOrario` (
  `restaurant` int(11) NOT NULL,
  `orario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RestaurantOrario`
--

INSERT INTO `RestaurantOrario` (`restaurant`, `orario`) VALUES
(1, 5),
(1, 6),
(2, 5),
(3, 7),
(3, 9),
(4, 5),
(4, 7),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(6, 6),
(6, 8),
(7, 8),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(8, 9),
(9, 6),
(9, 7),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Secondo`
--

CREATE TABLE `Secondo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Secondo`
--

INSERT INTO `Secondo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'hamburgher di chianina', 'hamburgher di carne chianina', 'http://www.ilgiornaledelcibo.it/wp-content/uploads/2015/07/hamburger-di-chianina1.jpg', 6.5),
(2, 'petto di pollo ', 'petto di pollo rosolato in padella', 'http://www.ricetta.it/Uploads/Imgs/10-ricette-per-cucinare-petti-di-pollo-big.jpg', 7),
(3, 'sogliola fritta', 'piatto con sogliola impanata e fritta', 'http://it.geniuscook.com/wp-content/uploads/2014/01/sogliola-fritta.jpg', 6),
(4, 'Ali di pollo fritte', 'Le ali di pollo fritte sono un secondo piatto sfizioso e molto appetitoso! Ottime da spiluccare come finger food o per una cena informale tra amici, sono irresistibili con la loro panatura croccante.', 'http://www.giallozafferano.it/images/ricette/10/1008/foto_hd/hd650x433_wm.jpg', 3.5),
(5, 'Alici alla pizzaiola', 'Un secondo piatto estivo, fatto di ingredienti semplici: teneri filetti di alici ammorbiditi da un gustoso sughetto rilasciato dai pomodori, sapori che diventano tutt’uno assicurandovi così una vera prelibatezza', 'http://www.giallozafferano.it/images/ricette/10/1006/foto_hd/hd650x433_wm.jpg', 5.3),
(6, 'Anguilla in crosta di mandorle', 'L\'anguilla in crosta di mandorle è un piatto di pesce raffinato ed elaborato: i filetti di anguilla vengono insaporiti con del miele di Acacia e cosparsi di mandorle tostate che gli conferiscono una piacevole croccantezza.', 'http://www.giallozafferano.it/images/ricette/14/1433/foto_hd/hd650x433_wm.jpg', 7),
(7, 'Anatra all\'arancia\\r\\n', 'Nell\'immaginario comune, l\'anatra all\'arancia, è una tipica ricetta francese ma, veramente pochi sanno che in realtà questo piatto così particolare affonda le sue origini nella cucina Toscana di Firenze. Questo succulento piatto, che i toscani chiamavano \"paparo alla melarancia\", fu esportato in Francia da Caterina de Medici che, andata in sposa a Enrico II di Francia, decise di portarsi dietro un pezzettino della sua Firenze.', 'http://www.giallozafferano.it/images/ricette/0/30/foto_hd/hd650x433_wm.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenu`
--

CREATE TABLE `SecondoMenu` (
  `secondo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenu`
--

INSERT INTO `SecondoMenu` (`secondo`, `menu`) VALUES
(1, 5),
(2, 10),
(3, 6),
(3, 9),
(4, 8),
(5, 10),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenuCompleto`
--

CREATE TABLE `SecondoMenuCompleto` (
  `secondo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenuCompleto`
--

INSERT INTO `SecondoMenuCompleto` (`secondo`, `menucompleto`) VALUES
(1, 10),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 2),
(4, 7),
(4, 10),
(5, 4),
(5, 8),
(6, 6),
(6, 8),
(6, 10),
(7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Antipasto`
--
ALTER TABLE `Antipasto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD PRIMARY KEY (`antipasto`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD PRIMARY KEY (`antipasto`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Dolce`
--
ALTER TABLE `Dolce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD PRIMARY KEY (`dolce`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD PRIMARY KEY (`dolce`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD PRIMARY KEY (`restaurant`),
  ADD KEY `restaurant` (`restaurant`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD PRIMARY KEY (`menu`,`restaurant`),
  ADD KEY `restaurant` (`restaurant`);

--
-- Indexes for table `Orario`
--
ALTER TABLE `Orario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Primo`
--
ALTER TABLE `Primo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD PRIMARY KEY (`primo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD PRIMARY KEY (`primo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD PRIMARY KEY (`restaurant`,`orario`),
  ADD KEY `orario` (`orario`);

--
-- Indexes for table `Secondo`
--
ALTER TABLE `Secondo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD PRIMARY KEY (`secondo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD PRIMARY KEY (`secondo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Antipasto`
--
ALTER TABLE `Antipasto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Dolce`
--
ALTER TABLE `Dolce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Menu`
--
ALTER TABLE `Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Orario`
--
ALTER TABLE `Orario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Primo`
--
ALTER TABLE `Primo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Secondo`
--
ALTER TABLE `Secondo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD CONSTRAINT `AntipastoMenu_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD CONSTRAINT `DolceMenu_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD CONSTRAINT `MenuRestaurant_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`),
  ADD CONSTRAINT `MenuRestaurant_ibfk_2` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD CONSTRAINT `PrimoMenu_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD CONSTRAINT `RestaurantOrario_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `RestaurantOrario_ibfk_2` FOREIGN KEY (`orario`) REFERENCES `Orario` (`id`);

--
-- Constraints for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD CONSTRAINT `SecondoMenu_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);
--
-- Database: `id501917_appetizing`
--
CREATE DATABASE IF NOT EXISTS `id501917_appetizing` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id501917_appetizing`;

-- --------------------------------------------------------

--
-- Table structure for table `Antipasto`
--

CREATE TABLE `Antipasto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Antipasto`
--

INSERT INTO `Antipasto` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(2, 'Crostini Misti', 'piatto di crostini misti', 'http://blog.giallozafferano.it/dicembre63/wp-content/uploads/2015/01/image.jpg', 4),
(3, 'Patate fritte', 'piatto di patate fritte con salsa', 'http://static.salepepe.it/files/2014/03/come-fare-patate-fritte_05.jpg', 3),
(4, 'Totani fritti', 'piatto di totani fritti', 'http://blog.giallozafferano.it/isaporiditerry/wp-content/uploads/2016/01/1051.jpg', 6),
(5, 'Anelli di cipolla fritti', 'Anelli di cipolla in pastella\\r\\nAntipasti\\r\\n\\r\\nAnelli di cipolla in pastellaGuarda altre ricette simili\\r\\n89Aggiungi al tuo ricettario\\r\\nDifficoltà:\\r\\nbassa\\r\\nPreparazione:\\r\\n10 min\\r\\nCottura:\\r\\n30 min\\r\\nDosi per:\\r\\n4 persone\\r\\nCosto:\\r\\nbasso\\r\\nNOTA: + 30 minuti di riposo\\r\\nPresentazione\\r\\n\\r\\nGli anelli di cipolla in pastella formano una pietanza rustica e stuzzicante: possono essere serviti come stuzzichini durante un aperitivo, come accompagnamento ad un piatto di carne oppure in abbinamento ad un un piatto di ', 'http://www.giallozafferano.it/images/ricette/6/614/foto_hd/hd650x433_wm.jpg', 3.2),
(6, 'Alici marinate', 'Le alici marinate vengono servite come antipasto e spesso si trovano anche nei menù dei ristoranti. Il gusto della marinatura, intenso e acidulato, sposa la tenerezza del pesce azzurro, rendendo questo piatto molto saporito e fresco', 'http://www.giallozafferano.it/images/ricette/1/184/foto_hd/hd650x433_wm.jpg', 4),
(7, 'Asparagi allo zabaione', 'Gli asparagi allo zabaione salato sono un antipasto gustoso e originale e rappresentano un modo alternativo di servire gli asparagi verdi, che vengono bolliti e per finire conditi con una soffice e cremosa salsa.', 'http://www.giallozafferano.it/images/ricette/12/1249/foto_hd/hd650x433_wm.jpg', 2),
(8, 'Asparagi mummia', 'nack sfizioso e nutriente ai vostri bambini! Gli asparagi mummia sono un esempio: strisce di pasta sfoglia che simulano le bende, avvolgono un ripieno di prosciutto cotto e asparagi! ', 'http://www.giallozafferano.it/images/ricette/38/3818/foto_hd/hd650x433_wm.jpg', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenu`
--

CREATE TABLE `AntipastoMenu` (
  `antipasto` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenu`
--

INSERT INTO `AntipastoMenu` (`antipasto`, `menu`) VALUES
(2, 8),
(3, 5),
(3, 10),
(4, 6),
(4, 7),
(5, 7),
(5, 8),
(6, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `AntipastoMenuCompleto`
--

CREATE TABLE `AntipastoMenuCompleto` (
  `antipasto` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AntipastoMenuCompleto`
--

INSERT INTO `AntipastoMenuCompleto` (`antipasto`, `menucompleto`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 7),
(3, 1),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 8),
(5, 10),
(6, 7),
(6, 10),
(7, 2),
(7, 8),
(7, 10),
(8, 2),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Dolce`
--

CREATE TABLE `Dolce` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Dolce`
--

INSERT INTO `Dolce` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'panna cotta', 'piatto di panna cotta con salsa', 'http://assets.epicurious.com/photos/5761d0268accf290434553aa/master/pass/panna-cotta.jpg', 7),
(2, 'tiramisu', 'piatto di tiramisu con cacao', 'http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/2/4/2/RX-FNM_030111-Sugar-Fix-005_s4x3.jpg.rend.sniipadlarge.jpeg', 5),
(3, 'Banana sushi', 'Le crepes sono uno dei dolci preferiti dai bambini, soprattutto farcite con la Nutella. In questa ricetta vi proponiamo un modo originale per unire questa sfiziosa merenda con la frutta e dare vita al banana sushi', 'http://www.giallozafferano.it/images/ricette/38/3832/foto_hd/hd650x433_wm.jpg', 3.5),
(4, 'Acai bowl', 'L’acai bowl consiste fondamentalmente in una ricca macedonia con aggiunta di cereali e frutta secca, il tutto servito con un composto a base di purea o polvere di acai, solitamente mescolato con frutta frullata per una versione vegana oppure con yogurt, come vi proponiamo nella nostra variante.', 'http://www.giallozafferano.it/images/ricette/169/16918/foto_hd/hd650x433_wm.jpg', 4),
(5, 'Amaretti', 'Gli amaretti sono piccoli biscotti molto amati e diffusi in tante regioni italiane. Da nord a sud si contano diverse varianti, a pasta morbida, cosparsi con zucchero e granella oppure croccanti, come quelli che vi proponiamo in questa ricetta. Il gusto intenso degli amaretti è ottenuto grazie alla combinazione di mandorle pelate dolci e mandorle armelline,  ricavate dai noccioli delle albicocche e delle pesche ed usate nelle preparazioni di pasticceria in piccole dosi.', 'http://www.giallozafferano.it/images/ricette/34/3457/foto_hd/hd650x433_wm.jpg', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenu`
--

CREATE TABLE `DolceMenu` (
  `dolce` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenu`
--

INSERT INTO `DolceMenu` (`dolce`, `menu`) VALUES
(1, 6),
(1, 9),
(2, 5),
(3, 8),
(4, 7),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `DolceMenuCompleto`
--

CREATE TABLE `DolceMenuCompleto` (
  `dolce` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `DolceMenuCompleto`
--

INSERT INTO `DolceMenuCompleto` (`dolce`, `menucompleto`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 10),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(2, 8),
(3, 4),
(3, 7),
(3, 10),
(4, 5),
(4, 10),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `name`) VALUES
(5, 'menu di carne'),
(6, 'menu di pesce'),
(7, 'menu del cacciatore'),
(8, 'menu della casa'),
(9, 'menu del pescatore'),
(10, 'menu del boscaiolo');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompleto`
--

CREATE TABLE `MenuCompleto` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompleto`
--

INSERT INTO `MenuCompleto` (`id`, `name`) VALUES
(1, 'menu completo'),
(2, 'complete'),
(3, 'test1'),
(4, 'test2'),
(5, 'test5'),
(6, 'test7'),
(7, 'test8'),
(8, 'test9'),
(9, 'test10'),
(10, 'test13');

-- --------------------------------------------------------

--
-- Table structure for table `MenuCompletoRestaurant`
--

CREATE TABLE `MenuCompletoRestaurant` (
  `restaurant` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCompletoRestaurant`
--

INSERT INTO `MenuCompletoRestaurant` (`restaurant`, `menucompleto`) VALUES
(1, 1),
(5, 3),
(10, 3),
(3, 4),
(9, 4),
(6, 7),
(8, 7),
(7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `MenuRestaurant`
--

CREATE TABLE `MenuRestaurant` (
  `menu` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuRestaurant`
--

INSERT INTO `MenuRestaurant` (`menu`, `restaurant`) VALUES
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(5, 9),
(6, 1),
(6, 6),
(6, 7),
(6, 9),
(6, 10),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 3),
(8, 4),
(8, 7),
(8, 10),
(9, 9),
(10, 1),
(10, 3),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Orario`
--

CREATE TABLE `Orario` (
  `id` int(11) NOT NULL,
  `hour` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Orario`
--

INSERT INTO `Orario` (`id`, `hour`) VALUES
(5, '19:00'),
(6, '19:30'),
(7, '20:30'),
(8, '21:00'),
(9, '20:00');

-- --------------------------------------------------------

--
-- Table structure for table `Prenotazione`
--

CREATE TABLE `Prenotazione` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numberOfPeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Prenotazione`
--

INSERT INTO `Prenotazione` (`id`, `name`, `date`, `time`, `numberOfPeople`) VALUES
(7, 'res9287', '17/1/2017', '20:30', 2),
(8, 'res3376', '17/1/2017', '20:00', 2),
(9, 'res8601', '17/1/2017', '20:00', 2),
(10, 'res2028', '17/1/2017', '19:30', 2),
(11, 'res506', '18/1/2017', '19:30', 2),
(12, 'res2765', '18/1/2017', '19:30', 1),
(13, 'res2797', '18/1/2017', '19:30', 1),
(14, 'res6127', '18/1/2017', '19:30', 1),
(15, 'res2758', '18/1/2017', '19:30', 1),
(16, 'res5563', '18/1/2017', '20:30', 2),
(17, 'res5821', '18/1/2017', '19:00', 2),
(18, 'res2868', '18/1/2017', '19:00', 2),
(19, 'res8557', '18/1/2017', '19:00', 2),
(20, 'res8482', '18/1/2017', '19:00', 2),
(21, 'res843', '18/1/2017', '19:00', 2),
(22, 'res3814', '18/1/2017', '19:30', 2),
(23, 'res2512', '18/1/2017', '19:00', 2),
(24, 'res4523', '18/1/2017', '19:00', 2),
(25, 'res3593', '18/1/2017', '19:00', 2),
(26, 'res2172', '18/1/2017', '19:00', 2),
(27, 'res195', '18/1/2017', '19:00', 1),
(28, 'res472', '18/1/2017', '19:00', 1),
(29, 'res8707', '19/1/2017', '19:00', 1),
(30, 'res7696', '18/2/2017', '19:00', 1),
(31, 'res3801', '19/1/2017', 'undefined', 2),
(32, 'res1955', '19/1/2017', 'undefined', 1),
(33, 'res6745', '19/1/2017', '19:00', 1),
(34, 'res9359', '20/1/2017', 'undefined', 2),
(35, 'res2163', '20/1/2017', 'undefined', 2),
(36, 'res9921', '20/1/2017', '19:00', 2),
(37, 'res1721', '21/1/2017', '19:00', 1),
(38, 'giuliano', '22/1/2017', '19:30', 2),
(39, 'res9010', '22/1/2017', '21:00', 4),
(40, 'res4044', '28/1/2017', '21:00', 2),
(41, 'res9327', '22/1/2017', '19:30', 4),
(42, 'res990', '22/1/2017', '19:00', 2),
(43, 'res4929', '22/1/2017', '19:30', 1),
(44, 'res7162', '26/1/2017', '19:00', 2),
(45, 'giulialte', '26/1/2017', '21:00', 2),
(46, 'giulialte', '25/1/2017', '19:00', 2),
(47, 'res4215', '22/1/2017', '19:30', 8),
(48, 'res8286', '22/1/2017', '19:00', 2),
(49, 'res1184', '23/1/2017', '19:30', 4),
(50, 'res4133', '23/1/2017', '19:00', 2),
(51, 'res4320', '22/1/2017', '20:30', 2),
(52, 'res8012', '22/1/2017', '19:30', 2),
(53, 'res3396', '22/1/2017', '19:30', 2),
(54, 'res9829', '22/1/2017', '20:30', 2),
(55, 'res2073', '22/1/2017', '21:00', 2),
(56, 'res1315', '22/1/2017', '20:30', 2),
(57, 'res2402', '22/1/2017', '19:00', 2),
(58, 'res4842', '16/1/2017', '19:00', 4),
(59, 'res4453', '22/1/2017', '19:30', 1),
(60, 'res8972', '27/1/2017', '19:00', 2),
(61, 'res435', '27/1/2017', '19:00', 2),
(62, 'res4231', '24/1/2017', '19:30', 3),
(63, 'res7704', '24/1/2017', '19:30', 3),
(64, 'res1359', '22/1/2017', '20:00', 2),
(65, 'res2394', '22/1/2017', '19:30', 2),
(66, 'res8366', '22/1/2017', '20:30', 1),
(67, 'res6770', '28/1/2017', '19:30', 4),
(68, 'res8508', '28/1/2017', '21:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Primo`
--

CREATE TABLE `Primo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Primo`
--

INSERT INTO `Primo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(3, 'pappardelle al cinghiale', 'piatto di pappardelle con sugo di cinghiale', 'http://www.ilcaffe.tv/img_articoli/big/2015/05/496.jpg', 9.5),
(4, 'risotto di mare', 'risotto con frutti di mare freschi', 'http://statics.cucchiaio.it/content/cucchiaio/it/ricette/2012/05/ricetta-risotto-frutti-mare/jcr:content/header-par/image_single.img10.jpg/1463562169958.jpg', 7.5),
(5, 'Agnolotti', 'Gli agnolotti sono il tipico primo piatto della cucina Piemontese e rappresentano una ricetta conosciuta ed apprezzata non solo inItalia, ma anche all’estero per la sua bontà e semplicità.', 'http://www.giallozafferano.it/images/ricette/0/62/foto_hd/hd650x433_wm.jpg', 6),
(6, 'Arancini di spaghetti', 'Gli arancini di spaghetti sono una gustosa alternativa ai classici arancini di riso, tipici della gastronomia siciliana. Come dice il nome stesso, a differenza della ricetta tradizionale, in questa versione vengono utilizzati spaghetti, arricchiti con burro, formaggio e uova, con i quali si forma una “palla” che viene poi fritta.', 'http://www.giallozafferano.it/images/ricette/23/2343/foto_hd/hd650x433_wm.jpg', 5.5),
(7, 'Bavette al pesto', 'Avete voglia di un piatto fresco e profumato perfetto per il vostro menù? Allora le bavette al pesto sono proprio la ricetta che state cercando! Il pesto, caposaldo della cucina ligure, è una salsa molto versatile e sempre molto apprezzata sulla tavola', 'http://www.giallozafferano.it/images/ricette/157/15710/foto_hd/hd650x433_wm.jpg', 6.5),
(8, 'Bigoli in salsa', 'I bigoli in salsa sono un primo piatto tipico del Veneto che, secondo tradizione, venivano consumati durante i giorni di magro, come la vigilia di Natale, il venerdì Santo e il mercoledì delle Ceneri.\\r\\nI bigoli in salsa sono realizzati con un condimento semplice, ma molto gustoso, formato da cipolle affettate finissime e acciughe (o sarde) disciolte lentamente in olio di oliva', 'http://www.giallozafferano.it/images/ricette/7/779/foto_hd/hd650x433_wm.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenu`
--

CREATE TABLE `PrimoMenu` (
  `primo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenu`
--

INSERT INTO `PrimoMenu` (`primo`, `menu`) VALUES
(3, 5),
(4, 6),
(4, 8),
(4, 9),
(5, 10),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PrimoMenuCompleto`
--

CREATE TABLE `PrimoMenuCompleto` (
  `primo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PrimoMenuCompleto`
--

INSERT INTO `PrimoMenuCompleto` (`primo`, `menucompleto`) VALUES
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 10),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avg_vote` double NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `name`, `thumbnail`, `avg_vote`, `latitude`, `longitude`, `address`) VALUES
(1, 'Ponterosso', 'https://www.scandichotels.com/imagevault/publishedmedia/qn6infvg30381stkubky/scandic-sundsvall-city-restaurant-verket-10.jpg', 4, 43.6237, 11.4641, 'Via Costa Andrea, 18, 50066 Reggello FI'),
(2, 'Il passeggero', 'http://parkresto.com/wp-content/themes/parkrestaurant/images/11onlinereservationpark.jpg', 2, 43.6968, 11.529, 'Via del Ponterosso, 9, 50063 Figline Valdarno FI'),
(3, 'Antica Trattoria il Burchio', 'https://media-cdn.tripadvisor.com/media/photo-s/0a/df/d9/a0/il-burchio.jpg', 4, 43.6789, 11.4433, 'S. Donato I-50064 Burchio'),
(4, 'Yamasaky Wok Sushi', 'https://lh6.googleusercontent.com/-1sjUzK4auoc/V8sQpv8XNzI/AAAAAAAAA3Q/GCTK916mt9EyKl9jX-7oMNXG_PQVhHOBwCJkC/s408-k-no/', 4, 43.6299, 11.4631, 'Via della Comunità Europea, 13, 50063 Figline Valdarno FI'),
(5, 'Osteria Pizzeria Portici', 'https://lh6.googleusercontent.com/-08jm4kX5uxs/V9xCSPENGLI/AAAAAAAAF5k/CxsGp-ot63ElWUn6Wb1e9ak70vMxgeu_ACJkC/s408-k-no/', 4, 43.6183, 11.4738, 'Via Fabbrini, 40, 50063 Figline Valdarno FI'),
(6, 'Ristorante Pizzeria Mari E Monti ', 'https://lh5.googleusercontent.com/-HA0nHcCkAzk/VNa0yctAnBI/AAAAAAAAAAU/YmKx0VLKs4EcVdoh7N0YZQe6HN2so9NZgCJkC/s408-k-no/', 2.5, 43.6238, 11.4639, 'Via di Maestro da Figline, 2, 50063 Figline Valdarno FI'),
(7, 'Ristorante Firenze Nova', 'https://lh5.googleusercontent.com/-dRwJ5VzNZs8/WCDyZzVbzjI/AAAAAAAAAF4/KBrgl7bc5SIHS4O29YC_4nnjDuHsuV5mgCLIB/s408-k-no/', 5, 43.8258, 11.1421, 'Via Palagetta, 47/2/3, 50013 Campi Bisenzio FI'),
(8, 'La Bottega Del Buon Caffè', 'https://lh4.googleusercontent.com/-_I_BH_lqUbM/VPSB2bPcvrI/AAAAAAAAARE/2FqltFqNAlM8KpkORksKuI89QwZl0ihRACJkC/s408-k-no/', 5, 43.7976, 11.2657, 'Lungarno Benvenuto Cellini, 69r, 50125 Firenze'),
(9, 'Trattoria La Querce', 'https://lh5.googleusercontent.com/proxy/ziDujWN_n5gXwJ4YxT492r5Hm-XbBsOqINV8XXfmkuVWZXlZqg87-ajfLqHy6RPuTi58j94DNfZdQJLkqJXcASR45qM-6Y9r28PztX8Q9PbTROAQpD0JrceaXOPPMWvK6elFXso0L66RnAEryCWQpySpV6F7tw=w408-h280', 5, 43.4932, 11.6256, 'Via Aretina, 12, 52021 Localita\' La Querce, Bucine AR'),
(10, 'Al Solito Posto', 'https://lh6.googleusercontent.com/-_yeNam2uJ9o/UO65QCNzm3I/AAAAAAAAAHs/0CO63yxufHocYvYW_mfLgcoYBdhL0ovuACJkC/s408-k-no/', 4, 43.5513, 11.5813, 'Via Dante, 27, 52028 Terranuova Bracciolini AR');

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantOrario`
--

CREATE TABLE `RestaurantOrario` (
  `restaurant` int(11) NOT NULL,
  `orario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RestaurantOrario`
--

INSERT INTO `RestaurantOrario` (`restaurant`, `orario`) VALUES
(1, 5),
(1, 6),
(2, 5),
(3, 7),
(3, 9),
(4, 5),
(4, 7),
(5, 6),
(5, 7),
(5, 9),
(6, 5),
(6, 6),
(6, 8),
(7, 8),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(8, 9),
(9, 6),
(9, 7),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Secondo`
--

CREATE TABLE `Secondo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Secondo`
--

INSERT INTO `Secondo` (`id`, `name`, `description`, `thumbnail`, `price`) VALUES
(1, 'hamburgher di chianina', 'hamburgher di carne chianina', 'http://www.ilgiornaledelcibo.it/wp-content/uploads/2015/07/hamburger-di-chianina1.jpg', 6.5),
(2, 'petto di pollo ', 'petto di pollo rosolato in padella', 'http://www.ricetta.it/Uploads/Imgs/10-ricette-per-cucinare-petti-di-pollo-big.jpg', 7),
(3, 'sogliola fritta', 'piatto con sogliola impanata e fritta', 'http://it.geniuscook.com/wp-content/uploads/2014/01/sogliola-fritta.jpg', 6),
(4, 'Ali di pollo fritte', 'Le ali di pollo fritte sono un secondo piatto sfizioso e molto appetitoso! Ottime da spiluccare come finger food o per una cena informale tra amici, sono irresistibili con la loro panatura croccante.', 'http://www.giallozafferano.it/images/ricette/10/1008/foto_hd/hd650x433_wm.jpg', 3.5),
(5, 'Alici alla pizzaiola', 'Un secondo piatto estivo, fatto di ingredienti semplici: teneri filetti di alici ammorbiditi da un gustoso sughetto rilasciato dai pomodori, sapori che diventano tutt’uno assicurandovi così una vera prelibatezza', 'http://www.giallozafferano.it/images/ricette/10/1006/foto_hd/hd650x433_wm.jpg', 5.3),
(6, 'Anguilla in crosta di mandorle', 'L\'anguilla in crosta di mandorle è un piatto di pesce raffinato ed elaborato: i filetti di anguilla vengono insaporiti con del miele di Acacia e cosparsi di mandorle tostate che gli conferiscono una piacevole croccantezza.', 'http://www.giallozafferano.it/images/ricette/14/1433/foto_hd/hd650x433_wm.jpg', 7),
(7, 'Anatra all\'arancia\\r\\n', 'Nell\'immaginario comune, l\'anatra all\'arancia, è una tipica ricetta francese ma, veramente pochi sanno che in realtà questo piatto così particolare affonda le sue origini nella cucina Toscana di Firenze. Questo succulento piatto, che i toscani chiamavano \"paparo alla melarancia\", fu esportato in Francia da Caterina de Medici che, andata in sposa a Enrico II di Francia, decise di portarsi dietro un pezzettino della sua Firenze.', 'http://www.giallozafferano.it/images/ricette/0/30/foto_hd/hd650x433_wm.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenu`
--

CREATE TABLE `SecondoMenu` (
  `secondo` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenu`
--

INSERT INTO `SecondoMenu` (`secondo`, `menu`) VALUES
(1, 5),
(2, 10),
(3, 6),
(3, 9),
(4, 8),
(5, 10),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SecondoMenuCompleto`
--

CREATE TABLE `SecondoMenuCompleto` (
  `secondo` int(11) NOT NULL,
  `menucompleto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SecondoMenuCompleto`
--

INSERT INTO `SecondoMenuCompleto` (`secondo`, `menucompleto`) VALUES
(1, 10),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 2),
(4, 7),
(4, 10),
(5, 4),
(5, 8),
(6, 6),
(6, 8),
(6, 10),
(7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Antipasto`
--
ALTER TABLE `Antipasto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD PRIMARY KEY (`antipasto`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD PRIMARY KEY (`antipasto`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Dolce`
--
ALTER TABLE `Dolce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD PRIMARY KEY (`dolce`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD PRIMARY KEY (`dolce`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD PRIMARY KEY (`restaurant`),
  ADD KEY `restaurant` (`restaurant`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD PRIMARY KEY (`menu`,`restaurant`),
  ADD KEY `restaurant` (`restaurant`);

--
-- Indexes for table `Orario`
--
ALTER TABLE `Orario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Primo`
--
ALTER TABLE `Primo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD PRIMARY KEY (`primo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD PRIMARY KEY (`primo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD PRIMARY KEY (`restaurant`,`orario`),
  ADD KEY `orario` (`orario`);

--
-- Indexes for table `Secondo`
--
ALTER TABLE `Secondo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD PRIMARY KEY (`secondo`,`menu`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD PRIMARY KEY (`secondo`,`menucompleto`),
  ADD KEY `menucompleto` (`menucompleto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Antipasto`
--
ALTER TABLE `Antipasto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Dolce`
--
ALTER TABLE `Dolce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Menu`
--
ALTER TABLE `Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `MenuCompleto`
--
ALTER TABLE `MenuCompleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Orario`
--
ALTER TABLE `Orario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Prenotazione`
--
ALTER TABLE `Prenotazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Primo`
--
ALTER TABLE `Primo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Secondo`
--
ALTER TABLE `Secondo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AntipastoMenu`
--
ALTER TABLE `AntipastoMenu`
  ADD CONSTRAINT `AntipastoMenu_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `AntipastoMenuCompleto`
--
ALTER TABLE `AntipastoMenuCompleto`
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_1` FOREIGN KEY (`antipasto`) REFERENCES `Antipasto` (`id`),
  ADD CONSTRAINT `AntipastoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `DolceMenu`
--
ALTER TABLE `DolceMenu`
  ADD CONSTRAINT `DolceMenu_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `DolceMenuCompleto`
--
ALTER TABLE `DolceMenuCompleto`
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_1` FOREIGN KEY (`dolce`) REFERENCES `Dolce` (`id`),
  ADD CONSTRAINT `DolceMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuCompletoRestaurant`
--
ALTER TABLE `MenuCompletoRestaurant`
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `MenuCompletoRestaurant_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `MenuRestaurant`
--
ALTER TABLE `MenuRestaurant`
  ADD CONSTRAINT `MenuRestaurant_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`),
  ADD CONSTRAINT `MenuRestaurant_ibfk_2` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `PrimoMenu`
--
ALTER TABLE `PrimoMenu`
  ADD CONSTRAINT `PrimoMenu_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `PrimoMenuCompleto`
--
ALTER TABLE `PrimoMenuCompleto`
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_1` FOREIGN KEY (`primo`) REFERENCES `Primo` (`id`),
  ADD CONSTRAINT `PrimoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

--
-- Constraints for table `RestaurantOrario`
--
ALTER TABLE `RestaurantOrario`
  ADD CONSTRAINT `RestaurantOrario_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `Restaurant` (`id`),
  ADD CONSTRAINT `RestaurantOrario_ibfk_2` FOREIGN KEY (`orario`) REFERENCES `Orario` (`id`);

--
-- Constraints for table `SecondoMenu`
--
ALTER TABLE `SecondoMenu`
  ADD CONSTRAINT `SecondoMenu_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenu_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `Menu` (`id`);

--
-- Constraints for table `SecondoMenuCompleto`
--
ALTER TABLE `SecondoMenuCompleto`
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_1` FOREIGN KEY (`secondo`) REFERENCES `Secondo` (`id`),
  ADD CONSTRAINT `SecondoMenuCompleto_ibfk_2` FOREIGN KEY (`menucompleto`) REFERENCES `MenuCompleto` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
