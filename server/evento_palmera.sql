-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-08-2018 a las 09:27:05
-- Versión del servidor: 5.6.39-cll-lve
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evento_palmera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE `cuestionario` (
  `id` int(255) NOT NULL,
  `id_evento` int(255) NOT NULL,
  `pregunta` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`id`, `id_evento`, `pregunta`, `tipo`) VALUES
(67, 3, 'QWERTY', 'simple'),
(66, 1, 'pregunta de prueba', 'libre'),
(65, 6, 'Pregunta 1', 'simple'),
(64, 1, 'Pregunta 1', 'multi'),
(57, 1, 'Pregunta 1', 'simple'),
(60, 1, 'Pregunta 2', 'multi'),
(59, 1, 'Pregunta 3', 'libre'),
(61, 2, 'Pregunta de prueba', 'simple'),
(62, 2, 'Pregunta de prueba 2', 'multi'),
(63, 2, 'Pregunta de prueba 3', 'libre'),
(69, 15, 'Color del logo PALM ERA', 'simple'),
(70, 15, 'Seleccione las opciones que le de mas satisfaccion', 'multi'),
(71, 15, 'Explique como se siente hoy', 'libre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_participante`
--

CREATE TABLE `evento_participante` (
  `id` int(255) NOT NULL,
  `id_evento` int(255) NOT NULL,
  `id_participante` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento_participante`
--

INSERT INTO `evento_participante` (`id`, `id_evento`, `id_participante`) VALUES
(3, 3, 3),
(5, 3, 8),
(6, 1, 1),
(7, 2, 3),
(8, 1, 8),
(9, 1, 6),
(10, 2, 4),
(11, 2, 2),
(12, 2, 1),
(13, 1, 9),
(14, 1, 10),
(15, 1, 0),
(16, 1, 12),
(17, 2, 14),
(18, 2, 15),
(19, 2, 16),
(27, 15, 38),
(28, 15, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_usuario`
--

CREATE TABLE `evento_usuario` (
  `id` int(255) NOT NULL,
  `fk_usuario` int(255) NOT NULL,
  `fk_evento` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento_usuario`
--

INSERT INTO `evento_usuario` (`id`, `fk_usuario`, `fk_evento`) VALUES
(1, 25, 6),
(2, 25, 13),
(3, 25, 16),
(4, 22, 10),
(5, 22, 5),
(6, 25, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_evento`
--

CREATE TABLE `lista_evento` (
  `id` int(255) NOT NULL,
  `nombre` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `estatus` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lista_evento`
--

INSERT INTO `lista_evento` (`id`, `nombre`, `fecha`, `direccion`, `estatus`) VALUES
(1, 'evento1', '2017-11-08', 'direccionaa', 1),
(2, 'evento2', '2017-11-22', 'direccion2', 1),
(3, 'evento3', '2017-11-15', 'direccion3', 1),
(4, 'evento4', '2017-11-30', 'la direccion', 1),
(5, 'evento5', '2017-11-29', 'En Los Teques', 1),
(6, 'evento6', '2017-12-14', 'En Caracas', 0),
(7, 'evento7', '2017-12-27', 'En Valencia', 0),
(8, 'evento8', '2017-12-29', 'Aragua', 0),
(9, 'evento9', '2017-12-29', 'San Homero', 0),
(10, 'evento9', '2017-12-31', 'San Homero', 0),
(11, 'evento7', '2017-12-25', 'Aragua', 0),
(12, 'evento7', '2017-12-31', 'Aragua', 0),
(13, 'evento7', '2017-12-31', 'Aragua', 0),
(14, 'ddd', '2017-12-19', 'qeeee', 0),
(15, 'Evento de Prueba con Check In', '2018-08-10', 'Caracas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `id` int(255) NOT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `estatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`id`, `email`, `nombre`, `apellido`, `direccion`, `telefono`, `estatus`) VALUES
(1, 'yleal@palmeramarketing.com', 'Yanuel', 'Leal', 'Caracas', '02123216202', 1),
(2, 'correo', 'nombre', 'apellido', 'direccion', '12345', 1),
(3, 'yanueltex@gmail.com', 'Alejandro', 'Tortoza', 'Los Teques', '04166228987', 1),
(4, 'yanueltex2@gmail.com', 'Alejandro', 'Tortoza', 'Los Teques', '04166228987', 1),
(6, 'yanueltex3@gmail.com', 'Alejandro', 'Tortoza', 'Los Teques', '04166228987', 1),
(7, 'yanueltex4@gmail.com', 'Alejandro2', 'Tortoza2', 'Los Teques2', '04166228982', 1),
(8, 'yanueltexsd@gmail.com', 'Alejandro', 'Tortoza', 'Los Teques2', '04166228982', 1),
(9, 'prueba@prueba.com', 'Prueba', 'Prueba', 'Prueba', 'Prueba', 1),
(10, 'prueba2@prueba.com', 'Yanuel P2', 'Leal P2', 'Los Teques', '0416622898777', 1),
(12, 'prueba3@prueba.com', 'Prueba3', 'Prueba3', 'Prueba3', 'Prueba3', 1),
(14, 'yanuetex@hotmail.com', 'Yanueltex', 'Lealtex', 'Los Tequex', '02123216202', 1),
(15, 'yanuel@palmera.marketing', 'palm', 'era', 'Caracas', '12345698', 1),
(16, 'palmera@palmera.marketing', 'palmera', 'marketing', 'caracas', '123456983', 1),
(20, 'prueba@esprueba.com', 'Yanuel Prueba', 'Leal', 'Los Teques', '0416622898777', 1),
(38, 'Prueba1@prueba1.com', 'Yanuel P1', 'Leal P1', 'los teques', '3234234234234', 1),
(40, 'Prueba2@prueba1.com', 'Yanuel P2', 'Leal P2', 'Los Teques', '04126515', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(255) NOT NULL,
  `id_pregunta` int(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `id_pregunta`, `descripcion`) VALUES
(51, 62, 'La opcion 4'),
(50, 62, 'La opcion 3'),
(49, 62, 'La opcion 2'),
(48, 62, 'La opcion 1'),
(47, 61, 'Opcion2'),
(46, 61, 'Opcion1'),
(42, 59, 'textarea'),
(45, 60, 'opc 3'),
(44, 60, 'opc 2'),
(43, 60, 'opc 1'),
(38, 57, 'Opcion3'),
(37, 57, 'Opcion2'),
(36, 57, 'Opcion1'),
(52, 63, 'textarea'),
(53, 64, '1'),
(54, 64, '2'),
(55, 64, '3'),
(56, 64, '4'),
(57, 65, '1'),
(58, 65, '2'),
(59, 66, 'Respuesta Libre'),
(60, 67, '11'),
(61, 67, '22'),
(65, 69, 'Verde'),
(66, 69, 'Azul'),
(67, 69, 'Amarillo'),
(68, 69, 'Rojo'),
(69, 70, 'Carro'),
(70, 70, 'Dinero'),
(71, 70, 'Casa'),
(72, 70, 'Vacaciones'),
(73, 71, 'Respuesta Libre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_evento`
--

CREATE TABLE `respuesta_evento` (
  `id` int(255) NOT NULL,
  `id_participante` int(255) NOT NULL,
  `id_respuesta` int(255) NOT NULL,
  `respuesta_libre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuesta_evento`
--

INSERT INTO `respuesta_evento` (`id`, `id_participante`, `id_respuesta`, `respuesta_libre`) VALUES
(1, 1, 46, NULL),
(2, 1, 48, NULL),
(3, 1, 52, 'Esto es una prueba usuario 1'),
(4, 2, 47, NULL),
(5, 2, 49, NULL),
(6, 2, 52, 'Esto es una prueba usuario 2'),
(7, 3, 46, NULL),
(8, 3, 50, NULL),
(9, 3, 52, 'Prueba de usuario 4'),
(10, 4, 47, NULL),
(11, 4, 51, NULL),
(12, 4, 52, 'Esto es una prueba usuario 4'),
(13, 1, 49, NULL),
(14, 1, 50, NULL),
(15, 1, 51, NULL),
(16, 4, 36, ''),
(17, 4, 42, 'Soy una respuesta libre'),
(18, 1, 45, ''),
(19, 1, 42, 'Soy otra respuesta libre'),
(20, 9, 42, 'Esto es una respuesta de prueba 1'),
(21, 9, 38, ''),
(22, 10, 42, 'Esto es una respuesta de prueba 2'),
(23, 10, 45, ''),
(24, 0, 42, 'Esto es una respuesta de prueba 1'),
(25, 0, 38, ''),
(26, 12, 42, 'Esto es una respuesta de prueba 2'),
(27, 12, 45, ''),
(28, 3, 3, ''),
(29, 3, 51, ''),
(30, 3, 50, ''),
(31, 3, 47, ''),
(32, 3, 52, 'asdsadsad'),
(33, 14, 50, ''),
(34, 14, 49, ''),
(35, 14, 46, ''),
(36, 14, 52, 'Esto es una Respuesta de Prueba'),
(37, 15, 50, ''),
(38, 15, 49, ''),
(39, 15, 46, ''),
(40, 15, 52, 'Esto es una respuesta de pruebaaaaaaaaa'),
(41, 16, 51, ''),
(42, 16, 50, ''),
(43, 16, 49, ''),
(44, 16, 48, ''),
(45, 16, 47, ''),
(46, 16, 52, 'Esto es una respuesta PALMERA'),
(47, 38, 67, ''),
(48, 38, 69, ''),
(49, 38, 72, ''),
(50, 38, 73, 'Me siento muy bien');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` char(64) NOT NULL,
  `estatus` int(1) NOT NULL,
  `logeado` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `password`, `tipo`, `estatus`, `logeado`) VALUES
(1, 'Correo', 'Usuario', 'contrasena', 'admin', 1, 0),
(2, 'Correo2', 'Usuario1', 'contrasena2', 'admin', 1, 0),
(3, 'Correo3', 'Usuario2', 'contrasena3', 'admin', 1, 0),
(4, 'correo4', 'usaurio3', 'password4', 'admin', 1, 0),
(5, 'correo5', 'adsad', 'adaewaeqda', 'admin', 1, 0),
(6, 'correo6', '1ewadasd', 'Zxsdasd', 'admin', 0, 0),
(7, 'correo7', 'eqe123', 'asda234234', 'admin', 1, 0),
(8, 'user1@gmail.com', 'user1', '', 'admin', 0, 0),
(9, 'sadasd', 'asda', 'asdasdasd', 'admin', 1, 0),
(20, 'yanueltex@gmail.com', 'yanuel', '91ca596b9120a322ceec7aa2e31feaa0', 'superadmin', 1, 1),
(21, 'dariana@palmera.marketing', 'dariana', 'e10adc3949ba59abbe56e057f20f883e', 'superadmin', 1, 1),
(22, 'maria@gmail.com', 'maria', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 1, 0),
(23, 'jose@gmail.com', 'jose', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', 1, 0),
(24, 'pedro@gmail.com', 'pedro', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', 1, 0),
(25, 'dgarcia@palmera.marketing', 'dgarcia', '6c44e5cd17f0019c64b042e4a745412a', 'admin', 1, 0),
(26, 'luis@hmail.com', 'luis', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 1, 0),
(27, 'sss@palmera.marketing', 'ssss', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evento_participante`
--
ALTER TABLE `evento_participante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evento_usuario`
--
ALTER TABLE `evento_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lista_evento`
--
ALTER TABLE `lista_evento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unique` (`email`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuesta_evento`
--
ALTER TABLE `respuesta_evento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `evento_participante`
--
ALTER TABLE `evento_participante`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `evento_usuario`
--
ALTER TABLE `evento_usuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lista_evento`
--
ALTER TABLE `lista_evento`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `respuesta_evento`
--
ALTER TABLE `respuesta_evento`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
