-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2019 a las 16:07:45
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evento_v2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `id` int(255) NOT NULL,
  `id_evento` int(255) NOT NULL,
  `nombre_certificado` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `data_html` mediumtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `certificado`
--

INSERT INTO `certificado` (`id`, `id_evento`, `nombre_certificado`, `data_html`) VALUES
(7, 4, 'Certificado Menarini', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n</head>\r\n<body style=\"font-family: Helvetica; margin: 0px;\">\r\n	<div class=\"container-fluid\">\r\n		<div >\r\n			<img src=\"http://palmera.marketing/eventos/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 12pt; text-align: center;\">Se otorga el siguiente certificado de asistencia a</p>	\r\n		</div>\r\n		<div>\r\n			<table width=\"60%\"  cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<p style=\"font-size: 20pt; font-style: italic; font-weight: bold;\">@name</p>\r\n						<hr style=\"border-top: 2px solid black;\" width=\"100%\"/>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 14pt; margin-top: 10px; text-align: center;\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n		</div>	\r\n		<div>\r\n			<table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\" valign=\"bottom\" style=\"height: 120px;\">\r\n						<img src=\"http://palmera.marketing/eventos/check-in_system/assets/images/las_firmas.jpg\" alt=\"\">\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>');

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
(1, 2, '1.-Indique su lugar preferido para vacacionar', 'simple'),
(2, 2, '2.-Seleccione preferencia alimenticia durante las maÃ±anas', 'multi'),
(3, 2, '3.-Describa su dÃ­a perfecto', 'libre'),
(4, 2, '4.-Indique la cantidad de vacaciones que ha tomado los ultimos 5 aÃ±os', 'simple'),
(6, 4, '1.- Indique el parque de su preferencia', 'simple'),
(7, 4, '2.-Seleccione su marca de automovil de su preferencia ', 'multi'),
(8, 4, '3.- Describa su dÃ­a perfecto', 'libre'),
(9, 4, '4.- Indique su estilo de vestimenta favorito', 'simple'),
(10, 4, '5.- Seleccione su tipo de libros favoritos', 'multi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `text_label` varchar(100) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 4, 6),
(7, 4, 7),
(8, 4, 8),
(9, 4, 9);

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
(1, 2, 1),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4),
(5, 12, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_registro`
--

CREATE TABLE `landing_registro` (
  `id` int(255) NOT NULL,
  `id_evento` int(255) NOT NULL,
  `nombre_landing` varchar(255) NOT NULL,
  `data_html` longtext NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `estatus` varchar(20) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_evento`
--

CREATE TABLE `lista_evento` (
  `id` int(255) NOT NULL,
  `nombre` varchar(128) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `estatus` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lista_evento`
--

INSERT INTO `lista_evento` (`id`, `nombre`, `fecha`, `direccion`, `hash`, `estatus`) VALUES
(1, 'Show Room de DiseÃ±o', '2018-10-12', 'Hotel Pestana', 'f305fb17', 0),
(2, 'Show Room del DiseÃ±o', '2018-10-13', 'Hotel Pestana', '53ddbbd1', 0),
(3, 'prueba de evento', '2018-09-15', 'adasdasd', 'ed4647be', 0),
(4, 'Taller de OdontologÃ­a Infantil ', '2018-10-22', 'Hotel Marriot CCS', '78e93bb1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_1` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_2` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `especialidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `colegiado` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `asistencia` varchar(70) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Sin asistencia',
  `estatus` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`id`, `nombre`, `apellido_1`, `apellido_2`, `especialidad`, `colegiado`, `celular`, `email`, `ciudad`, `pais`, `direccion`, `telefono`, `asistencia`, `estatus`) VALUES
(1, 'weqweq', 'asasd', '', '', '', '', 'sasw@sdsd.com', '', '', 'weqwwqweqwe', '24124124', 'Sin asistencia', 1),
(2, 'wewqeq', 'asasd', '', '', '', '', 'wqwq@dssdfsd.com', '', '', 'sadasdsdas', '24124124', 'Sin asistencia', 0),
(3, 'Oswaldo', 'Guerrero', 'mendez', 'OdontologÃ­a', '040918', '04165201487', 'danielmolina956@yahoo.es', 'Bogota', 'Colombia', 'La Candelaria', '04128521487', 'Con asistencia', 1),
(4, 'Daniela', 'Guerrero', 'Tortoza', 'Odontologia ', '041018', '04129636584', 'danielmolina956@gmail.com', 'Bogota', 'Colombia', 'La Candelaria', '04126524187', 'Con asistencia', 0),
(5, 'Yanuel', 'Leal', 'Tortoza', 'Programacion', '20746625', '04166228987', 'yanueltex@gmail.com', 'Los teques', 'Venezuela', 'Los Teques', '3234234234234', 'Con asistencia', 1),
(6, 'Yanuel', 'Leal', 'Tortoza', 'Programacion', '20746625', '04166228987', 'yanueltex@gmail.com', 'Caracas', 'Venezuela', 'Los Teques', '02123216202', 'Con asistencia', 1),
(7, 'Elba', 'Mendez ', 'Guerrero', 'OftalmologÃ­a', '052818', '04129634574', 'mileydi@palmera.marketing', 'Bogota', 'Colombia', 'La Candelaria', '02128524178', 'Con asistencia', 1),
(8, 'Gladys', 'Mendez', 'Guerrero', 'CardiologÃ­a', '053218', '04128527841', 'daniel@palmera.marketing', 'Bogota', 'Colombia', 'La Candelaria', '02129636578', 'Con asistencia', 1),
(9, 'Yanuel', 'Leal', 'Tortoza', 'Programador', '123', '20746625', 'yanuel@palmera.marketing', 'Caracas', 'Venezuela', 'Los Teques', '04166228987', 'Con asistencia', 1);

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
(1, 1, 'Playa'),
(2, 1, 'MontaÃ±a'),
(3, 1, 'Campo'),
(4, 2, 'pan dulce'),
(5, 2, 'pan salado'),
(6, 2, 'arepa'),
(7, 2, 'empanada'),
(8, 2, 'panqueca'),
(9, 2, 'frutas'),
(10, 3, 'Respuesta Libre'),
(11, 4, 'una'),
(12, 4, 'dos'),
(13, 4, 'tres'),
(14, 4, 'ninguna'),
(38, 6, 'sadad'),
(36, 6, 'Parque del Este'),
(21, 7, 'FIAT'),
(22, 7, 'MAZDA'),
(23, 7, 'FORD'),
(24, 7, 'LADA'),
(25, 7, 'KIA'),
(26, 7, 'TOYOTA'),
(27, 8, 'Respuesta Libre'),
(28, 9, 'Casual'),
(29, 9, 'Hogar'),
(30, 9, 'Formal'),
(31, 9, 'Oficina'),
(32, 10, 'FicciÃ³n'),
(33, 10, 'Policial'),
(34, 10, 'Drama'),
(35, 10, 'Historia ');

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
(1, 3, 1, ''),
(2, 3, 4, ''),
(3, 3, 9, ''),
(4, 3, 8, ''),
(5, 3, 10, 'dia de descanso'),
(6, 3, 14, ''),
(7, 3, 16, ''),
(8, 4, 2, ''),
(9, 4, 8, ''),
(10, 4, 7, ''),
(11, 4, 6, ''),
(12, 4, 10, 'Dia de playa'),
(13, 4, 11, ''),
(14, 4, 16, ''),
(15, 7, 19, ''),
(16, 7, 22, ''),
(17, 7, 26, ''),
(18, 7, 27, 'DÃ­a en la playa paradisiaca '),
(19, 7, 28, ''),
(20, 7, 32, ''),
(21, 0, 19, ''),
(22, 0, 22, ''),
(23, 0, 21, ''),
(24, 0, 27, 'sdfsdf'),
(25, 0, 28, ''),
(26, 0, 34, ''),
(27, 0, 33, ''),
(28, 9, 18, ''),
(29, 9, 23, ''),
(30, 9, 24, ''),
(31, 9, 27, 'sdfsdff'),
(32, 9, 30, ''),
(33, 9, 33, ''),
(34, 9, 34, '');

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
(1, 'yanueltex@gmail.com', 'yanuel', '91ca596b9120a322ceec7aa2e31feaa0', 'superadmin', 1, 1),
(2, 'mileidy.santos@gmail.com', 'Mimi San', '64178bf83cb7cc8292b626bc65ae89ce', 'superadmin', 1, 1),
(12, 'danielmolina956@gmail.com', 'daniel molina', 'b5ea8985533defbf1d08d5ed2ac8fe9b', 'visitadormedico', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_participante`
--

CREATE TABLE `usuario_participante` (
  `id` int(255) NOT NULL,
  `fk_usuario` int(255) NOT NULL,
  `fk_participante` int(255) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_participante`
--

INSERT INTO `usuario_participante` (`id`, `fk_usuario`, `fk_participante`, `fecha`) VALUES
(1, 12, 3, '2018-09-10 13:07:23'),
(2, 12, 7, '2018-09-11 14:30:44');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_respuesta_evento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_respuesta_evento` (
`id_participante` int(255)
,`id_respuesta` int(255)
,`respuesta_libre` varchar(255)
,`id_pregunta` int(255)
,`descripcion` varchar(255)
,`id_evento` int(255)
,`pregunta` varchar(128)
,`tipo` varchar(128)
,`nombre` varchar(128)
,`fecha` date
,`direccion` varchar(255)
,`hash` varchar(50)
,`estatus` int(1)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_respuesta_evento`
--
DROP TABLE IF EXISTS `vista_respuesta_evento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`adminpalmera`@`localhost` SQL SECURITY DEFINER VIEW `vista_respuesta_evento`  AS  select `a`.`id_participante` AS `id_participante`,`a`.`id_respuesta` AS `id_respuesta`,`a`.`respuesta_libre` AS `respuesta_libre`,`b`.`id_pregunta` AS `id_pregunta`,`b`.`descripcion` AS `descripcion`,`c`.`id_evento` AS `id_evento`,`c`.`pregunta` AS `pregunta`,`c`.`tipo` AS `tipo`,`d`.`nombre` AS `nombre`,`d`.`fecha` AS `fecha`,`d`.`direccion` AS `direccion`,`d`.`hash` AS `hash`,`d`.`estatus` AS `estatus` from (((`respuesta_evento` `a` join `respuesta` `b`) join `cuestionario` `c`) join `lista_evento` `d`) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_evento` (`id_evento`);

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
-- Indices de la tabla `landing_registro`
--
ALTER TABLE `landing_registro`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_participante`
--
ALTER TABLE `usuario_participante`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `certificado`
--
ALTER TABLE `certificado`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `evento_participante`
--
ALTER TABLE `evento_participante`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `evento_usuario`
--
ALTER TABLE `evento_usuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `landing_registro`
--
ALTER TABLE `landing_registro`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_evento`
--
ALTER TABLE `lista_evento`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `respuesta_evento`
--
ALTER TABLE `respuesta_evento`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario_participante`
--
ALTER TABLE `usuario_participante`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
