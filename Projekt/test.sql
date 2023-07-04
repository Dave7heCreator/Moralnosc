-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 05, 2023 at 01:00 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `twd_larry` varchar(20) DEFAULT NULL,
  `rdr2_jimmy` varchar(20) DEFAULT NULL,
  `gta5_character` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `twd_larry`, `rdr2_jimmy`, `gta5_character`) VALUES
(1, 'user1', 'kill', 'no', 'trevor'),
(2, 'user2', 'change', 'killed', 'michael'),
(3, 'user3', 'others', 'killed', 'nobody'),
(4, 'user4', 'kill', 'no', 'nobody'),
(5, 'user5', 'change', 'yes', 'trevor'),
(6, 'user6', 'others', 'killed', 'michael'),
(7, 'user7', 'kill', 'yes', 'nobody'),
(8, 'user8', 'change', 'killed', 'trevor'),
(9, 'user9', 'others', 'killed', 'michael'),
(10, 'user10', 'kill', 'no', 'trevor'),
(11, 'user11', 'change', 'yes', 'trevor'),
(12, 'user12', 'others', 'killed', 'nobody'),
(13, 'user13', 'kill', 'yes', 'michael'),
(14, 'user14', 'change', 'no', 'michael'),
(15, 'user15', 'others', 'killed', 'michael'),
(16, 'user16', 'kill', 'yes', 'michael'),
(17, 'user17', 'change', 'killed', 'trevor'),
(18, 'user18', 'others', 'no', 'nobody'),
(19, 'user19', 'kill', 'yes', 'trevor'),
(20, 'user20', 'change', 'killed', 'trevor'),
(21, 'User21', 'change', 'killed', 'michael'),
(22, 'User22', 'others', 'killed', 'michael'),
(23, 'User23', 'change', 'killed', 'michael'),
(24, 'User24', 'kill', 'killed', 'michael'),
(25, 'User25', 'kill', 'yes', 'michael'),
(26, 'User26', 'others', 'yes', 'michael'),
(27, 'User27', 'others', 'killed', 'trevor'),
(28, 'User28', 'change', 'killed', 'nobody'),
(29, 'User29', 'change', 'no', 'trevor'),
(30, 'User30', 'kill', 'killed', 'nobody'),
(31, 'User31', 'kill', 'no', 'trevor'),
(32, 'User32', 'kill', 'killed', 'trevor'),
(33, 'User33', 'others', 'killed', 'trevor'),
(34, 'User34', 'kill', 'killed', 'michael'),
(35, 'User35', 'kill', 'no', 'michael'),
(36, 'User36', 'others', 'killed', 'nobody'),
(37, 'User37', 'change', 'killed', 'trevor'),
(38, 'User38', 'others', 'killed', 'nobody'),
(39, 'User39', 'change', 'yes', 'michael'),
(40, 'User40', 'change', 'yes', 'michael'),
(41, 'User41', 'others', 'no', 'trevor'),
(42, 'User42', 'change', 'killed', 'michael'),
(43, 'User43', 'change', 'yes', 'michael'),
(44, 'User44', 'change', 'yes', 'trevor'),
(45, 'User45', 'kill', 'killed', 'michael'),
(46, 'User46', 'change', 'killed', 'michael'),
(47, 'User47', 'change', 'killed', 'nobody'),
(48, 'User48', 'change', 'yes', 'nobody'),
(49, 'User49', 'others', 'yes', 'trevor'),
(50, 'User50', 'kill', 'killed', 'nobody'),
(51, 'User51', 'kill', 'killed', 'trevor'),
(52, 'User52', 'others', 'yes', 'michael'),
(53, 'User53', 'change', 'no', 'michael'),
(54, 'User54', 'kill', 'yes', 'michael'),
(55, 'User55', 'others', 'yes', 'michael'),
(56, 'User56', 'kill', 'killed', 'michael'),
(57, 'User57', 'kill', 'yes', 'nobody'),
(58, 'User58', 'kill', 'killed', 'michael'),
(59, 'User59', 'kill', 'killed', 'nobody'),
(60, 'User60', 'others', 'no', 'trevor'),
(61, 'User61', 'kill', 'no', 'nobody'),
(62, 'User62', 'change', 'yes', 'trevor'),
(63, 'User63', 'kill', 'killed', 'michael'),
(64, 'User64', 'change', 'killed', 'trevor'),
(65, 'User65', 'others', 'no', 'michael'),
(66, 'User66', 'kill', 'no', 'michael'),
(67, 'User67', 'change', 'no', 'michael'),
(68, 'User68', 'change', 'killed', 'michael'),
(69, 'User69', 'change', 'no', 'michael'),
(70, 'User70', 'kill', 'no', 'michael'),
(71, 'User71', 'kill', 'killed', 'trevor'),
(72, 'User72', 'kill', 'killed', 'michael'),
(73, 'User73', 'change', 'yes', 'nobody'),
(74, 'User74', 'change', 'yes', 'michael'),
(75, 'User75', 'kill', 'no', 'nobody'),
(76, 'User76', 'others', 'yes', 'michael'),
(77, 'User77', 'change', 'killed', 'nobody'),
(78, 'User78', 'others', 'no', 'michael'),
(79, 'User79', 'others', 'killed', 'trevor'),
(80, 'User80', 'others', 'no', 'nobody'),
(81, 'User81', 'kill', 'killed', 'michael'),
(82, 'User82', 'others', 'no', 'trevor'),
(83, 'User83', 'change', 'killed', 'trevor'),
(84, 'User84', 'others', 'killed', 'michael'),
(85, 'User85', 'change', 'no', 'michael'),
(86, 'User86', 'kill', 'killed', 'michael'),
(87, 'User87', 'kill', 'killed', 'michael'),
(88, 'User88', 'others', 'no', 'trevor'),
(89, 'User89', 'others', 'killed', 'michael'),
(90, 'User90', 'kill', 'no', 'nobody'),
(91, 'User91', 'others', 'killed', 'trevor'),
(92, 'User92', 'kill', 'no', 'michael'),
(93, 'User93', 'others', 'killed', 'michael'),
(94, 'User94', 'kill', 'yes', 'trevor'),
(95, 'User95', 'kill', 'killed', 'trevor'),
(96, 'User96', 'kill', 'killed', 'michael'),
(97, 'User97', 'others', 'no', 'nobody'),
(98, 'User98', 'change', 'yes', 'trevor'),
(99, 'User99', 'change', 'no', 'michael'),
(100, 'User100', 'kill', 'killed', 'michael'),
(101, 'User101', 'change', 'yes', 'michael'),
(102, 'User102', 'others', 'killed', 'michael'),
(103, 'User103', 'others', 'killed', 'michael'),
(104, 'User104', 'others', 'no', 'nobody'),
(105, 'User105', 'others', 'killed', 'trevor'),
(106, 'User106', 'others', 'yes', 'michael'),
(107, 'User107', 'kill', 'no', 'nobody'),
(108, 'User108', 'kill', 'killed', 'nobody'),
(109, 'User109', 'others', 'killed', 'trevor'),
(110, 'User110', 'change', 'killed', 'nobody'),
(111, 'User111', 'change', 'yes', 'trevor'),
(112, 'User112', 'kill', 'no', 'nobody'),
(113, 'User113', 'kill', 'yes', 'michael'),
(114, 'User114', 'others', 'no', 'trevor'),
(115, 'User115', 'others', 'no', 'nobody'),
(116, 'User116', 'kill', 'killed', 'nobody'),
(117, 'User117', 'kill', 'yes', 'michael'),
(118, 'User118', 'change', 'killed', 'trevor'),
(119, 'User119', 'kill', 'killed', 'trevor'),
(120, 'User120', 'kill', 'no', 'trevor'),
(121, 'User121', 'others', 'no', 'nobody'),
(122, 'User122', 'kill', 'yes', 'trevor'),
(123, 'User123', 'kill', 'killed', 'nobody'),
(124, 'User124', 'change', 'no', 'michael'),
(125, 'User125', 'others', 'no', 'nobody'),
(126, 'User126', 'kill', 'killed', 'trevor'),
(127, 'User127', 'kill', 'killed', 'michael'),
(128, 'User128', 'change', 'yes', 'trevor'),
(129, 'User129', 'kill', 'killed', 'trevor'),
(130, 'User130', 'change', 'yes', 'nobody'),
(131, 'User131', 'change', 'no', 'michael'),
(132, 'User132', 'change', 'no', 'nobody'),
(133, 'User133', 'kill', 'no', 'nobody'),
(134, 'User134', 'others', 'yes', 'nobody'),
(135, 'User135', 'kill', 'no', 'trevor'),
(136, 'User136', 'kill', 'yes', 'trevor'),
(137, 'User137', 'change', 'no', 'michael'),
(138, 'User138', 'others', 'killed', 'michael'),
(139, 'User139', 'others', 'yes', 'michael'),
(140, 'User140', 'kill', 'yes', 'nobody'),
(141, 'User141', 'change', 'no', 'nobody'),
(142, 'User142', 'kill', 'yes', 'trevor'),
(143, 'User143', 'change', 'yes', 'michael'),
(144, 'User144', 'kill', 'no', 'michael'),
(145, 'User145', 'others', 'yes', 'nobody'),
(146, 'User146', 'change', 'killed', 'michael'),
(147, 'User147', 'change', 'yes', 'trevor'),
(148, 'User148', 'others', 'yes', 'trevor'),
(149, 'User149', 'others', 'no', 'nobody'),
(150, 'User150', 'change', 'yes', 'michael');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
