-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-rubengmpineda.alwaysdata.net
-- Generation Time: Dec 12, 2025 at 12:38 PM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rubengmpineda_gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `Administradores`
--

CREATE TABLE `Administradores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `rol` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Administradores`
--

INSERT INTO `Administradores` (`id`, `mail`, `rol`, `password`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'nicolas@a.es', 'admin', 'admin', 1, NULL, NULL),
(2, 'admin', 'admin', 'admin', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Clases`
--

CREATE TABLE `Clases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `aforo` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Clases`
--

INSERT INTO `Clases` (`id`, `nombre`, `aforo`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Yoga', 3, 'Clase de yoga para principiantes', 1, NULL, NULL),
(2, 'Crossfit', 3, 'Entrenamiento de alta intensidad', 1, NULL, NULL),
(3, 'Pilates', 4, 'Pilates para fortalecer el core', 1, NULL, NULL),
(4, 'Zumba', 2, 'Baile y cardio divertido', 1, NULL, NULL),
(5, 'Spinning', 3, 'Bicicleta estática en grupo', 1, NULL, NULL),
(6, 'Boxeo', 2, 'Entrenamiento de boxeo para principiantes', 1, NULL, NULL),
(7, 'HIIT', 2, 'Sesión de alta intensidad', 1, NULL, NULL),
(8, 'Meditación', 3, 'Meditación para relajamiento', 1, NULL, NULL),
(9, 'Funcional', 2, 'Funcional para movimiento total corporal', 1, NULL, NULL),
(10, 'Cardio Dance', 3, 'Baile para cardio', 1, NULL, NULL),
(11, 'Judo', 3, 'Clase de judo para principiantes', 0, NULL, NULL),
(12, 'Taekwondo', 2, 'Taekwondo para todos los niveles', 0, NULL, NULL),
(13, 'qwer', 10, 'qwer', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Clientes`
--

CREATE TABLE `Clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `IBAN` varchar(30) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Clientes`
--

INSERT INTO `Clientes` (`id`, `nombre`, `apellido1`, `apellido2`, `IBAN`, `mail`, `telefono`, `password`, `remember_token`, `estado`, `created_at`, `updated_at`) VALUES
(24, 'Juan', 'Real', 'López', 'ES8011797674564484104052', 'juan.perez@email.com', '600111222', '$2y$06$dLJIsqckRZhXLrrsA6royOhCFVjlMuwI6AHWMaSplZi8dJLvQ1mmG', NULL, 0, NULL, NULL),
(25, 'Anna', 'García', 'Fernández', 'ES8823361268043655689357', 'ana.garcia@email.com', '600333444', '$2y$06$2gID5EZq8F.P25sEzu.YReyx5c/H8hFIXQ6GoIRnB60GwwklyvKxq', NULL, 0, NULL, NULL),
(26, 'Carlos', 'Martínez', 'Gómez', 'ES9367829077082881698714', 'carlos.martinez@email.com', '600555666', '$2y$06$C/C6gsIhUafe6FRkvQ6qUu0ifJI5DBLp9VJe6iKJH/bMc/RrUch9.', NULL, 0, NULL, NULL),
(27, 'Laura', 'Sánchez', 'Ruiz', 'ES7236306499431557358564', 'laura.sanchez@email.com', '600777888', '$2y$06$.8g1J2apZW4QJbHdJhOdy.wB9rEeiqrq2kGL5VuZOGOROan7QoX8y', NULL, 0, NULL, NULL),
(28, 'Pedro', 'Díaz', 'Morales', 'ES5807462532893789651728', 'pedro.diaz@email.com', '600999000', '$2y$06$Uf2NuiWA1wn0Og/fBWWTEO22A9w3R/h34VoctiG5mM82D8onziIMW', NULL, 0, NULL, NULL),
(29, 'Marta', 'Romero', 'Navarro', 'ES2728194090794761586849', 'marta.romero@email.com', '601111222', '$2y$06$QkUGt6UXgXlwgelbm8E8/eQF2EOkp9a.Q9b6rlc7TXrXt4BEuxp9S', NULL, 0, NULL, NULL),
(30, 'Luis', 'Torres', 'Vega', 'ES0450681446272439616458', 'luis.torres@email.com', '601333444', '$2y$06$BdNYzOFKzPbng54sRvcW7usspkNA/A5kiTzl3dbuahipYLZOiZtdy', NULL, 1, NULL, NULL),
(31, 'Sofía', 'Ramírez', 'Cruz', 'ES8055566282742863798375', 'sofia.ramirez@email.com', '601555666', '$2y$06$eGRMmXH.i4ElBr7mTgki7OHjvcIjFSMpHgOaiKEwi9Q9tJXK7v7M2', NULL, 1, NULL, NULL),
(32, 'Diego', 'Hernández', 'Ortiz', 'ES3919341374022616798736', 'diego.hernandez@email.com', '601777888', '$2y$06$aarM5iexkAgYo/gWhbEHXeWfGxEBidLnE18koj3hxxk4zs/CvBhQi', NULL, 0, NULL, NULL),
(33, 'Lucía', 'Moreno', 'Iglesias', 'ES3870344873779186810777', 'lucia.moreno@email.com', '601999000', '$2y$06$AJLOzYyazuYJRo8y47VE..2VaRMQP3YTEefsVucVCut89ige9/UyS', NULL, 1, NULL, NULL),
(35, 'Alberto', 'Santos', 'Pérez', 'ES8033461610162766878800', 'alberto.santos@email.com', '602111222', '$2y$06$tDUK/umwEK9gWgubn7s94uhEh1qIQLeIw3hM31GXo3vM6e16Wr/TW', NULL, 1, NULL, NULL),
(36, 'Isabel', 'Vargas', 'López', 'ES2606321097504000548274', 'isabel.vargas@email.com', '602333444', '$2y$06$dvm/YinpbC9mCbjUd.4gIeHbzz86CMVYARxs6ZviUne1AEyzbASU6', NULL, 1, NULL, NULL),
(37, 'Fernando', 'Castillo', 'Ramírez', 'ES9288120482002812363125', 'fernando.castillo@email.com', '602555666', '$2y$06$vgLk7B0oS1zmTCOnb6b2ouh2duVClWgyYjLJ0igv4rXCkKKsoBtP6', NULL, 1, NULL, NULL),
(38, 'Elena', 'Ríos', 'Gómez', 'ES1592401233782324439359', 'elena.rios@email.com', '602777888', '$2y$06$nJn1.l74zOloR8nHTqD1u.fLid/5z2WrHjllXjXk4wxWZ09Y8bdCa', NULL, 1, NULL, NULL),
(39, 'Ricardo', 'Molina', 'Fernández', 'ES5741779672015844283530', 'ricardo.molina@email.com', '602999000', '$2y$06$mxJGa4Al8lmqIkRM8g5pe.rW67E2HZPbySvMhwGhNkB5DdXXCYYmO', NULL, 1, NULL, NULL),
(40, 'Paula', 'Alonso', 'Sánchez', 'ES2066004732411802076983', 'paula.alonso@email.com', '603111222', '$2y$06$QCq6ftPnj/moHdcPj1DqAuATzS8bsQ3mj7HRnmYmsqzYX251sShTq', NULL, 1, NULL, NULL),
(41, 'Sergio', 'Navarro', 'Díaz', 'ES9726857285974643597764', 'sergio.navarro@email.com', '603333444', '$2y$06$OWPQSFa8DjRb9Crn./Ji8eoo6sq8MBi1gxZO.tftIHq.0vBNVYNBi', NULL, 1, NULL, NULL),
(42, 'Marina', 'Cruz', 'Morales', 'ES3793423574309775194201', 'marina.cruz@email.com', '603555666', '$2y$06$AEvvplu9V3DwxcmCkSxlLuxFiVJzTWFvAXtWBKAJOBHqHQlHzQ3xq', NULL, 1, NULL, NULL),
(43, 'Javier', 'Herrera', 'Romero', 'ES2832031205765913670828', 'javier.herrera@email.com', '603777888', '$2y$06$iqIAs1QfiH.Pki5vT1qbIeZAQQ5lnJ4hrPfX8Owyx2lU1P7nQKioi', NULL, 1, NULL, NULL),
(44, 'Natalia', 'Ortiz', 'Vega', 'ES1955410494653629750326', 'natalia.ortiz@email.com', '603999000', '$2y$06$jGmUJOvnS49tXbMlxvczQ.x27n61ObkXj8SoGraJpQLeEJo6dP8Dm', NULL, 1, NULL, NULL),
(45, 'David', 'Gómez', 'Cruz', 'ES1914368090441220353601', 'david.gomez@email.com', '604111222', '$2y$06$3ruBoAolbKZS/NFNuL8ROOH7jSYiogN7xd625trAGDu8g.BDGRjIC', NULL, 1, NULL, NULL),
(46, 'Cristina', 'Pardo', 'Fernández', 'ES1138854091321967171793', 'cristina.pardo@email.com', '604333444', '$2y$06$CR4DHkwIio2mxJsZPlWPS.TDjKaphP7JM4VxIwMWJB4ISSEj5BBcq', NULL, 1, NULL, NULL),
(47, 'Manuel', 'Gil', 'Ruiz', 'ES5933262143698125051554', 'manuel.gil@email.com', '604555666', '$2y$06$31xeE/XlsBAyQ/SY1L1VieQ.xWzKEYXd9ZJJMB3wCy2VXTojxYw6a', NULL, 1, NULL, NULL),
(48, 'Verónica', 'Medina', 'Moreno', 'ES7634003435024267391625', 'veronica.medina@email.com', '604777888', '$2y$06$Zx.VwAujuEUntv/z3wji8etvwMMxJAp99EmJFSUyXvnPYzStKyznC', NULL, 1, NULL, NULL),
(49, 'Pablo', 'Serrano', 'Iglesias', 'ES0425423126863035174506', 'pablo.serrano@email.com', '604999000', '$2y$06$s/1Z2jI/U2gY4RwAFTzlFeexcgmgPB85iRfRnrQablNsNIEBbdPey', NULL, 1, NULL, NULL),
(50, 'Laura', 'Marín', 'Ramos', 'ES0347154356237927967772', 'laura.marin@email.com', '605111222', '$2y$06$XR2nEWtiLMYGK00HTXIXZO9lfLGSIAmIxCGvBXrjfX04k2k76C5N.', NULL, 1, NULL, NULL),
(51, 'José', 'Domínguez', 'López', 'ES6725430134069458872238', 'jose.dominguez@email.com', '605333444', '$2y$06$TP2zXSWBA99fl9QRxEiWsuWOO24NJBVJQ8cxRUpAtE1s4072ay6qy', NULL, 1, NULL, NULL),
(52, 'Andrea', 'Cabrera', 'Martínez', 'ES9453672620493441479039', 'andrea.cabrera@email.com', '605555666', '$2y$06$AYbWne4wvw7sZwtKm5KoFeO34.dY5et07io5sbaesIpakdTNLVt4.', NULL, 1, NULL, NULL),
(53, 'Raúl', 'Santos', 'Pérez', 'ES6444546773624778960112', 'raul.santos@email.com', '605777888', '$2y$06$UYE7Gp1F2a4pryeRQj3xf.fmyeqyXImhqV5Ym9jVpAA9R6GYunEiW', NULL, 0, NULL, NULL),
(54, 'Clara', 'Méndez', 'Vega', 'ES4590595853728349620774', 'clara.mendez@email.com', '605999000', '$2y$06$dMJRNuTFxoTYrkZS/9WcWOoifYRYIpTkz1NOAxo8jDU2Z8TLZgx3y', NULL, 1, NULL, NULL),
(55, 'Antonio', 'Fuentes', 'Navarro', 'ES8189148215529277988822', 'antonio.fuentes@email.com', '606111222', '$2y$06$k/R.awJsYOIaf1v4ylmKEulueoiavQybRvQ03ejXFKKDa51.XShFm', NULL, 1, NULL, NULL),
(56, 'Patricia', 'Román', 'Hernández', 'ES0349717743693384096966', 'patricia.roman@email.com', '606333444', '$2y$06$VCvVzpom5wTiTMlzPbhOAOdf5CuAEdOusbosVmEY4jDbFD97Z2yBO', NULL, 1, NULL, NULL),
(57, 'Miguel', 'Castro', 'Ortiz', 'ES8241474237615003309762', 'miguel.castro@email.com', '606555666', '$2y$06$g0UQDmEhPZiYrD5u7EKVL.dwmBCfcH8pkCSdzBbJ3UbDZ33BaB0WG', NULL, 1, NULL, NULL),
(58, 'Sonia', 'Vega', 'Ramos', 'ES9800862794323258979141', 'sonia.vega@email.com', '606777888', '$2y$06$Q2pj/WI9Jld6Mo38Wbuv/OcnBK9IJ2q5zo6rvkdr2qAz21AfYzUe6', NULL, 1, NULL, NULL),
(59, 'Adrián', 'Blanco', 'Gil', 'ES6663769263852227820061', 'adrian.blanco@email.com', '606999000', '$2y$06$7Snej.PUfyouhNFrZ4ZKBucodIZV99GjOj641F9kTEaL6AHZNFIsm', NULL, 1, NULL, NULL),
(60, 'Raquel', 'Mora', 'Serrano', 'ES6316294092316147336318', 'raquel.mora@email.com', '607111222', '$2y$06$8Hj2iHnejtewJoZ.WxGEgur5MjLmNIPHAAKni83lY4ylgw2xuMNAW', NULL, 1, NULL, NULL),
(61, 'Héctor', 'Campos', 'Pardo', 'ES1160409413688870998172', 'hector.campos@email.com', '607333444', '$2y$06$H7xC0/5vaaIENCj7VgNfneUj.py0q7TggmbFGYE1tQdIALM/fYrkW', NULL, 1, NULL, NULL),
(62, 'Natalie', 'Vidal', 'Gómez', 'ES0968531768798330685808', 'natalie.vidal@email.com', '607555666', '$2y$06$7X1QHmdDDvs7oakZYDQq8OpQ6MmSSKWua5nrKB2Zta6heVPgk9NK6', NULL, 1, NULL, NULL),
(63, 'Iván', 'Luna', 'Morales', 'ES9125992047559243139523', 'ivan.luna@email.com', '607777888', '$2y$06$wuQAia5zdAW5gIHInq7vf.Cxv9632vuCSstLRebJIU1AIn28OsCzK', NULL, 0, NULL, NULL),
(64, 'Sandra', 'Ramos', 'Cruz', 'ES5450542607154782667977', 'sandra.ramos@email.com', '607999000', '$2y$06$nfQ9Af1fz0F.VrVcfUmLOuhfmBN2HTHp4DGeEDpL2UkLRXwmWMDy6', NULL, 1, NULL, NULL),
(65, 'Diego', 'Reyes', 'Molina', 'ES4335455431932865488133', 'diego.reyes@email.com', '608111222', '$2y$06$/tWPKe2SZ9RBgM6mSFuKF.uCYDNHn7PbtdgIWHVAwbNBCoO8XvyBS', NULL, 1, NULL, NULL),
(66, 'Mónica', 'Pérez', 'Sánchez', 'ES1249742824419791561992', 'monica.perez@email.com', '608333444', '$2y$06$zu9dB85amjItIyrR.Rb7n.DSuKct0ABhVtoduSr77TsViaxD54zsG', NULL, 1, NULL, NULL),
(67, 'Francisco', 'Ortiz', 'López', 'ES4128131786412439589564', 'francisco.ortiz@email.com', '608555666', '$2y$06$7GBYLU37XKZ744BgM6W3J.0w1m/KATTtKc8tpeBDx/jwkh6bqjnQ6', NULL, 1, NULL, NULL),
(68, 'Lorena', 'Vega', 'Fernández', 'ES9541498119084819286747', 'lorena.vega@email.com', '608777888', '$2y$06$IIgCQx4PXqe8whebspmsF.qre1Ibxn3T.pa7AaBZS0hzn66F9DVqe', NULL, 1, NULL, NULL),
(69, 'Alfonso', 'Cano', 'Navarro', 'ES2898432913928395034783', 'alfonso.cano@email.com', '608999000', '$2y$06$BZVDij9YqzsGhSIC09DifOSXn7KI7.OiXlrdiuQ0OY1OH.wnn2ksS', NULL, 1, NULL, NULL),
(70, 'Julia', 'Guerrero', 'Gómez', 'ES2162128056105960204800', 'julia.guerrero@email.com', '609111222', '$2y$06$yVdSiGtZSbTPe55dHMdJj.unSqbCPtVI066NIskuosWw61GRYWq1O', NULL, 1, NULL, NULL),
(71, 'Raúl', 'Pérez', 'Ruiz', 'ES3731546369469791431578', 'raul.perez@email.com', '609333444', '$2y$06$mXt8LFeQKUUyjtVW/MaXiO.PiL.xNDMg8GXa6p2P4l1SXD3t8BA0q', NULL, 1, NULL, NULL),
(72, 'Teresa', 'Santos', 'López', 'ES3573581700509158168432', 'teresa.santos@email.com', '609555666', '$2y$06$4Oi/cVEtwIr5Fb6YOYg.Z.0ISKrSaHVc8IqPjKKa8vOhILwk0mgVq', NULL, 1, NULL, NULL),
(73, 'Gonzalo', 'Vargas', 'Fernández', 'ES6650312950866993587667', 'gonzalo.vargas@email.com', '609777888', '$2y$06$T338dCRc2KCBy6cdkrkWw.oTPiFcmbj.j4aI33nYyvt4xG4eABEAy', NULL, 0, NULL, NULL),
(74, 'Inés', 'Martínez', 'Romero', 'ES6135392773351828198646', 'ines.martinez@email.com', '609999000', '$2y$06$wWRQ3B254MzYRUI91rpgwuVDzVChseJgPjyjQ1jiJdbfFDCZLYGva', NULL, 1, NULL, NULL),
(75, 'Mario', 'López', 'Morales', 'ES9614947988873656186468', 'mario.lopez@email.com', '610111222', '$2y$06$mCzeiyWILgw7eNgQZuw/peVwaDBptf.WqLgPldcYhjiL2I8.sYkPa', NULL, 1, NULL, NULL),
(76, 'Cecilia', 'Fernández', 'Navarro', 'ES1848133792342304976731', 'cecilia.fernandez@email.com', '610333444', '$2y$06$pOMy.U75wc.1Hy3DtTA4gur5N.lEOAMPP8bv6fos4rVpZrZRFhQZa', NULL, 1, NULL, NULL),
(77, 'Tomás', 'Hernández', 'Cruz', 'ES8429843701824838543638', 'tomas.hernandez@email.com', '610555666', '$2y$06$FboYBFQgNMMw9XOFymes3eZqD.fsZyLYvWMV301JQluqg0NQlDw8y', NULL, 1, NULL, NULL),
(78, 'Olga', 'Sánchez', 'Vega', 'ES1390097523383202404312', 'olga.sanchez@email.com', '610777888', '$2y$06$2Ld1WBpN5MjzV0jz.wBBPuxf1EmVPPIB7o7q1xh3LMQT1.5/ZgGwC', NULL, 1, NULL, NULL),
(79, 'Iván', 'Moreno', 'Ramírez', 'ES2825078529215935786243', 'ivan.moreno@email.com', '610999000', '$2y$06$VNs3szOD.dIig7GFCMg7gux65IXY8G3pD6dnJJzHPoIbdRBEHMhQu', NULL, 1, NULL, NULL),
(80, 'Claudia', 'Romero', 'Gómez', 'ES0472295769679285754935', 'claudia.romero@email.com', '611111222', '$2y$06$yAKky1Qm5bpCZf0X4h6VZOp3isqa1LRrtgt40SXU84WbjLt3wFvRa', NULL, 1, NULL, NULL),
(81, 'Jorge', 'Torres', 'López', 'ES8224633834938124595689', 'jorge.torres@email.com', '611333444', '$2y$06$jj4juRQBfzbB0s/yQ6LEXOHwnx9A2vBzfYnkoxQ4ebNATKrIDhbd2', NULL, 1, NULL, NULL),
(82, 'Verónica', 'Molina', 'Fernández', 'ES1286148329887567710438', 'veronica.molina@email.com', '611555666', '$2y$06$FUhzFDChbmJfGKD60BUHkescVdOYNTtx/ENCjnR2z0DnUIgWenfVi', NULL, 1, NULL, NULL),
(83, 'Andrés', 'González', 'Navarro', 'ES7350297513233429516767', 'andres.gonzalez@email.com', '611777888', '$2y$06$wYkwzIfNZBDlINCcLzKDd.rOdKsC6tUFU3ZT/mbI/C3wsxDcXYF0S', NULL, 1, NULL, NULL),
(84, 'Natalia', 'López', 'Ramírez', 'ES4634438788891377883462', 'natalia.lopez@email.com', '611999000', '$2y$06$KDBIHhcfpsX7HdO6dl0B4ej0CmRP4CWd8WBfjICDE8OJKF03Uy8we', NULL, 1, NULL, NULL),
(85, 'Raúl', 'Hernández', 'Serrano', 'ES6452436902223289058763', 'raul.hernandez@email.com', '612111222', '$2y$06$/cHGctc81FGltrV5nrp/Me9PuJhuWrY8xYH0cP1kraiiGsKTFoZye', NULL, 1, NULL, NULL),
(86, 'Sandra', 'Gómez', 'Pérez', 'ES5057157656349740832876', 'sandra.gomez@email.com', '612333444', '$2y$06$UK3afLpCGGohHGorcOcZgOZbYR3KR1oQFATx2tlVngZTvsmqQ4lm6', NULL, 1, NULL, NULL),
(87, 'Luis', 'Vega', 'Martínez', 'ES3693963673918803338361', 'luis.vega@email.com', '612555666', '$2y$06$thxmrn1VR2oLJUSGMyXgSOiv.VM4svsuFmr8jo5SGQNaiJXLh47aO', NULL, 1, NULL, NULL),
(88, 'Carla', 'Navarro', 'Ruiz', 'ES5932494939705317162025', 'carla.navarro@email.com', '612777888', '$2y$06$LA4y10zUOcolGNatvP1fBeKXffVetzdOxiDdf4ejrHZwKKeUrslGa', NULL, 1, NULL, NULL),
(89, 'Diego', 'Cabrera', 'Gómez', 'ES5282889359825461337498', 'diego.cabrera@email.com', '612999000', '$2y$06$khqsqn6F0wcb07ZAXKhDAek2VdR0j3uoMn4C9J0iDasw5J8oBP5eW', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Instructores`
--

CREATE TABLE `Instructores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `DNI` varchar(20) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Instructores`
--

INSERT INTO `Instructores` (`id`, `nombre`, `apellido1`, `apellido2`, `telefono`, `DNI`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Ana', 'Pérez', 'García', '612345678', '12345678Z', '1', NULL, NULL),
(2, 'Carlos', 'Díaz', 'López', '698765432', '87654321Z', '0', NULL, NULL),
(3, 'Lucía', 'Martínez', 'Hernández', '600123456', '23456789M', '0', NULL, NULL),
(4, 'Javier', 'Gómez', 'Santos', '601234567', '34567890X', '1', NULL, NULL),
(5, 'María', 'Ruiz', 'Fernández', '602345678', '45678901F', '1', NULL, NULL),
(6, 'David', 'Sánchez', 'Moreno', '603456789', '56789012R', '1', NULL, NULL),
(7, 'Laura', 'Torres', 'Vega', '604567890', '67890123B', '0', NULL, NULL),
(8, 'Pablo', 'Ramírez', 'Castillo', '605678901', '78901234G', '0', NULL, NULL),
(9, 'Sara', 'Jiménez', 'Blanco', '606789012', '89012345K', '1', NULL, NULL),
(10, 'Miguel', 'Cruz', 'Ortiz', '607890123', '90123456S', '1', NULL, NULL),
(11, 'Jose ', 'Peña', 'Salazar', '645123450', '67676787L', '1', NULL, NULL),
(12, 'Nico', 'Alvarezs', 'Alcaraz', '645334455', '44537388R', '1', NULL, NULL),
(40, 'Robert', 'Palancuela', 'Ibuñez', '645812201', '83157370L', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_04_121446_create_clientes_table', 1),
(5, '2025_12_04_121501_create_clases_table', 1),
(6, '2025_12_04_121514_create_instructores_table', 1),
(7, '2025_12_04_121526_create_planificaciones_table', 1),
(8, '2025_12_04_121540_create_reservas_table', 1),
(9, '2025_12_04_144712_create_administradores_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Planificaciones`
--

CREATE TABLE `Planificaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dia` varchar(20) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `fk_id_clase` bigint(20) UNSIGNED DEFAULT NULL,
  `fk_id_inst` bigint(20) UNSIGNED DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Planificaciones`
--

INSERT INTO `Planificaciones` (`id`, `dia`, `hora_inicio`, `hora_fin`, `fk_id_clase`, `fk_id_inst`, `estado`, `created_at`, `updated_at`) VALUES
(12, 'Lunes', '16:00:00', '17:00:00', 6, 6, 1, NULL, NULL),
(14, 'Martes', '09:30:00', '10:45:00', 3, 5, 1, NULL, NULL),
(15, 'Martes', '12:00:00', '13:00:00', 4, 9, 1, NULL, NULL),
(16, 'Martes', '16:30:00', '17:30:00', 7, 10, 1, NULL, NULL),
(17, 'Martes', '18:30:00', '19:00:00', 8, 12, 1, NULL, NULL),
(18, 'Miércoles', '09:00:00', '10:30:00', 5, 10, 1, NULL, NULL),
(19, 'Miércoles', '12:00:00', '13:00:00', 1, 1, 1, NULL, NULL),
(20, 'Miércoles', '16:00:00', '17:00:00', 3, 5, 1, NULL, NULL),
(21, 'Miércoles', '19:30:00', '20:45:00', 6, 6, 1, NULL, NULL),
(22, 'Jueves', '09:45:00', '10:30:00', 10, 1, 1, NULL, NULL),
(23, 'Jueves', '12:00:00', '13:15:00', 9, 11, 1, NULL, NULL),
(24, 'Jueves', '17:00:00', '18:15:00', 2, 4, 1, NULL, NULL),
(25, 'Jueves', '19:45:00', '21:00:00', 4, 9, 1, NULL, NULL),
(26, 'Viernes', '09:00:00', '10:00:00', 7, 10, 1, NULL, NULL),
(27, 'Viernes', '11:00:00', '11:45:00', 8, 12, 1, NULL, NULL),
(28, 'Viernes', '16:00:00', '17:30:00', 5, 5, 1, NULL, NULL),
(38, 'Viernes', '08:00:00', '09:00:00', 4, 8, 1, NULL, NULL),
(39, 'Viernes', '15:00:00', '16:00:00', 2, 3, 1, NULL, NULL),
(42, 'Lunes', '11:00:00', '12:00:00', 2, 3, 1, NULL, NULL),
(50, 'Lunes', '09:00:00', '10:00:00', 1, 2, 1, NULL, NULL),
(55, 'Lunes', '08:00:00', '09:00:00', 3, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Reservas`
--

CREATE TABLE `Reservas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_id_planificacion` bigint(20) UNSIGNED DEFAULT NULL,
  `fk_id_cliente` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Reservas`
--

INSERT INTO `Reservas` (`id`, `fk_id_planificacion`, `fk_id_cliente`, `fecha_reserva`, `estado`, `created_at`, `updated_at`) VALUES
(30, 27, 69, '2025-10-24', -1, NULL, NULL),
(31, 25, 37, '2025-10-30', -1, NULL, NULL),
(32, 28, 52, '2025-10-30', -1, NULL, NULL),
(34, 27, 40, '2025-10-31', -1, NULL, NULL),
(40, 42, 40, '2025-10-31', -1, NULL, NULL),
(41, 42, 59, '2025-10-31', -1, NULL, NULL),
(42, 42, 89, '2025-10-31', -1, NULL, NULL),
(43, 14, 59, '2025-11-06', -1, NULL, NULL),
(44, 14, 40, '2025-11-06', -1, NULL, NULL),
(45, 14, 59, '2025-11-06', -1, NULL, NULL),
(46, 24, 40, '2025-11-06', -1, NULL, NULL),
(47, 24, 59, '2025-11-06', -1, NULL, NULL),
(48, 25, 69, '2025-11-06', -1, NULL, NULL),
(52, 39, 40, '2025-11-07', 0, NULL, NULL),
(53, 39, 59, '2025-11-07', 0, NULL, NULL),
(54, 39, 59, '2025-11-07', -1, NULL, NULL),
(55, 39, 89, '2025-11-07', -1, NULL, NULL),
(56, 39, 61, '2025-11-07', -1, NULL, NULL),
(57, 24, 40, '2025-11-13', -1, NULL, NULL),
(58, 24, 59, '2025-11-13', -1, NULL, NULL),
(59, 24, 89, '2025-11-13', -1, NULL, NULL),
(60, 39, 40, '2025-11-14', -1, NULL, NULL),
(61, 28, 40, '2025-11-14', -1, NULL, NULL),
(62, 38, 59, '2025-11-14', -1, NULL, NULL),
(63, 28, 57, '2025-11-14', -1, NULL, NULL),
(64, 39, 51, '2025-11-14', -1, NULL, NULL),
(65, 50, 40, '2025-11-14', 0, NULL, NULL),
(66, 50, 40, '2025-11-14', 0, NULL, NULL),
(67, 50, 40, '2025-11-14', 0, NULL, NULL),
(68, 50, 40, '2025-11-14', 0, NULL, NULL),
(69, 50, 40, '2025-11-14', 0, NULL, NULL),
(70, 50, 40, '2025-11-14', 0, NULL, NULL),
(71, 50, 40, '2025-11-14', 0, NULL, NULL),
(72, 50, 59, '2025-11-14', 0, NULL, NULL),
(73, 50, 40, '2025-11-14', 0, NULL, NULL),
(74, 50, 59, '2025-11-14', 0, NULL, NULL),
(75, 26, 40, '2025-11-14', 0, NULL, NULL),
(76, 26, 37, '2025-11-14', 0, NULL, NULL),
(77, 26, 89, '2025-11-14', 0, NULL, NULL),
(78, 26, 40, '2025-11-14', -1, NULL, NULL),
(79, 28, 52, '2025-11-14', -1, NULL, NULL),
(80, 42, 40, '2025-11-14', 0, NULL, NULL),
(81, 27, 40, '2025-11-14', -1, NULL, NULL),
(82, 26, 40, '2025-11-14', -1, NULL, NULL),
(83, 26, 59, '2025-11-14', -1, NULL, NULL),
(84, 27, 40, '2025-11-14', -1, NULL, NULL),
(85, 27, 40, '2025-11-14', -1, NULL, NULL),
(86, 28, 40, '2025-11-14', -1, NULL, NULL),
(87, 27, 40, '2025-11-14', -1, NULL, NULL),
(88, 39, 40, '2025-11-14', -1, NULL, NULL),
(89, 39, 40, '2025-11-14', -1, NULL, NULL),
(90, 39, 59, '2025-11-14', -1, NULL, NULL),
(91, 39, 89, '2025-11-14', -1, NULL, NULL),
(92, 38, 61, '2025-11-14', -1, NULL, NULL),
(93, 24, 40, '2025-11-20', -1, NULL, NULL),
(94, 24, 59, '2025-11-20', -1, NULL, NULL),
(95, 24, 89, '2025-11-20', 0, NULL, NULL),
(96, 39, 40, '2025-11-21', -1, NULL, NULL),
(97, 38, 40, '2025-11-21', -1, NULL, NULL),
(98, 28, 40, '2025-11-21', -1, NULL, NULL),
(99, 39, 59, '2025-11-21', -1, NULL, NULL),
(100, 26, 40, '2025-11-28', -1, NULL, NULL),
(101, 28, 52, '2025-11-28', -1, NULL, NULL),
(102, 26, 57, '2025-11-28', -1, NULL, NULL),
(103, 27, 89, '2025-11-28', -1, NULL, NULL),
(104, 27, 37, '2025-11-28', -1, NULL, NULL),
(105, 38, 70, '2025-11-28', -1, NULL, NULL),
(106, 38, 52, '2025-11-28', -1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Administradores`
--
ALTER TABLE `Administradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administradores_mail_unique` (`mail`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `Clases`
--
ALTER TABLE `Clases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_mail_unique` (`mail`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `Instructores`
--
ALTER TABLE `Instructores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructores_dni_unique` (`DNI`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `Planificaciones`
--
ALTER TABLE `Planificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planificaciones_fk_id_clase_foreign` (`fk_id_clase`),
  ADD KEY `planificaciones_fk_id_inst_foreign` (`fk_id_inst`);

--
-- Indexes for table `Reservas`
--
ALTER TABLE `Reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_fk_id_planificacion_foreign` (`fk_id_planificacion`),
  ADD KEY `reservas_fk_id_cliente_foreign` (`fk_id_cliente`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Administradores`
--
ALTER TABLE `Administradores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Clases`
--
ALTER TABLE `Clases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Instructores`
--
ALTER TABLE `Instructores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Planificaciones`
--
ALTER TABLE `Planificaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `Reservas`
--
ALTER TABLE `Reservas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Planificaciones`
--
ALTER TABLE `Planificaciones`
  ADD CONSTRAINT `planificaciones_fk_id_clase_foreign` FOREIGN KEY (`fk_id_clase`) REFERENCES `Clases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `planificaciones_fk_id_inst_foreign` FOREIGN KEY (`fk_id_inst`) REFERENCES `Instructores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `Reservas`
--
ALTER TABLE `Reservas`
  ADD CONSTRAINT `reservas_fk_id_cliente_foreign` FOREIGN KEY (`fk_id_cliente`) REFERENCES `Clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservas_fk_id_planificacion_foreign` FOREIGN KEY (`fk_id_planificacion`) REFERENCES `Planificaciones` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
