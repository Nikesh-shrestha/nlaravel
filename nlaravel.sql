-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2015 at 09:21 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(10) unsigned NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `tags`, `body`, `created_at`, `updated_at`) VALUES
(1, 'first title for the first article', 'nikesh shrestha', 'tag1,tag2,tag3', 'body body body', '2015-06-07 02:27:37', '0000-00-00 00:00:00'),
(2, 'second title for the second article', 'rikesh shrestha', 'tag4,tag2,tag3', 'body body body', '2015-06-07 02:27:37', '0000-00-00 00:00:00'),
(3, 'third title for the third article', 'reenu shrestha', 'tag5,tag6,tag3', 'body body body', '2015-06-07 02:27:37', '0000-00-00 00:00:00'),
(6, 'reema shrestha', 'title 4', 'tag4,tag2,tag8', 'asfrafasfaf', '0000-00-00 00:00:00', '2015-06-07 02:44:37'),
(16, 'asdasd', 'ASDASDasd', 'ASDASDa', 'asdasdasd', '0000-00-00 00:00:00', '2015-06-09 00:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
`id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `student_id`, `course_name`, `created_at`, `updated_at`) VALUES
(62, 8, 'physics', '2015-07-19 12:57:13', '2015-07-13 07:12:18'),
(63, 1, 'math', '2015-07-18 23:15:11', '2015-07-13 07:12:18'),
(64, 4, 'A.I', '2015-07-15 06:39:03', '2015-07-13 07:12:18'),
(65, 9, 'A.I', '2015-07-14 11:06:56', '2015-07-13 07:12:18'),
(66, 6, 'data structure', '2015-07-25 16:48:15', '2015-07-13 07:12:18'),
(67, 6, 'math', '2015-07-23 18:40:21', '2015-07-13 07:12:18'),
(68, 2, 'physics', '2015-07-21 00:10:31', '2015-07-13 07:12:18'),
(69, 9, 'physics', '2015-07-25 15:18:03', '2015-07-13 07:12:18'),
(70, 9, 'math', '2015-07-20 14:48:35', '2015-07-13 07:12:18'),
(71, 3, 'data structure', '2015-07-15 09:10:01', '2015-07-13 07:12:18'),
(72, 6, 'data structure', '2015-07-26 23:45:51', '2015-07-13 07:12:18'),
(73, 3, 'english', '2015-07-17 14:19:41', '2015-07-13 07:12:18'),
(74, 3, 'data structure', '2015-07-19 19:39:47', '2015-07-13 07:12:18'),
(75, 5, 'A.I', '2015-07-20 22:47:19', '2015-07-13 07:12:19'),
(76, 3, 'A.I', '2015-07-13 14:26:11', '2015-07-13 07:12:19'),
(77, 5, 'physics', '2015-07-17 09:11:09', '2015-07-13 07:12:19'),
(78, 1, 'data structure', '2015-07-23 01:32:09', '2015-07-13 07:12:19'),
(79, 7, 'physics', '2015-07-23 00:40:20', '2015-07-13 07:12:19'),
(80, 2, 'math', '2015-07-14 21:41:56', '2015-07-13 07:12:19'),
(81, 6, 'data structure', '2015-07-26 14:03:41', '2015-07-13 07:12:19'),
(82, 10, 'data structure', '2015-07-23 04:34:42', '2015-07-13 07:12:19'),
(83, 7, 'data structure', '2015-07-22 14:44:38', '2015-07-13 07:12:19'),
(84, 4, 'physics', '2015-07-23 11:50:23', '2015-07-13 07:12:19'),
(85, 6, 'data structure', '2015-07-26 01:08:59', '2015-07-13 07:12:19'),
(86, 7, 'A.I', '2015-07-15 16:29:47', '2015-07-13 07:12:19'),
(87, 10, 'A.I', '2015-07-20 12:34:06', '2015-07-13 07:12:19'),
(88, 7, 'A.I', '2015-07-23 05:19:24', '2015-07-13 07:12:19'),
(89, 8, 'data structure', '2015-07-25 11:25:20', '2015-07-13 07:12:19'),
(90, 7, 'english', '2015-07-17 17:54:06', '2015-07-13 07:12:19'),
(91, 6, 'english', '2015-07-17 08:49:00', '2015-07-13 07:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `fake`
--

CREATE TABLE IF NOT EXISTS `fake` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fake`
--

INSERT INTO `fake` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(58, 'Sawayn.Lucie', '130 Angelita WalksPort Kyra, ID 31743', '234234234', 'Runolfsson.Elody@Gerlach.com', '2015-06-13 13:49:26', '2015-06-10 02:46:20'),
(59, 'vNikolaus', '6975 Terry Neck Suite 882\nJessicaton, MS 01131-3517', '09813464881', 'kCummings@hotmail.com', '2015-06-08 06:03:15', '2015-06-08 01:09:02'),
(60, 'Royal.Crona', '003 Malachi Flats\nPort Hanna, WI 43112-3929', '1-220-074-5292x6019', 'Emery93@Turner.com', '2015-06-11 19:44:32', '2015-06-08 01:09:02'),
(61, 'Roberts.Kristina', '8102 Fritsch Loaf\nKemmerview, NY 06317-8827', '1-776-853-0289x6390', 'Wiegand.Anika@Cormier.com', '2015-06-11 20:21:36', '2015-06-08 01:09:02'),
(62, 'Hermina93', '571 Leannon Pike\nNorth Laron, PA 12624', '1-899-822-6140x59779', 'Loraine81@hotmail.com', '2015-06-17 16:59:33', '2015-06-08 01:09:02'),
(63, 'Pfannerstill.Lia', '685 Hallie Well\nMargebury, WY 27957-0829', '(380)706-4401x62895', 'Mann.Darion@Fadel.net', '2015-06-15 08:10:42', '2015-06-08 01:09:02'),
(64, 'Reinhold57', '7545 Breanne Rest\nNorth Chetberg, DC 98672', '188.462.7162', 'zWhite@Nolan.com', '2015-06-16 22:38:48', '2015-06-08 01:09:02'),
(65, 'Edgardo.Lebsack', '053 Pearl Row\nAurelieview, MN 57967-7328', '(603)976-0539', 'Arnaldo.Fadel@Konopelski.net', '2015-06-19 20:06:17', '2015-06-08 01:09:02'),
(66, 'Kayley34', '31700 Augusta Meadows\nRosenbaumchester, IN 60650-5807', '759.521.5457x784', 'McKenzie.Shania@Beahan.com', '2015-06-13 09:05:27', '2015-06-08 01:09:02'),
(67, 'Albertha.Becker', '268 Jamarcus Turnpike Apt. 701\nCorwinhaven, MT 70358-3623', '1-702-119-5627', 'Hartmann.Clemmie@hotmail.com', '2015-06-09 07:31:09', '2015-06-08 01:09:02'),
(68, 'Victoria76', '73485 Jacobi Plaza Apt. 598\nSouth Pansyfurt, FL 74810', '03029125200', 'uHamill@Bergstrom.biz', '2015-06-11 20:27:46', '2015-06-08 01:09:02'),
(69, 'Candido40', '4933 Orville Overpass Apt. 670\nNitzschemouth, MS 57113-2752', '059-496-0484x216', 'Joel.Will@Rohan.com', '2015-06-15 17:34:12', '2015-06-08 01:09:03'),
(70, 'Hilario77', '47672 Zelda Ways Apt. 942\nAudreanneport, OK 41399', '004.032.5145', 'Veronica.Marvin@Johns.com', '2015-06-15 03:21:06', '2015-06-08 01:09:03'),
(71, 'Bernier.Amelia', '393 Kris Squares\nWehnerburgh, NY 27848-7051', '(943)323-4060', 'Kaleigh37@gmail.com', '2015-06-11 09:39:55', '2015-06-08 01:09:03'),
(72, 'Rebeka90', '980 Nader Camp\nRunolfsdottirview, PA 04685', '074-656-8065x643', 'Sydni71@Gerlach.com', '2015-06-08 16:33:26', '2015-06-08 01:09:03'),
(73, 'Eula95', '52522 White Cliffs Suite 421\nEliezerstad, ID 38349', '601.349.8288x55798', 'Ayden09@yahoo.com', '2015-06-17 10:41:48', '2015-06-08 01:09:03'),
(74, 'uMedhurst', '87767 Bayer Curve\nLilianeberg, NE 44880', '09082477084', 'kFadel@hotmail.com', '2015-06-18 04:18:21', '2015-06-08 01:09:03'),
(75, 'Patsy.Kling', '9538 Bridgette Plains Apt. 440\nEast Leilani, NC 44717-5175', '(656)101-9258x095', 'Schumm.Jamil@Torphy.com', '2015-06-09 08:02:28', '2015-06-08 01:09:03'),
(76, 'Walker.Reanna', '731 Brad Spring Suite 416\nEast Catherinehaven, TN 90098', '+61(6)8625530438', 'Jennyfer.Leannon@Gutkowski.com', '2015-06-20 09:35:50', '2015-06-08 01:09:03'),
(77, 'Jeromy90', '8348 Claudie Brooks\nWest Stanleyport, AZ 10619-7293', '1-197-217-5380x164', 'Adan37@Gottlieb.net', '2015-06-19 21:09:17', '2015-06-08 01:09:03'),
(78, 'xLarson', '44761 Ledner Forest\nNew Twilaland, AZ 25780-0912', '1-037-006-9374', 'Dach.Kailey@Mayert.com', '2015-06-09 05:35:02', '2015-06-08 01:09:03'),
(79, 'Cristina.Cremin', '3164 Heaven Island Suite 795\nNorth Maximushaven, GA 10410-8249', '+81(1)7121048015', 'Murphy.Matilde@Kiehn.com', '2015-06-17 16:27:38', '2015-06-08 01:09:03'),
(80, 'OConner.Jacinthe', '319 Elvis Roads Suite 126\nWest Tatyanabury, MI 26233-4435', '(848)482-6826', 'Emmanuelle.Reynolds@hotmail.com', '2015-06-17 00:46:43', '2015-06-08 01:09:03'),
(81, 'Torp.Madalyn', '30216 Gillian Parks Apt. 840\nPort Madelynn, CA 72134', '(093)826-1826', 'Maida.Kuhn@yahoo.com', '2015-06-17 08:13:59', '2015-06-08 01:09:04'),
(82, 'Spinka.Elmo', '16907 Funk Forges Suite 175\nLake Gunnarview, DE 36385-8499', '796.123.2503', 'Madie.Batz@Rippin.com', '2015-06-09 15:15:19', '2015-06-08 01:09:04'),
(83, 'Dwight24', '1870 Chase Station\nKunzemouth, FL 23907', '050-189-7769', 'Jazmin08@Dach.com', '2015-06-20 09:15:54', '2015-06-08 01:09:04'),
(84, 'Adriel.Adams', '99706 Efren Tunnel\nLizzieshire, TX 87656-7956', '(156)543-2237', 'eWehner@yahoo.com', '2015-06-20 22:57:37', '2015-06-08 01:09:04'),
(85, 'Brown.Jovanny', '9406 Botsford Valley\nWest Holden, TX 92517', '1-615-836-1941x474', 'Medhurst.Mohamed@gmail.com', '2015-06-10 22:25:41', '2015-06-08 01:09:04'),
(86, 'Rutherford.Ross', '618 Gerlach Estates Apt. 750\nEffertzberg, UT 33967', '(071)065-0514', 'nLittel@hotmail.com', '2015-06-13 08:51:26', '2015-06-08 01:09:04'),
(87, 'Schoen.Aaron', '7989 Michaela Landing\nSporerbury, TX 98706-8579', '09587259751', 'Daugherty.Malvina@gmail.com', '2015-06-17 23:15:54', '2015-06-08 01:09:04'),
(88, 'Jess.Wisoky', '45744 Caterina Knoll\nPatienceton, RI 03095', '851-777-8156x75665', 'King.Morris@hotmail.com', '2015-06-16 10:29:19', '2015-06-08 01:09:04'),
(89, 'jBalistreri', '7031 Efren Orchard\nPort Rosieport, NY 70905', '1-563-330-0687', 'Heather51@Stracke.info', '2015-06-13 18:14:29', '2015-06-08 01:09:04'),
(90, 'yMcDermott', '56814 Will Road\nKihnton, HI 59290', '05281005281', 'Macy49@gmail.com', '2015-06-12 06:02:24', '2015-06-08 01:09:04'),
(91, 'Lindsay52', '220 Garett Estate Suite 907\nHanestad, RI 76417-6750', '(985)341-5194', 'Bogisich.Alta@hotmail.com', '2015-06-09 20:02:06', '2015-06-08 01:09:04'),
(92, 'tReinger', '227 Schuster Field\nLegrosmouth, DE 16654-3703', '870.727.3123x08808', 'Kennedy33@hotmail.com', '2015-06-12 16:07:37', '2015-06-08 01:09:04'),
(93, 'Euna55', '230 Harber Island\nPort Tristinport, IL 88444-1247', '441-527-8079x08036', 'Geoffrey97@gmail.com', '2015-06-09 14:45:46', '2015-06-08 01:09:04'),
(94, 'qFeeney', '76809 Jerry Stream\nNorth Joaquinfort, AR 57600', '1-923-611-5434', 'Mertz.Orval@Lueilwitz.com', '2015-06-10 09:33:02', '2015-06-08 01:09:04'),
(95, 'Williamson.Cassie', '58868 Angie Way Suite 727\nBernardohaven, OR 98071-4845', '(641)176-2538x662', 'Bartoletti.Emiliano@hotmail.com', '2015-06-11 11:10:14', '2015-06-08 01:09:04'),
(96, 'Jermaine.Schneider', '67955 Tanner Garden\nIrmaside, KY 56378', '107-631-1967', 'Catalina82@hotmail.com', '2015-06-13 13:15:16', '2015-06-08 01:09:04'),
(97, 'Vern.Mohr', '112 Bogan Streets\nSkilesborough, HI 69046', '059.730.4450x47485', 'Madaline47@yahoo.com', '2015-06-14 10:14:29', '2015-06-08 01:09:04'),
(98, 'Kertzmann.Alfreda', '58106 Anita Harbor\nTorphyside, TX 98771-9769', '779-040-4280x698', 'Conn.Javier@hotmail.com', '2015-06-10 13:00:25', '2015-06-08 01:09:04'),
(99, 'nBartoletti', '0562 Katelynn Alley\nNew Francoland, IL 61167', '1-429-150-5117x233', 'Blanca.Marvin@yahoo.com', '2015-06-19 17:42:40', '2015-06-08 01:09:04'),
(100, 'Turcotte.Britney', '25842 Johnson Spurs\nShanahantown, NE 46674-1029', '1-157-221-1115', 'Nelson39@Kris.info', '2015-06-09 17:24:35', '2015-06-08 01:09:04'),
(101, 'nikesh shrestha', 'imadol,lalitpur', '9813281825', 'shrestha.nikesh99@gmail.com', '2015-06-09 04:40:49', '2015-06-09 04:40:49'),
(102, 'nikesh shrestha', 'imadol,lalitpur', '9813281825', 'shrestha.nikesh99@gmail.com', '2015-06-09 04:41:01', '2015-06-09 04:41:01'),
(104, 'hasfasd', 'asdasdasd', '124234234234', 'asd@afa.com', '2015-06-10 00:19:34', '2015-06-10 00:19:34'),
(105, 'nikesh shrestha', '7461 Quitzon Crossroad Suite 497Kuvalisshire, TX 04076-2363', '82173468234', 'mKeeling@Grant.com', '2015-06-10 00:30:41', '2015-06-10 00:30:41'),
(106, 'nikesh shrestha', '7461 Quitzon Crossroad Suite 497Kuvalisshire, TX 04076-2363', '23434324345345', 'mKeeling@Grant.com', '2015-06-10 00:30:56', '2015-06-10 00:30:56'),
(107, 'nikesh shrestha', '7461 Quitzon Crossroad Suite 497Kuvalisshire, TX 04076-2363', '345345345', 'mKeeling@Grant.com', '2015-06-10 00:32:17', '2015-06-10 00:32:17'),
(108, 'nikesh shrestha', '7461 Quitzon Crossroad Suite 497Kuvalisshire, TX 04076-2363', '345345345', 'mKeeling@Grant.com', '2015-06-10 00:34:22', '2015-06-10 00:34:22'),
(109, 'Barrows.Christelle', '7461 Quitzon Crossroad Suite 497Kuvalisshire, TX 04076-2363', '24234234234', 'mKeeling@Grant.com', '2015-06-10 00:59:56', '2015-06-10 00:59:56'),
(110, 'Barrows.Christelle', '7461 Quitzon Crossroad Suite 497Kuvalisshire, TX 04076-2363', '24234234234', 'mKeeling@Grant.com', '2015-06-10 01:00:14', '2015-06-10 01:00:14'),
(111, 'Clarabelle68', '16433 Murray Rapids Apt. 287\nSamantafurt, NM 70004-2732', '086-893-9028', 'Ankunding.Vivianne@hotmail.com', '2015-07-26 19:33:58', '2015-07-12 23:37:58'),
(112, 'vZboncak', '43832 Schulist Shoal\nKshlerinland, IL 74655-8825', '791.514.7557x3208', 'uWaters@King.org', '2015-07-21 12:50:39', '2015-07-12 23:37:58'),
(113, 'Coty.Marquardt', '5163 Bashirian Bypass Apt. 146\nNew Linnea, KS 13286', '288.526.9146', 'Cali20@yahoo.com', '2015-07-24 20:58:00', '2015-07-12 23:37:58'),
(114, 'Vada43', '55251 Wehner Summit\nHarrisontown, AK 94722', '748.606.9849x1338', 'Altenwerth.Domenic@Von.biz', '2015-07-18 12:45:24', '2015-07-12 23:37:58'),
(115, 'Leonie.Gibson', '20482 Deborah Squares Apt. 190\nTaniaview, MI 53774-2071', '(761)141-7389', 'Jacobson.Jeffrey@Collier.com', '2015-07-18 03:01:48', '2015-07-12 23:37:58'),
(116, 'Mayer.Kaycee', '518 Yundt Track Suite 061\nLindhaven, NJ 68172', '(592)885-2414', 'eWehner@gmail.com', '2015-07-23 21:22:21', '2015-07-12 23:37:58'),
(117, 'Bennie19', '5241 Johnston Greens Suite 682\nGinamouth, MN 88662-5386', '126.792.8961', 'Kale.Altenwerth@hotmail.com', '2015-07-23 06:56:23', '2015-07-12 23:37:58'),
(118, 'Robb.Armstrong', '586 Frances Centers\nNorth Melyssaburgh, RI 06022', '+58(2)5891214006', 'pCruickshank@yahoo.com', '2015-07-21 06:58:17', '2015-07-12 23:37:58'),
(119, 'Lynch.Vergie', '0132 Conroy Hills Apt. 129\nRobertshire, AL 31800-1951', '203.529.5784x65737', 'Norbert07@Brakus.net', '2015-07-19 04:58:59', '2015-07-12 23:37:58'),
(120, 'Forrest11', '467 Kulas Turnpike\nOndrickaport, DC 85045-4958', '(575)206-5303', 'Delpha29@Lebsack.net', '2015-07-21 07:06:17', '2015-07-12 23:37:58'),
(121, 'Hyman.Brakus', '681 Bruen Locks Suite 098\nSchmidtfurt, MA 52989-6433', '+72(2)7185788043', 'Lavonne21@Brown.net', '2015-07-13 13:21:27', '2015-07-12 23:37:58'),
(122, 'Fernando.Abernathy', '45300 Rohan Road\nWest Adah, NE 43223', '02115488243', 'zGaylord@Cremin.com', '2015-07-25 02:38:11', '2015-07-12 23:37:58'),
(123, 'Aufderhar.Cade', '309 Deja Meadow Apt. 209\nEast Laronberg, AR 09089-2278', '02315880282', 'dWisoky@Dickinson.com', '2015-07-17 19:03:37', '2015-07-12 23:37:58'),
(124, 'zKreiger', '2281 Bogan Vista Apt. 573\nMattmouth, RI 70608-2296', '(958)000-8218x7967', 'Adolphus30@hotmail.com', '2015-07-13 18:27:56', '2015-07-12 23:37:58'),
(125, 'Elijah.Grimes', '852 O''Conner Vista Apt. 937\nKonopelskiburgh, IA 05637-4374', '491-650-6949', 'Tania88@gmail.com', '2015-07-13 05:51:44', '2015-07-12 23:37:59'),
(126, 'Antonina74', '51246 Keith Loop Apt. 571\nBeierville, GA 80746', '1-859-933-9572x561', 'Elmira.Feil@Schimmel.com', '2015-07-13 19:33:10', '2015-07-12 23:37:59'),
(127, 'Bianka76', '592 Emmitt Canyon Apt. 176\nWest Vern, NE 94771-2186', '(026)786-2733x571', 'Modesto61@Schroeder.net', '2015-07-18 19:26:07', '2015-07-12 23:37:59'),
(128, 'Heathcote.Verna', '9257 Cicero Island\nNorth Jarrod, ID 23765-4901', '(080)034-1816', 'Mallie41@gmail.com', '2015-07-26 00:32:23', '2015-07-12 23:37:59'),
(129, 'Jaeden10', '563 Jennie Ramp Suite 383\nHerbertmouth, IA 69159', '347.767.8654', 'Lyla.Borer@gmail.com', '2015-07-21 11:43:05', '2015-07-12 23:37:59'),
(130, 'Noemy28', '1979 Clementine Lodge Suite 568\nWest Ceasar, SD 43322-7968', '(914)327-4989x441', 'Myrtie.Rogahn@Reichel.com', '2015-07-19 09:47:39', '2015-07-12 23:37:59'),
(131, 'Kuhlman.Verona', '82413 Hodkiewicz Forge Apt. 399\nNorth Quinten, TN 59589-9762', '736.066.9121x05878', 'Greenholt.Aaliyah@Anderson.com', '2015-07-17 15:19:45', '2015-07-12 23:37:59'),
(132, 'cBlick', '076 Rutherford Greens\nMannberg, FL 00652', '(151)011-8181', 'wZulauf@yahoo.com', '2015-07-16 18:59:23', '2015-07-12 23:37:59'),
(133, 'oFahey', '67142 Bergstrom Plains\nLake Adrianstad, KY 66026-0695', '1-498-219-0541x56138', 'Norene67@yahoo.com', '2015-07-14 14:03:24', '2015-07-12 23:37:59'),
(134, 'Nella.Howe', '51156 Orn Throughway Suite 636\nMyrlshire, NC 33679', '(307)545-1044x470', 'pBailey@McLaughlin.com', '2015-07-15 17:10:10', '2015-07-12 23:37:59'),
(135, 'Ayla39', '902 Reece Fords\nAutumnport, MD 54645', '1-983-290-8777', 'Oleta56@gmail.com', '2015-07-15 07:44:19', '2015-07-12 23:37:59'),
(136, 'Brandyn.Schinner', '43859 Parker Villages Apt. 787\nDickinsonside, SC 92538-8437', '(842)495-3793x94759', 'jRitchie@Boyle.com', '2015-07-21 09:43:24', '2015-07-12 23:37:59'),
(137, 'lJones', '833 Mraz Square\nParkerton, DE 90700-8977', '916.029.6550x9765', 'dHuels@hotmail.com', '2015-07-18 14:33:30', '2015-07-12 23:37:59'),
(138, 'Ryan.Cleta', '9249 Nico Mountain Suite 911\nAkeemburgh, AL 52470-7247', '565-424-2582', 'Dorian76@McDermott.com', '2015-07-22 05:51:09', '2015-07-12 23:37:59'),
(139, 'Carlie.Eichmann', '7903 Yolanda Mills Suite 575\nAnnaliseshire, TN 98773-3300', '(543)624-8765', 'Pablo83@gmail.com', '2015-07-19 04:17:43', '2015-07-12 23:37:59'),
(140, 'Walter.Justina', '3131 Cornelius Parks Apt. 181\nLake Jerad, SC 45070-9039', '676.244.0635x8955', 'Claudine.Feest@gmail.com', '2015-07-22 13:05:09', '2015-07-12 23:37:59'),
(141, 'nSchultz', '97798 Kunze Freeway\nMooretown, OR 99351-7101', '+03(5)6196641171', 'Jeremie.Gibson@Kozey.com', '2015-07-25 15:11:08', '2015-07-12 23:37:59'),
(142, 'tMohr', '2531 Leann Points Apt. 900\nHalvorsonshire, NH 92549', '05853657503', 'kMohr@yahoo.com', '2015-07-16 11:19:15', '2015-07-12 23:37:59'),
(143, 'zTrantow', '8731 Albertha Glens Suite 498\nEmilyport, GA 97421-7089', '1-917-703-6895', 'Lulu.Kling@hotmail.com', '2015-07-21 19:33:28', '2015-07-12 23:37:59'),
(144, 'nRau', '795 Werner Walk\nDewittburgh, NH 83441-1657', '09842835565', 'Hilll.Tommie@gmail.com', '2015-07-17 20:43:05', '2015-07-12 23:37:59'),
(145, 'Ramona.Halvorson', '694 Gaylord Tunnel\nWest Donavon, CA 42007', '1-383-564-3479x41096', 'Boehm.Jennyfer@yahoo.com', '2015-07-13 02:16:21', '2015-07-12 23:38:00'),
(146, 'Ramon.Leffler', '14633 Leuschke Squares Suite 934\nRicardohaven, WA 28238', '(618)921-3072x5583', 'gCarter@Dietrich.com', '2015-07-16 19:59:47', '2015-07-12 23:38:00'),
(147, 'Dashawn.Daugherty', '5513 Jerry Pass Suite 563\nPort Terry, LA 28056-5003', '(925)453-6482x33865', 'Jaren.Marvin@gmail.com', '2015-07-19 02:54:19', '2015-07-12 23:38:00'),
(148, 'Porter44', '08941 Saul Trace\nBahringerborough, NJ 07453', '(100)778-3717', 'Penelope.Senger@Pfannerstill.com', '2015-07-24 14:53:50', '2015-07-12 23:38:00'),
(149, 'Bailey.Camren', '89941 Laisha Rue\nLake Fredrick, NM 63841', '033-748-6785x25336', 'Thelma56@gmail.com', '2015-07-22 14:54:40', '2015-07-12 23:38:00'),
(150, 'rKertzmann', '542 Karen Spring Apt. 561\nNew Mossiefort, RI 96737-4787', '(482)684-5822x12458', 'Makenzie.Kunde@yahoo.com', '2015-07-21 16:31:31', '2015-07-12 23:38:00'),
(151, 'Yolanda.OKeefe', '468 Paula Key\nUptonchester, AR 27172', '1-630-669-7165x006', 'Upton.Geovanny@Mueller.net', '2015-07-24 18:55:41', '2015-07-12 23:38:00'),
(152, 'Collin52', '204 Ratke Ways Apt. 724\nKalliebury, OH 53086', '118-656-2137x8238', 'Hazle.Hayes@Gerhold.biz', '2015-07-14 23:23:16', '2015-07-12 23:38:00'),
(153, 'Tabitha61', '12196 Yundt Divide Suite 476\nLake Kacey, NE 37258', '+76(2)9662729870', 'OHara.Alvena@gmail.com', '2015-07-25 12:29:57', '2015-07-12 23:38:00'),
(154, 'tEmard', '58614 Beier Rest\nSteuberfurt, MI 83685', '479.854.1164x17043', 'cKassulke@Lemke.com', '2015-07-21 01:25:21', '2015-07-12 23:38:00'),
(155, 'bVandervort', '844 Alvera Union\nDaughertyhaven, MS 45115-0053', '1-481-691-1772x60867', 'yDoyle@hotmail.com', '2015-07-23 18:23:41', '2015-07-12 23:38:00'),
(156, 'xDeckow', '62052 Simonis Stream Suite 531\nLake Antonetta, NY 23217-1261', '914.200.9279x75668', 'Cruickshank.Breanne@yahoo.com', '2015-07-14 21:56:32', '2015-07-12 23:38:00'),
(157, 'Favian23', '58503 Schinner Stream\nElvieton, WY 66925', '1-031-267-3986', 'sNienow@OConnell.com', '2015-07-19 01:28:49', '2015-07-12 23:38:00'),
(158, 'Metz.Hailie', '1974 Claire Loaf\nClemensstad, DC 08374-7283', '06008343661', 'Michel.Harris@hotmail.com', '2015-07-13 03:30:53', '2015-07-12 23:38:00'),
(159, 'Adela89', '7349 Lubowitz Plains Apt. 668\nNew Barney, AR 54548', '1-969-910-8981x2179', 'Leopold.Vandervort@Rau.biz', '2015-07-17 09:15:05', '2015-07-12 23:38:00'),
(160, 'Rosemary93', '114 Mason Circles Apt. 921\nWindlerfurt, IA 85901-1983', '571.484.0218x21217', 'Adriana53@Klein.net', '2015-07-14 04:10:44', '2015-07-12 23:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `fakes`
--

CREATE TABLE IF NOT EXISTS `fakes` (
`id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE IF NOT EXISTS `guardians` (
`id` int(10) unsigned NOT NULL,
  `guardian_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `guardian_name`, `created_at`, `updated_at`, `student_id`) VALUES
(31, 'Dr. Kathryn Predovic', '2015-07-13 04:30:38', '2015-07-13 00:16:36', 9),
(32, 'Brody Daugherty', '2015-07-13 06:37:45', '2015-07-13 00:16:36', 3),
(33, 'Shawn Kuhlman I', '2015-07-15 08:52:07', '2015-07-13 00:16:36', 7),
(34, 'Casimir Funk', '2015-07-15 14:10:02', '2015-07-13 00:16:36', 2),
(35, 'Kory Ritchie', '2015-07-26 11:17:10', '2015-07-13 00:16:36', 1),
(36, 'Rod Heller', '2015-07-23 03:15:01', '2015-07-13 00:16:36', 6),
(37, 'Dean Kozey Sr.', '2015-07-25 22:12:56', '2015-07-13 00:16:36', 7),
(38, 'Dr. Salvatore Mills Jr.', '2015-07-16 10:07:59', '2015-07-13 00:16:36', 10),
(39, 'Mrs. Eleonore Oberbrunner', '2015-07-22 05:59:57', '2015-07-13 00:16:37', 5),
(40, 'Ms. Jena Beier', '2015-07-24 07:50:14', '2015-07-13 00:16:37', 7),
(41, 'Miss Bettie Borer Jr.', '2015-07-13 13:36:21', '2015-07-13 00:16:37', 1),
(42, 'Ms. Marguerite Wisozk', '2015-07-20 10:12:46', '2015-07-13 00:16:37', 5),
(43, 'Dr. Alice Mosciski', '2015-07-15 03:06:36', '2015-07-13 00:16:37', 6),
(44, 'Ebony Harris', '2015-07-15 10:09:03', '2015-07-13 00:16:37', 1),
(45, 'Ms. Lauriane Carroll Sr.', '2015-07-21 21:04:46', '2015-07-13 00:16:37', 8),
(46, 'Dr. Giovanny Renner', '2015-07-22 08:55:27', '2015-07-13 00:16:37', 7),
(47, 'Janiya Klein', '2015-07-22 19:05:09', '2015-07-13 00:16:37', 10),
(48, 'Antonio Kulas', '2015-07-14 07:10:36', '2015-07-13 00:16:37', 9),
(49, 'Roscoe Gleichner', '2015-07-15 20:28:32', '2015-07-13 00:16:37', 5),
(50, 'Ms. Veda Kohler IV', '2015-07-15 07:38:10', '2015-07-13 00:16:37', 7),
(51, 'Prof. Easter Funk', '2015-07-16 22:25:37', '2015-07-13 00:16:37', 7),
(52, 'Hannah Herman III', '2015-07-14 02:48:04', '2015-07-13 00:16:37', 8),
(53, 'Violet Weber', '2015-07-14 11:07:24', '2015-07-13 00:16:37', 5),
(54, 'Mrs. Kariane Roob', '2015-07-15 06:04:32', '2015-07-13 00:16:37', 5),
(55, 'Jeanette Rodriguez IV', '2015-07-23 08:10:28', '2015-07-13 00:16:37', 5),
(56, 'Jevon Howe', '2015-07-20 04:48:16', '2015-07-13 00:16:37', 6),
(57, 'Mr. Jacey Hettinger DDS', '2015-07-23 17:48:29', '2015-07-13 00:16:37', 7),
(58, 'Miss Marcella Schumm', '2015-07-21 10:48:48', '2015-07-13 00:16:37', 10),
(59, 'Prof. Maritza Flatley', '2015-07-16 13:34:14', '2015-07-13 00:16:37', 6),
(60, 'Ms. Ashley Boyer III', '2015-07-24 09:33:42', '2015-07-13 00:16:37', 2),
(61, 'Mr. Jo Strosin', '2015-07-22 13:36:24', '2015-07-13 01:23:26', 10),
(62, 'Dr. Ron Bode', '2015-07-21 15:11:12', '2015-07-13 01:23:26', 7),
(63, 'Tate Oberbrunner', '2015-07-17 06:07:06', '2015-07-13 01:23:26', 2),
(64, 'Jessica Cartwright III', '2015-07-15 14:53:25', '2015-07-13 01:23:26', 9),
(65, 'Carter King', '2015-07-23 09:48:36', '2015-07-13 01:23:26', 6),
(66, 'Mr. Arnaldo Satterfield IV', '2015-07-24 04:28:21', '2015-07-13 01:23:27', 7),
(67, 'Miss Abigayle Eichmann Sr.', '2015-07-26 12:35:44', '2015-07-13 01:23:27', 4),
(68, 'Brain Hyatt', '2015-07-21 11:31:47', '2015-07-13 01:23:27', 7),
(69, 'Mathias Botsford', '2015-07-19 01:23:12', '2015-07-13 01:23:27', 9),
(70, 'Frederick Harvey', '2015-07-19 11:25:14', '2015-07-13 01:23:27', 6),
(71, 'Dr. Doyle Hartmann II', '2015-07-23 12:35:41', '2015-07-13 01:23:27', 7),
(72, 'Lonzo Cummerata II', '2015-07-20 16:49:32', '2015-07-13 01:23:27', 6),
(73, 'Solon Sanford', '2015-07-20 22:53:14', '2015-07-13 01:23:27', 10),
(74, 'Dr. Travon Hilll', '2015-07-15 16:20:52', '2015-07-13 01:23:27', 8),
(75, 'Lydia Turcotte', '2015-07-21 17:36:07', '2015-07-13 01:23:27', 3),
(76, 'Dr. Israel Kling', '2015-07-21 21:12:32', '2015-07-13 01:23:27', 9),
(77, 'Mark Hilll', '2015-07-14 08:33:03', '2015-07-13 01:23:27', 6),
(78, 'Dr. Roosevelt McCullough', '2015-07-23 12:04:39', '2015-07-13 01:23:27', 3),
(79, 'Prof. Malachi Keebler DDS', '2015-07-22 02:14:55', '2015-07-13 01:23:27', 3),
(80, 'Carmine Walker', '2015-07-20 14:10:49', '2015-07-13 01:23:28', 5),
(81, 'Alanis Dicki', '2015-07-21 19:19:58', '2015-07-13 01:23:28', 5),
(82, 'Jazlyn Mosciski', '2015-07-18 17:57:23', '2015-07-13 01:23:28', 8),
(83, 'Mr. Consuelo Keeling', '2015-07-22 02:51:10', '2015-07-13 01:23:28', 2),
(84, 'Kavon Weimann', '2015-07-15 18:59:29', '2015-07-13 01:23:28', 7),
(85, 'Alessandra Reinger', '2015-07-18 02:36:35', '2015-07-13 01:23:28', 4),
(86, 'Erling Pagac', '2015-07-15 17:26:21', '2015-07-13 01:23:28', 10),
(87, 'Prof. Haylee Homenick', '2015-07-24 01:41:56', '2015-07-13 01:23:28', 10),
(88, 'Trever Wuckert', '2015-07-22 20:59:45', '2015-07-13 01:23:28', 1),
(89, 'Dr. Ollie Schmidt I', '2015-07-15 04:30:58', '2015-07-13 01:23:28', 1),
(90, 'Dr. Shannon Runte IV', '2015-07-23 14:15:58', '2015-07-13 01:23:28', 9);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_06_04_061547_create_articles_table', 1),
('2015_06_07_103617_CreateFakeTable', 2),
('2015_06_08_055022_create_fakes_table', 3),
('2015_07_13_044652_create_students_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE IF NOT EXISTS `names` (
`id` int(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `name`, `email`, `image`, `created_at`, `updated_at`) VALUES
(3, 'nikesh shrestha', 'shrestha.nikesh99@gmail.com', 'a.jpg', '0015-07-15 07:20:16', '2015-07-15 07:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roll` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `address`, `roll`, `age`, `created_at`, `updated_at`) VALUES
(1, 'Gino Upton', '711 Erdman Cape\nNew Ilene, CO 85672', 196, 11, '2015-07-25 19:23:43', '2015-07-13 01:23:25'),
(2, 'Laron Bednar', '4037 Osinski Mall Suite 919\nPort Lexieborough, IA 16044-6857', 155, 14, '2015-07-22 02:50:07', '2015-07-13 01:23:25'),
(3, 'Robyn Corkery', '902 Francisca Expressway Suite 522\nNew Jaylinland, MD 13006-1825', 152, 18, '2015-07-26 20:06:43', '2015-07-13 01:23:25'),
(4, 'Joanie Lubowitz', '220 Hintz Trace\nWest Victoria, SC 90689', 83, 15, '2015-07-15 00:56:54', '2015-07-13 01:23:25'),
(5, 'Thomas Gaylord', '81202 Douglas Meadow\nNorth Jacksonland, IA 02807', 159, 12, '2015-07-24 19:01:26', '2015-07-13 01:23:25'),
(6, 'Ellis Reilly', '24038 Jennie Loaf Suite 238\nLake Liza, NM 73693', 165, 20, '2015-07-23 00:47:42', '2015-07-13 01:23:25'),
(7, 'Mr. Efrain Watsica', '476 Pearline Locks\nSouth Jerrold, ME 35574-6376', 170, 18, '2015-07-16 06:56:28', '2015-07-13 01:23:25'),
(8, 'Blake Rogahn', '52133 Cristobal Corner\nMillertown, NH 08813', 56, 16, '2015-07-13 18:02:57', '2015-07-13 01:23:25'),
(9, 'Agustina Roberts DDS', '390 Malcolm Dam Apt. 092\nSouth Stefanstad, LA 75747-4092', 78, 10, '2015-07-18 19:31:42', '2015-07-13 01:23:25'),
(10, 'Myrl Ryan', '3150 Kathleen Trafficway\nWestside, ID 76046', 19, 13, '2015-07-13 10:34:54', '2015-07-13 01:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rikesh shrestha', 'shrestha.nikesh99@gmail.com', '$2y$10$iCIZDv6phItkQPVj/yJeguT79.ceDatW2RL/CEcy7X7PA3HyDTnUS', 'maSI2p7IBc028OthtqAL2cvpPvnj0mLgxJcfHOeLuBWVg1wzwlNzE2jkaLeD', '2015-06-22 03:12:05', '2015-06-22 23:22:08'),
(2, 'nikesh shrestha', 's.nikesh99@gmail.com', '$2y$10$cv9wlZSWrA2RwFe0rr.02O9EBv37ln4GxRmDrWD8gJCABoUf/rt7u', 'O57x6gOSksKXiPUD04kb7ncVA2jMWQEZYHPERlsHe2VvsgfuoupcqDtf4xdU', '2015-07-09 23:45:20', '2015-07-09 23:45:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`id`), ADD KEY `student_id` (`student_id`), ADD KEY `student_id_2` (`student_id`), ADD KEY `student_id_3` (`student_id`), ADD KEY `student_id_4` (`student_id`), ADD KEY `student_id_5` (`student_id`), ADD KEY `student_id_6` (`student_id`), ADD KEY `student_id_7` (`student_id`);

--
-- Indexes for table `fake`
--
ALTER TABLE `fake`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakes`
--
ALTER TABLE `fakes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
 ADD PRIMARY KEY (`id`), ADD KEY `student_id` (`student_id`), ADD KEY `student_id_2` (`student_id`), ADD KEY `student_id_3` (`student_id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `fake`
--
ALTER TABLE `fake`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `fakes`
--
ALTER TABLE `fakes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
