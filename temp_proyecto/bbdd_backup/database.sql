-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-rubengmpineda.alwaysdata.net
-- Generation Time: Dec 04, 2025 at 12:18 PM
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
  `id_user` int(11) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `rol` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `estado` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Administradores`
--

INSERT INTO `Administradores` (`id_user`, `mail`, `rol`, `password`, `estado`) VALUES
(1, 'nicolas@a.es', 'admin', 'admin', 1),
(2, 'admin', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Clases`
--

CREATE TABLE `Clases` (
  `id_clase` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `aforo` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Clases`
--

INSERT INTO `Clases` (`id_clase`, `nombre`, `aforo`, `descripcion`, `estado`) VALUES
(1, 'Yoga', 3, 'Clase de yoga para principiantes', 1),
(2, 'Crossfit', 3, 'Entrenamiento de alta intensidad', 1),
(3, 'Pilates', 4, 'Pilates para fortalecer el core', 1),
(4, 'Zumba', 2, 'Baile y cardio divertido', 1),
(5, 'Spinning', 3, 'Bicicleta estática en grupo', 1),
(6, 'Boxeo', 2, 'Entrenamiento de boxeo para principiantes', 1),
(7, 'HIIT', 2, 'Sesión de alta intensidad', 1),
(8, 'Meditación', 3, 'Meditación para relajamiento', 1),
(9, 'Funcional', 2, 'Funcional para movimiento total corporal', 1),
(10, 'Cardio Dance', 3, 'Baile para cardio', 1),
(11, 'Judo', 3, 'Clase de judo para principiantes', 0),
(12, 'Taekwondo', 2, 'Taekwondo para todos los niveles', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Clientes`
--

CREATE TABLE `Clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `IBAN` varchar(30) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Clientes`
--

INSERT INTO `Clientes` (`id_cliente`, `nombre`, `apellido1`, `apellido2`, `IBAN`, `mail`, `telefono`, `estado`) VALUES
(24, 'Juan', 'Real', 'López', 'ES8011797674564484104052', 'juan.perez@email.com', '600111222', 0),
(25, 'Anna', 'García', 'Fernández', 'ES8823361268043655689357', 'ana.garcia@email.com', '600333444', 0),
(26, 'Carlos', 'Martínez', 'Gómez', 'ES9367829077082881698714', 'carlos.martinez@email.com', '600555666', 0),
(27, 'Laura', 'Sánchez', 'Ruiz', 'ES7236306499431557358564', 'laura.sanchez@email.com', '600777888', 0),
(28, 'Pedro', 'Díaz', 'Morales', 'ES5807462532893789651728', 'pedro.diaz@email.com', '600999000', 0),
(29, 'Marta', 'Romero', 'Navarro', 'ES2728194090794761586849', 'marta.romero@email.com', '601111222', 0),
(30, 'Luis', 'Torres', 'Vega', 'ES0450681446272439616458', 'luis.torres@email.com', '601333444', 1),
(31, 'Sofía', 'Ramírez', 'Cruz', 'ES8055566282742863798375', 'sofia.ramirez@email.com', '601555666', 1),
(32, 'Diego', 'Hernández', 'Ortiz', 'ES3919341374022616798736', 'diego.hernandez@email.com', '601777888', 0),
(33, 'Lucía', 'Moreno', 'Iglesias', 'ES3870344873779186810777', 'lucia.moreno@email.com', '601999000', 1),
(35, 'Alberto', 'Santos', 'Pérez', 'ES8033461610162766878800', 'alberto.santos@email.com', '602111222', 1),
(36, 'Isabel', 'Vargas', 'López', 'ES2606321097504000548274', 'isabel.vargas@email.com', '602333444', 1),
(37, 'Fernando', 'Castillo', 'Ramírez', 'ES9288120482002812363125', 'fernando.castillo@email.com', '602555666', 1),
(38, 'Elena', 'Ríos', 'Gómez', 'ES1592401233782324439359', 'elena.rios@email.com', '602777888', 1),
(39, 'Ricardo', 'Molina', 'Fernández', 'ES5741779672015844283530', 'ricardo.molina@email.com', '602999000', 1),
(40, 'Paula', 'Alonso', 'Sánchez', 'ES2066004732411802076983', 'paula.alonso@email.com', '603111222', 1),
(41, 'Sergio', 'Navarro', 'Díaz', 'ES9726857285974643597764', 'sergio.navarro@email.com', '603333444', 1),
(42, 'Marina', 'Cruz', 'Morales', 'ES3793423574309775194201', 'marina.cruz@email.com', '603555666', 1),
(43, 'Javier', 'Herrera', 'Romero', 'ES2832031205765913670828', 'javier.herrera@email.com', '603777888', 1),
(44, 'Natalia', 'Ortiz', 'Vega', 'ES1955410494653629750326', 'natalia.ortiz@email.com', '603999000', 1),
(45, 'David', 'Gómez', 'Cruz', 'ES1914368090441220353601', 'david.gomez@email.com', '604111222', 1),
(46, 'Cristina', 'Pardo', 'Fernández', 'ES1138854091321967171793', 'cristina.pardo@email.com', '604333444', 1),
(47, 'Manuel', 'Gil', 'Ruiz', 'ES5933262143698125051554', 'manuel.gil@email.com', '604555666', 1),
(48, 'Verónica', 'Medina', 'Moreno', 'ES7634003435024267391625', 'veronica.medina@email.com', '604777888', 1),
(49, 'Pablo', 'Serrano', 'Iglesias', 'ES0425423126863035174506', 'pablo.serrano@email.com', '604999000', 1),
(50, 'Laura', 'Marín', 'Ramos', 'ES0347154356237927967772', 'laura.marin@email.com', '605111222', 1),
(51, 'José', 'Domínguez', 'López', 'ES6725430134069458872238', 'jose.dominguez@email.com', '605333444', 1),
(52, 'Andrea', 'Cabrera', 'Martínez', 'ES9453672620493441479039', 'andrea.cabrera@email.com', '605555666', 1),
(53, 'Raúl', 'Santos', 'Pérez', 'ES6444546773624778960112', 'raul.santos@email.com', '605777888', 0),
(54, 'Clara', 'Méndez', 'Vega', 'ES4590595853728349620774', 'clara.mendez@email.com', '605999000', 1),
(55, 'Antonio', 'Fuentes', 'Navarro', 'ES8189148215529277988822', 'antonio.fuentes@email.com', '606111222', 1),
(56, 'Patricia', 'Román', 'Hernández', 'ES0349717743693384096966', 'patricia.roman@email.com', '606333444', 1),
(57, 'Miguel', 'Castro', 'Ortiz', 'ES8241474237615003309762', 'miguel.castro@email.com', '606555666', 1),
(58, 'Sonia', 'Vega', 'Ramos', 'ES9800862794323258979141', 'sonia.vega@email.com', '606777888', 1),
(59, 'Adrián', 'Blanco', 'Gil', 'ES6663769263852227820061', 'adrian.blanco@email.com', '606999000', 1),
(60, 'Raquel', 'Mora', 'Serrano', 'ES6316294092316147336318', 'raquel.mora@email.com', '607111222', 1),
(61, 'Héctor', 'Campos', 'Pardo', 'ES1160409413688870998172', 'hector.campos@email.com', '607333444', 1),
(62, 'Natalie', 'Vidal', 'Gómez', 'ES0968531768798330685808', 'natalie.vidal@email.com', '607555666', 1),
(63, 'Iván', 'Luna', 'Morales', 'ES9125992047559243139523', 'ivan.luna@email.com', '607777888', 0),
(64, 'Sandra', 'Ramos', 'Cruz', 'ES5450542607154782667977', 'sandra.ramos@email.com', '607999000', 1),
(65, 'Diego', 'Reyes', 'Molina', 'ES4335455431932865488133', 'diego.reyes@email.com', '608111222', 1),
(66, 'Mónica', 'Pérez', 'Sánchez', 'ES1249742824419791561992', 'monica.perez@email.com', '608333444', 1),
(67, 'Francisco', 'Ortiz', 'López', 'ES4128131786412439589564', 'francisco.ortiz@email.com', '608555666', 1),
(68, 'Lorena', 'Vega', 'Fernández', 'ES9541498119084819286747', 'lorena.vega@email.com', '608777888', 1),
(69, 'Alfonso', 'Cano', 'Navarro', 'ES2898432913928395034783', 'alfonso.cano@email.com', '608999000', 1),
(70, 'Julia', 'Guerrero', 'Gómez', 'ES2162128056105960204800', 'julia.guerrero@email.com', '609111222', 1),
(71, 'Raúl', 'Pérez', 'Ruiz', 'ES3731546369469791431578', 'raul.perez@email.com', '609333444', 1),
(72, 'Teresa', 'Santos', 'López', 'ES3573581700509158168432', 'teresa.santos@email.com', '609555666', 1),
(73, 'Gonzalo', 'Vargas', 'Fernández', 'ES6650312950866993587667', 'gonzalo.vargas@email.com', '609777888', 0),
(74, 'Inés', 'Martínez', 'Romero', 'ES6135392773351828198646', 'ines.martinez@email.com', '609999000', 1),
(75, 'Mario', 'López', 'Morales', 'ES9614947988873656186468', 'mario.lopez@email.com', '610111222', 1),
(76, 'Cecilia', 'Fernández', 'Navarro', 'ES1848133792342304976731', 'cecilia.fernandez@email.com', '610333444', 1),
(77, 'Tomás', 'Hernández', 'Cruz', 'ES8429843701824838543638', 'tomas.hernandez@email.com', '610555666', 1),
(78, 'Olga', 'Sánchez', 'Vega', 'ES1390097523383202404312', 'olga.sanchez@email.com', '610777888', 1),
(79, 'Iván', 'Moreno', 'Ramírez', 'ES2825078529215935786243', 'ivan.moreno@email.com', '610999000', 1),
(80, 'Claudia', 'Romero', 'Gómez', 'ES0472295769679285754935', 'claudia.romero@email.com', '611111222', 1),
(81, 'Jorge', 'Torres', 'López', 'ES8224633834938124595689', 'jorge.torres@email.com', '611333444', 1),
(82, 'Verónica', 'Molina', 'Fernández', 'ES1286148329887567710438', 'veronica.molina@email.com', '611555666', 1),
(83, 'Andrés', 'González', 'Navarro', 'ES7350297513233429516767', 'andres.gonzalez@email.com', '611777888', 1),
(84, 'Natalia', 'López', 'Ramírez', 'ES4634438788891377883462', 'natalia.lopez@email.com', '611999000', 1),
(85, 'Raúl', 'Hernández', 'Serrano', 'ES6452436902223289058763', 'raul.hernandez@email.com', '612111222', 1),
(86, 'Sandra', 'Gómez', 'Pérez', 'ES5057157656349740832876', 'sandra.gomez@email.com', '612333444', 1),
(87, 'Luis', 'Vega', 'Martínez', 'ES3693963673918803338361', 'luis.vega@email.com', '612555666', 1),
(88, 'Carla', 'Navarro', 'Ruiz', 'ES5932494939705317162025', 'carla.navarro@email.com', '612777888', 1),
(89, 'Diego', 'Cabrera', 'Gómez', 'ES5282889359825461337498', 'diego.cabrera@email.com', '612999000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Instructores`
--

CREATE TABLE `Instructores` (
  `id_inst` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `DNI` varchar(20) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Instructores`
--

INSERT INTO `Instructores` (`id_inst`, `nombre`, `apellido1`, `apellido2`, `telefono`, `DNI`, `estado`) VALUES
(1, 'Ana', 'Pérez', 'García', '612345678', '12345678Z', '1'),
(2, 'Carlos', 'Díaz', 'López', '698765432', '87654321Z', '0'),
(3, 'Lucía', 'Martínez', 'Hernández', '600123456', '23456789M', '0'),
(4, 'Javier', 'Gómez', 'Santos', '601234567', '34567890X', '1'),
(5, 'María', 'Ruiz', 'Fernández', '602345678', '45678901F', '1'),
(6, 'David', 'Sánchez', 'Moreno', '603456789', '56789012R', '1'),
(7, 'Laura', 'Torres', 'Vega', '604567890', '67890123B', '0'),
(8, 'Pablo', 'Ramírez', 'Castillo', '605678901', '78901234G', '0'),
(9, 'Sara', 'Jiménez', 'Blanco', '606789012', '89012345K', '1'),
(10, 'Miguel', 'Cruz', 'Ortiz', '607890123', '90123456S', '1'),
(11, 'Jose ', 'Peña', 'Salazar', '645123450', '67676787L', '1'),
(12, 'Nico', 'Alvarezs', 'Alcaraz', '645334455', '44537388R', '1'),
(40, 'Robert', 'Palancuela', 'Ibuñez', '645812201', '83157370L', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Planificaciones`
--

CREATE TABLE `Planificaciones` (
  `id_planificacion` int(11) NOT NULL,
  `dia` varchar(20) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `fk_id_clase` int(11) DEFAULT NULL,
  `fk_id_inst` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Planificaciones`
--

INSERT INTO `Planificaciones` (`id_planificacion`, `dia`, `hora_inicio`, `hora_fin`, `fk_id_clase`, `fk_id_inst`, `estado`) VALUES
(12, 'Lunes', '16:00:00', '17:00:00', 6, 6, 1),
(14, 'Martes', '09:30:00', '10:45:00', 3, 5, 1),
(15, 'Martes', '12:00:00', '13:00:00', 4, 9, 1),
(16, 'Martes', '16:30:00', '17:30:00', 7, 10, 1),
(17, 'Martes', '18:30:00', '19:00:00', 8, 12, 1),
(18, 'Miércoles', '09:00:00', '10:30:00', 5, 10, 1),
(19, 'Miércoles', '12:00:00', '13:00:00', 1, 1, 1),
(20, 'Miércoles', '16:00:00', '17:00:00', 3, 5, 1),
(21, 'Miércoles', '19:30:00', '20:45:00', 6, 6, 1),
(22, 'Jueves', '09:45:00', '10:30:00', 10, 1, 1),
(23, 'Jueves', '12:00:00', '13:15:00', 9, 11, 1),
(24, 'Jueves', '17:00:00', '18:15:00', 2, 4, 1),
(25, 'Jueves', '19:45:00', '21:00:00', 4, 9, 1),
(26, 'Viernes', '09:00:00', '10:00:00', 7, 10, 1),
(27, 'Viernes', '11:00:00', '11:45:00', 8, 12, 1),
(28, 'Viernes', '16:00:00', '17:30:00', 5, 5, 1),
(38, 'Viernes', '08:00:00', '09:00:00', 4, 8, 1),
(39, 'Viernes', '15:00:00', '16:00:00', 2, 3, 1),
(42, 'Lunes', '11:00:00', '12:00:00', 2, 3, 1),
(50, 'Lunes', '09:00:00', '10:00:00', 1, 2, 1),
(55, 'Lunes', '08:00:00', '09:00:00', 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Reservas`
--

CREATE TABLE `Reservas` (
  `id_reserva` int(11) NOT NULL,
  `fk_id_planificacion` int(11) DEFAULT NULL,
  `fk_id_cliente` int(11) DEFAULT NULL,
  `fecha_reserva` date DEFAULT curdate(),
  `estado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Reservas`
--

INSERT INTO `Reservas` (`id_reserva`, `fk_id_planificacion`, `fk_id_cliente`, `fecha_reserva`, `estado`) VALUES
(30, 27, 69, '2025-10-24', -1),
(31, 25, 37, '2025-10-30', -1),
(32, 28, 52, '2025-10-30', -1),
(34, 27, 40, '2025-10-31', -1),
(40, 42, 40, '2025-10-31', -1),
(41, 42, 59, '2025-10-31', -1),
(42, 42, 89, '2025-10-31', -1),
(43, 14, 59, '2025-11-06', -1),
(44, 14, 40, '2025-11-06', -1),
(45, 14, 59, '2025-11-06', -1),
(46, 24, 40, '2025-11-06', -1),
(47, 24, 59, '2025-11-06', -1),
(48, 25, 69, '2025-11-06', -1),
(52, 39, 40, '2025-11-07', 0),
(53, 39, 59, '2025-11-07', 0),
(54, 39, 59, '2025-11-07', -1),
(55, 39, 89, '2025-11-07', -1),
(56, 39, 61, '2025-11-07', -1),
(57, 24, 40, '2025-11-13', -1),
(58, 24, 59, '2025-11-13', -1),
(59, 24, 89, '2025-11-13', -1),
(60, 39, 40, '2025-11-14', -1),
(61, 28, 40, '2025-11-14', -1),
(62, 38, 59, '2025-11-14', -1),
(63, 28, 57, '2025-11-14', -1),
(64, 39, 51, '2025-11-14', -1),
(65, 50, 40, '2025-11-14', 0),
(66, 50, 40, '2025-11-14', 0),
(67, 50, 40, '2025-11-14', 0),
(68, 50, 40, '2025-11-14', 0),
(69, 50, 40, '2025-11-14', 0),
(70, 50, 40, '2025-11-14', 0),
(71, 50, 40, '2025-11-14', 0),
(72, 50, 59, '2025-11-14', 0),
(73, 50, 40, '2025-11-14', 0),
(74, 50, 59, '2025-11-14', 0),
(75, 26, 40, '2025-11-14', 0),
(76, 26, 37, '2025-11-14', 0),
(77, 26, 89, '2025-11-14', 0),
(78, 26, 40, '2025-11-14', -1),
(79, 28, 52, '2025-11-14', -1),
(80, 42, 40, '2025-11-14', 0),
(81, 27, 40, '2025-11-14', -1),
(82, 26, 40, '2025-11-14', -1),
(83, 26, 59, '2025-11-14', -1),
(84, 27, 40, '2025-11-14', -1),
(85, 27, 40, '2025-11-14', -1),
(86, 28, 40, '2025-11-14', -1),
(87, 27, 40, '2025-11-14', -1),
(88, 39, 40, '2025-11-14', -1),
(89, 39, 40, '2025-11-14', -1),
(90, 39, 59, '2025-11-14', -1),
(91, 39, 89, '2025-11-14', -1),
(92, 38, 61, '2025-11-14', -1),
(93, 24, 40, '2025-11-20', -1),
(94, 24, 59, '2025-11-20', -1),
(95, 24, 89, '2025-11-20', 0),
(96, 39, 40, '2025-11-21', -1),
(97, 38, 40, '2025-11-21', -1),
(98, 28, 40, '2025-11-21', -1),
(99, 39, 59, '2025-11-21', -1),
(100, 26, 40, '2025-11-28', -1),
(101, 28, 52, '2025-11-28', -1),
(102, 26, 57, '2025-11-28', -1),
(103, 27, 89, '2025-11-28', -1),
(104, 27, 37, '2025-11-28', -1),
(105, 38, 70, '2025-11-28', -1),
(106, 38, 52, '2025-11-28', -1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Administradores`
--
ALTER TABLE `Administradores`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indexes for table `Clases`
--
ALTER TABLE `Clases`
  ADD PRIMARY KEY (`id_clase`);

--
-- Indexes for table `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indexes for table `Instructores`
--
ALTER TABLE `Instructores`
  ADD PRIMARY KEY (`id_inst`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indexes for table `Planificaciones`
--
ALTER TABLE `Planificaciones`
  ADD PRIMARY KEY (`id_planificacion`),
  ADD KEY `fk_id_clase` (`fk_id_clase`),
  ADD KEY `fk_id_inst` (`fk_id_inst`);

--
-- Indexes for table `Reservas`
--
ALTER TABLE `Reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `fk_id_cliente` (`fk_id_cliente`),
  ADD KEY `Reservas_ibfk_3` (`fk_id_planificacion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Administradores`
--
ALTER TABLE `Administradores`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Clases`
--
ALTER TABLE `Clases`
  MODIFY `id_clase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `Instructores`
--
ALTER TABLE `Instructores`
  MODIFY `id_inst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Planificaciones`
--
ALTER TABLE `Planificaciones`
  MODIFY `id_planificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `Reservas`
--
ALTER TABLE `Reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Planificaciones`
--
ALTER TABLE `Planificaciones`
  ADD CONSTRAINT `Planificaciones_ibfk_1` FOREIGN KEY (`fk_id_clase`) REFERENCES `Clases` (`id_clase`) ON DELETE CASCADE,
  ADD CONSTRAINT `Planificaciones_ibfk_2` FOREIGN KEY (`fk_id_inst`) REFERENCES `Instructores` (`id_inst`) ON DELETE CASCADE;

--
-- Constraints for table `Reservas`
--
ALTER TABLE `Reservas`
  ADD CONSTRAINT `Reservas_ibfk_2` FOREIGN KEY (`fk_id_cliente`) REFERENCES `Clientes` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `Reservas_ibfk_3` FOREIGN KEY (`fk_id_planificacion`) REFERENCES `Planificaciones` (`id_planificacion`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
