-- phpMyAdmin SQL Dump
-- version 5.2.1
-- httpswww.phpmyadmin.net
--
-- Servidor 127.0.0.1
-- Tiempo de generación 19-06-2023 a las 094849
-- Versión del servidor 10.4.28-MariaDB
-- Versión de PHP 8.2.4

SET SQL_MODE = NO_AUTO_VALUE_ON_ZERO;
START TRANSACTION;
SET time_zone = +0000;


!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT ;
!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS ;
!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION ;
!40101 SET NAMES utf8mb4 ;

--
-- Base de datos `user`
--
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `nombre_equipo` varchar(50) DEFAULT NULL,
  `deporte` varchar(50) DEFAULT NULL,
  `cant_jugadores` varchar(50) DEFAULT NULL,
  `club` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre_equipo`, `deporte`, `cant_jugadores`, `club`) VALUES
(1, 'Las Brótolas', fútbol, 12, 'Regatas'),
(2, 'Pelolais', fútbol, 11, 'Andino'),
(3, 'Pikachu', fútbol, 15, 'Polideportivo Las Heras'),
(4, 'Doping positivo', fútbol, 11, 'Regatas'),
(5, 'Jockey club', fútbol, 12, 'Jockey club'),
(6, 'Viamonte team', fútbol, 13, 'Banco Mendoza'),
(7, 'Pulenta team', fútbol, 11, 'Vistalba'),
(8, 'Manso equipo', fútbol, 11, 'UNCuyo'),
(9, 'Tinitas', fútbol, 12, 'Regatas'),
(10, 'Capibaras', fútbol, 11, 'Regatas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `apellido`, `dni`, `direccion`, `email`, `password`, `telefono`) VALUES
(1, 'Juana', 'Herrera', '38207789', 'Capilla del Rosario 1965', 'juanita@gmail.com', '123456789', '2616633333'),
(2, 'Fernanda', 'Pampa', '32688619', 'Av. España 123', 'fer_pampa@gmail.com', 'ABCDEGHJ', '2666534333'),
(3, 'Agostina', 'Garcia', '36756393', 'Portugal 4856', 'agostina_garcia@gmail.com', '987654321', '0116533443'),
(4, 'Vicoria', 'Todelo', '35621987', 'Colombia 365', 'vicky@gmail.com', 'ABCDEFGHI', '2614633643'),
(5, 'Alejandra', 'Torres', '38164325', 'Sobremonte 125', 'alexa_torres@gmail.com', 'usnbthygAJTB', '2615634483'),
(6, 'Paula', 'Roldán', '38963458', 'San Martín 756', 'pau_roldan@gmail.com', 'lsutnaujHGSK', '2616334383'),
(7, 'Luciana', 'Gómez', '38741841', 'Córdoba 452', 'luciana_gomez@gmail.com', 'OSJTajnbtuj', '2616623453'),
(8, 'Yanina', 'Latorre', '37531894', 'Buenos Aires 488', 'yanina_latorre@gmail.com', 'JKSJajusnbtu', '2616638543'),
(9, 'Laura', 'Pérez', '39456225', 'San Luis 785', 'lali_perez@gmail.com', 'LYTLSnskien', '0118435343'),
(10, 'Florencia', 'Moreno', '41785214', 'Bandera de los Andes 864', 'flor_mora@gmail.com', 'NTNSoatyyt', '2626534763');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT ;
!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS ;
!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION ;