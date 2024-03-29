-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2018 a las 17:28:30
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

DROP TABLE IF EXISTS `certificado`;
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
(9, 15, 'prueba', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>HTML de mPDF</title>\r\n	<link rel=\"stylesheet\" href=\"\">\r\n</head>\r\n<body>\r\n	<div style=\"width: 100%\">\r\n		<div style=\"padding: 0px 15px;\">\r\n			<div style=\"margin: auto; text-align: center;\">\r\n				<h1>\r\n					Certificado de prueba\r\n				</h1>\r\n				<br>\r\n				<span style=\"font-size: 25px;\">Felicidades <span style=\"font-weight: bold;\">@name</span> por su asistencia nuestro evento.</span><br>\r\n				<img src=\"http://palmera.marketing/check-in_system/assets/images/header_gracias.png\" alt=\"\" width=\"100%\">\r\n			</div>\r\n		</div>\r\n	</div>\r\n</body>\r\n</html>\r\n'),
(10, 16, 'Asistencia ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>HTML de mPDF</title>\r\n	<link rel=\"stylesheet\" href=\"\">\r\n</head>\r\n<body>\r\n	<div style=\"width: 100%\">\r\n		<div style=\"padding: 0px 15px;\">\r\n			<div style=\"margin: auto; text-align: center;\">\r\n				<h1>\r\n					Certificado de prueba\r\n				</h1>\r\n				<br>\r\n				<span style=\"font-size: 25px;\">Felicidades <span style=\"font-weight: bold;\">@name</span> por su asistencia nuestro evento.</span><br>\r\n				<img src=\"http://palmera.marketing/check-in_system/assets/images/header_gracias.png\" alt=\"\" width=\"100%\">\r\n			</div>\r\n		</div>\r\n	</div>\r\n</body>\r\n</html>\r\n'),
(12, 1, 'Prueba 2', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n	<link href=\"http://palmera.marketing/check-in_system/assets/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n</head>\r\n<style>\r\n	body{\r\n		font-family: Helvetica; \r\n		margin: 0px;\r\n	}\r\n	hr{\r\n		border-top: 2px solid #0a0a0a;\r\n	}\r\n	.primer-parrafos{\r\n		font-size: 14pt; \r\n		padding-top: 20px;\r\n	}\r\n	.segundo-parrafos{\r\n		font-size: 14pt; \r\n		margin-bottom: 60px; \r\n		margin-top: 20px\r\n	}\r\n	.nombre-participante{\r\n		font-size: 40pt; \r\n		color: white;\r\n	}\r\n	.seccion-firmas{\r\n		font-size: 10pt;\r\n	}\r\n</style>\r\n<body>\r\n	<div class=\"container-fluid\">\r\n		<div class=\"row\">\r\n			<div class=\"col-xs-12\">\r\n				<img src=\"http://palmera.marketing/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n			</div>	\r\n		</div>\r\n		<div class=\"row\">\r\n			<div class=\"col-xs-12 text-center\">\r\n				<p class=\"primer-parrafos\">Se otorga el siguiente reconocimiento a</p>\r\n			</div>	\r\n		</div>\r\n		<div class=\"row\">\r\n			<div class=\"col-xs-2\">\r\n			</div>\r\n			<div class=\"col-xs-8 text-center\">\r\n				<p class=\"nombre-participante\" >nombre participamte</p>\r\n				<hr/>\r\n			</div>\r\n			<div class=\"col-xs-2\">\r\n			</div>\r\n		</div>\r\n		<div class=\"row\">\r\n			<div class=\"col-xs-12 text-center\">\r\n				<p class=\"segundo-parrafos\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n			</div>\r\n		</div>	\r\n		<div class=\"row\">\r\n			<div class=\"col-xs-4 text-center seccion-firmas\">\r\n				<hr width=\"75%\"/>\r\n				<p\">Dr. JosÃ© Luis Cobos Serrano</p>\r\n			</div>\r\n			<div class=\"col-xs-4 text-center seccion-firmas\">\r\n				<hr width=\"75%\"/>\r\n				<p>Dr. JosÃ© Manual Navarro MartÃ­nez</p>\r\n			</div>\r\n			<div class=\"col-xs-4 text-center seccion-firmas\">\r\n				<hr width=\"75%\"/>\r\n				<p>Dr. Rafael Palencia DÃ­az</p>	\r\n			</div>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>'),
(14, 47, 'Asistencia 2', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n</head>\r\n<body style=\"font-family: Helvetica; margin: 0px;\">\r\n	<div class=\"container-fluid\">\r\n		<div >\r\n			<img src=\"http://palmera.marketing/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 12pt; text-align: center;\">Se otorga el siguiente reconocimiento a</p>	\r\n		</div>\r\n		<div>\r\n			<table width=\"60%\"  cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<p style=\"font-size: 20pt; font-style: italic; font-weight: bold;\">@name</p>\r\n						<hr style=\"border-top: 2px solid black;\" width=\"100%\"/>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 14pt; margin-bottom: 50px; margin-top: 10px; text-align: center;\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n		</div>	\r\n		<div>\r\n			<table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Luis Cobos Serrano</p>\r\n					</td>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Manual Navarro MartÃ­nez</p>\r\n					</td>	\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. Rafael Palencia DÃ­az</p>\r\n					</td>			\r\n				</tr>\r\n			</table>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>'),
(15, 45, 'Asistencia 3', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n</head>\r\n<body style=\"font-family: Helvetica; margin: 0px;\">\r\n	<div class=\"container-fluid\">\r\n		<div >\r\n			<img src=\"http://palmera.marketing/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 12pt; text-align: center;\">Se otorga el siguiente reconocimiento a</p>	\r\n		</div>\r\n		<div>\r\n			<table width=\"60%\"  cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<p style=\"font-size: 20pt; font-style: italic; font-weight: bold;\">@name</p>\r\n						<hr style=\"border-top: 2px solid black;\" width=\"100%\"/>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 14pt; margin-bottom: 50px; margin-top: 10px; text-align: center;\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n		</div>	\r\n		<div>\r\n			<table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Luis Cobos Serrano</p>\r\n					</td>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Manual Navarro MartÃ­nez</p>\r\n					</td>	\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. Rafael Palencia DÃ­az</p>\r\n					</td>			\r\n				</tr>\r\n			</table>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>'),
(17, 34, 'asistencia', '<form id=\"subForm\" class=\"js-cm-form\" action=\"https://www.createsend.com/t/subscribeerror?description=\" method=\"post\" data-id=\"A61C50BEC994754B1D79C5819EC1255CE7111AEE467CFD454455420C3FC199129FC5E021EF11092734D1DA286836C013AFE800FC2766238F9467BCEB2748A1EA\">	\n<p>\n    <label for=\"fieldName\">Name</label>\n    <br />\n    <input id=\"fieldName\" name=\"cm-name\" type=\"text\" />\n</p>\n<p>\n    <label for=\"fieldEmail\">Email</label>\n    <br />\n    <input id=\"fieldEmail\" name=\"cm-wdtdti-wdtdti\" type=\"email\" class=\"js-cm-email-input\"\n    required />\n</p>\n<div>\n    <input id=\"cm-privacy-consent\" name=\"cm-privacy-consent\" required type=\"checkbox\"\n    />\n    <label for=\"cm-privacy-consent\">I agree to be emailed</label>\n    <input id=\"cm-privacy-consent-hidden\" name=\"cm-privacy-consent-hidden\"\n    type=\"hidden\" value=\"true\" />\n</div>\n<p>\n    <button class=\"js-cm-submit-button\" type=\"submit\">Subscribe</button>\n</p>\n</form>\n<script type=\"text/javascript\" src=\"https://js.createsend1.com/javascript/copypastesubscribeformlogic.js\"></script>'),
(18, 49, 'asistencia', ''),
(23, 19, 'Certificado nuevo', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n</head>\r\n<body style=\"font-family: Helvetica; margin: 0px;\">\r\n	<div class=\"container-fluid\">\r\n		<div >\r\n			<img src=\"http://palmera.marketing/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 12pt; text-align: center;\">Se otorga el siguiente reconocimiento a</p>	\r\n		</div>\r\n		<div>\r\n			<table width=\"60%\"  cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<p style=\"font-size: 20pt; font-style: italic; font-weight: bold;\">@name</p>\r\n						<hr style=\"border-top: 2px solid black;\" width=\"100%\"/>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 14pt; margin-bottom: 50px; margin-top: 10px; text-align: center;\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n		</div>	\r\n		<div>\r\n			<table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Luis Cobos Serrano</p>\r\n					</td>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Manual Navarro MartÃ­nez</p>\r\n					</td>	\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. Rafael Palencia DÃ­az</p>\r\n					</td>			\r\n				</tr>\r\n			</table>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>'),
(26, 24, 'Certificado nuevo', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n</head>\r\n<body style=\"font-family: Helvetica; margin: 0px;\">\r\n	<div class=\"container-fluid\">\r\n		<div >\r\n			<img src=\"http://palmera.marketing/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 12pt; text-align: center;\">Se otorga el siguiente reconocimiento a</p>	\r\n		</div>\r\n		<div>\r\n			<table width=\"60%\"  cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<p style=\"font-size: 20pt; font-style: italic; font-weight: bold;\">@name</p>\r\n						<hr style=\"border-top: 2px solid black;\" width=\"100%\"/>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 14pt; margin-bottom: 50px; margin-top: 10px; text-align: center;\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n		</div>	\r\n		<div>\r\n			<table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Luis Cobos Serrano</p>\r\n					</td>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Manual Navarro MartÃ­nez</p>\r\n					</td>	\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. Rafael Palencia DÃ­az</p>\r\n					</td>			\r\n				</tr>\r\n			</table>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>'),
(31, 53, 'Certificado de Asistencia 1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n</head>\r\n<body style=\"font-family: Helvetica; margin: 0px;\">\r\n	<div class=\"container-fluid\">\r\n		<div >\r\n			<img src=\"http://palmera.marketing/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 12pt; text-align: center;\">Se otorga el siguiente reconocimiento a</p>	\r\n		</div>\r\n		<div>\r\n			<table width=\"60%\"  cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<p style=\"font-size: 20pt; font-style: italic; font-weight: bold;\">@name</p>\r\n						<hr style=\"border-top: 2px solid black;\" width=\"100%\"/>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 14pt; margin-bottom: 50px; margin-top: 10px; text-align: center;\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n		</div>	\r\n		<div>\r\n			<table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Luis Cobos Serrano</p>\r\n					</td>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Manual Navarro MartÃ­nez</p>\r\n					</td>	\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. Rafael Palencia DÃ­az</p>\r\n					</td>			\r\n				</tr>\r\n			</table>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>'),
(32, 55, 'MIMI SAN CERTIFICATE', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<title>Certificado</title>\r\n</head>\r\n<body style=\"font-family: Helvetica; margin: 0px;\">\r\n	<div class=\"container-fluid\">\r\n		<div >\r\n			<img src=\"http://palmera.marketing/check-in_system/assets/images/Header_Menarini_Logo.jpg\" alt=\"\" width=\"100%\">\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 12pt; text-align: center;\">Se otorga el siguiente reconocimiento a</p>	\r\n		</div>\r\n		<div>\r\n			<table width=\"60%\"  cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<p style=\"font-size: 20pt; font-style: italic; font-weight: bold;\">@name</p>\r\n						<hr style=\"border-top: 2px solid black;\" width=\"100%\"/>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n		<div>\r\n			<p style=\"font-size: 14pt; margin-bottom: 50px; margin-top: 10px; text-align: center;\">Por haber asistido al IX Simposium de CentroamÃ©rica y el Caribe <br> y actualizar sus conocimientos en la especialidad de OdontoestomatologÃ­a.</p>\r\n		</div>	\r\n		<div>\r\n			<table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n				<tr>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Luis Cobos Serrano</p>\r\n					</td>\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. JosÃ© Manual Navarro MartÃ­nez</p>\r\n					</td>	\r\n					<td align=\"center\">\r\n						<hr style=\"border-top: 2px solid black;\" width=\"50%\"/>\r\n						<p style=\"font-size: 9pt; \">Dr. Rafael Palencia DÃ­az</p>\r\n					</td>			\r\n				</tr>\r\n			</table>\r\n		</div>						\r\n	</div>				\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

DROP TABLE IF EXISTS `cuestionario`;
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
(65, 6, 'Pregunta 1', 'simple'),
(64, 1, 'Pregunta 1', 'multi'),
(57, 1, 'Pregunta 1', 'simple'),
(61, 2, 'Pregunta de prueba', 'simple'),
(84, 51, 'En tu opiniÃ³n, Â¿cuanta relaciÃ³n hay entre las acciones y los valores de la compaÃ±Ã­a?', 'simple'),
(69, 15, 'Color del logo PALM ERA', 'simple'),
(91, 53, 'Seleccione dos jugos naturales preferidos', 'multi'),
(90, 53, 'Indique su comida preferida', 'simple'),
(74, 16, 'Seleccione el dÃ­a favorito de la semana para usted', 'simple'),
(75, 16, 'Seleccione su tipo de cafe favorito', 'multi'),
(76, 16, 'Â¿Que le dirÃ­as a Nicolas Maduro?', 'libre'),
(77, 45, 'Seleccione su color favorito', 'simple'),
(79, 45, 'Que lo hace mas feliz?', 'multi'),
(83, 51, ' Â¿Cuan bien conoces los valores de la compaÃ±Ã­a?', 'simple'),
(81, 23, 'que hora es', 'libre'),
(82, 23, 'que hora fue', 'simple'),
(85, 51, 'En tu opiniÃ³n, Â¿cuanta relaciÃ³n hay entre las acciones y los valores de la compaÃ±Ã­a?', 'simple'),
(86, 51, 'Â¿Cuan identificado consideras tus propias acciones con respecto a los valores de la compaÃ±Ã­a?', 'simple'),
(87, 51, 'Â¿CuÃ¡l valor corporativo incorporarÃ­as como un pilar en Palm Era?', 'simple'),
(88, 51, 'Â¿En cuÃ¡l lÃ­der identificas los 4 pilares?', 'simple'),
(89, 51, 'Â¿QuÃ© te motiva a desarrollar tus actividades diarias en la empresa?', 'simple'),
(92, 53, 'Indique en cual tipo de estructura prefiere vivir', 'simple'),
(93, 53, 'Describa cÃ³mo es su automovil ', 'libre'),
(94, 53, 'Seleccione su programa de  TV favorito', 'simple'),
(95, 53, 'Tipo de calzado preferido', 'multi'),
(96, 53, 'Seleccione tipo de mascota preferida', 'multi'),
(98, 55, 'Pregunta 2 iaudhfysdyuffsdufusef', 'libre'),
(99, 55, 'Pregunta 3 iuhfusihfiuhdig', 'simple');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `text_label` varchar(100) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_participante`
--

DROP TABLE IF EXISTS `evento_participante`;
CREATE TABLE `evento_participante` (
  `id` int(255) NOT NULL,
  `id_evento` int(255) NOT NULL,
  `id_participante` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento_participante`
--

INSERT INTO `evento_participante` (`id`, `id_evento`, `id_participante`) VALUES
(5, 3, 8),
(6, 1, 1),
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
(28, 15, 40),
(35, 16, 48),
(36, 16, 55),
(37, 16, 64),
(38, 45, 65),
(39, 16, 66),
(42, 45, 71),
(43, 45, 72),
(44, 45, 73),
(45, 45, 75),
(46, 45, 76),
(47, 45, 77),
(48, 45, 78),
(49, 45, 79),
(50, 51, 79),
(51, 45, 81),
(52, 45, 82),
(53, 45, 83),
(54, 45, 84),
(55, 45, 85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_usuario`
--

DROP TABLE IF EXISTS `evento_usuario`;
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
(6, 25, 5),
(7, 0, 16),
(8, 29, 33),
(9, 29, 34),
(10, 0, 44),
(11, 28, 45),
(12, 28, 46),
(13, 28, 47),
(14, 20, 48),
(15, 28, 49),
(16, 28, 50),
(17, 32, 15),
(18, 6, 21),
(19, 6, 37),
(20, 6, 45),
(21, 20, 51),
(22, 28, 52),
(23, 28, 53),
(24, 28, 54),
(25, 28, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_registro`
--

DROP TABLE IF EXISTS `landing_registro`;
CREATE TABLE `landing_registro` (
  `id` int(255) NOT NULL,
  `id_evento` int(255) NOT NULL,
  `nombre_landing` varchar(255) NOT NULL,
  `data_html` longtext NOT NULL,
  `hash_id` varchar(255) NOT NULL,
  `estatus` varchar(20) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `landing_registro`
--

INSERT INTO `landing_registro` (`id`, `id_evento`, `nombre_landing`, `data_html`, `hash_id`, `estatus`) VALUES
(2, 1, 'Landing 1', '<!DOCTYPE html>\r\n<html lang=es>\r\n	 <head>\r\n			<meta charset=\"utf-8\">\r\n			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n			<title>CHECK-IN</title>\r\n			<meta content=\"http://mundialcw.com/images/cropped-favicon-270x270.png\" name=\"msapplication-TileImage\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-32x32.png\" rel=\"icon\" sizes=\"32x32\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-192x192.png\" rel=\"icon\" sizes=\"192x192\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-180x180.png\" rel=\"apple-touch-icon-precomposed\">\r\n			<!-- Bootstrap y CSS -->\r\n			<link href=\"assets/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/fonts.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/index.css\" rel=\"stylesheet\">\r\n			<!-- Jquery -->\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-3.2.1.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery.validate.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-ui.min.js\"></script>\r\n	 </head>\r\n	 <body>\r\n		<div class=\"container-fluid\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header_logo\" class=\"centrar\">\r\n						<img src=\"assets/images/logo_header.png\" alt=\"\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header\">\r\n						<img src=\"assets/images/header.png\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones justificar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							El <span class=\"text_bold\">TechDay</span> es el punto de encuentro para los profesionales de IT de todos los paÃ­ses de CentroamÃ©rica y Caribe, junto con las empresas lÃ­deres de TecnologÃ­as de la InformaciÃ³n a nivel mundial y <span class=\"text_bold\">C&W Business</span> lo pone a tu alcance.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							EdiciÃ³n tras ediciÃ³n los asistentes a este evento son testigos de cÃ³mo esta experiencia sirve de plataforma para los mÃ¡s importantes anuncios, innovaciones y tendencias que marcarÃ¡n la pauta en el Mercado IT en los aÃ±os por venir.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							Aprende de los mejores asistiendo a las charlas que mÃ¡s relevancia tengan para tu negocio o empresa.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_morado\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_agenda\" class=\"espacio_secciones\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								AGENDA\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_imagen_agenda\">\r\n							<img src=\"assets/images/tabla_agenda.png\" alt=\"\" width=\"100%\">\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones centrar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							AdemÃ¡s podrÃ¡s visitar nuestro stand de <span class=\"text_bold\">C&W Business</span> y conocer los productos y servicios que ayudarÃ¡n a tu negocio a llegar mÃ¡s lejos y a alcanzar tus metas.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_bold p_texto_morado mayuscula\">\r\n							Stand 9-11 SalÃ³n de Convenciones. 2do. Nivel.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_gris\">\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_parrafo_seccion_video\" class=\"justificar\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Conoce mÃ¡s de C&W Business\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_negro\">\r\n							La mejor combinaciÃ³n de tecnologÃ­a con una red de malla Ãºnica de mÃ¡s de 60.000 km de fibra Ã³ptica que conecta a mÃ¡s de 40 paÃ­ses.\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">\r\n					<div id=\"div_contenedor_video\">\r\n						<video controls id=\"video_player\" width=\"100%\" height=\"100%\">\r\n						  <!-- <source src=\"videos/Crucero1080.mp4\" type=\"video/mp4\"> -->\r\n						  <source src=\"assets/videos/CBS-Datacenter-espaÃ±ol-2015-_2.webm\" type=\"video/webm\">\r\n						</video>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_carrousel\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_carrousel\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								Nuestros Productos\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_contenedor_carrousel\">\r\n							<div id=\"carousel-reviews\" class=\"carousel slide\" data-ride=\"carousel\">\r\n	              <div class=\"carousel-inner\" style=\"text-align: center;\">\r\n	                <div class=\"item active\">\r\n	            	    <div class=\"col-md-4 col-sm-6\">\r\n				  				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessDatasheetManagedBranchUTMSP.PDF\"><img src=\"assets/images/slide1.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetDDoSProtectionESP.PDF\"><img src=\"assets/images/slide2.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DatasheetCWRETAILANALYTICSSP.pdf\"><img src=\"assets/images/slide3.png\"></a>\r\n										</div>\r\n	              	</div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/ManagedSwitchesSP.pdf\"><img src=\"assets/images/slide4.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/HCSDataSheetESPmuestra4.pdf\"><img src=\"assets/images/slide5.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DRaaSX86SP.pdf\"><img src=\"assets/images/slide6.png\"></a>\r\n										</div>\r\n	                </div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWbrochureManagedSecurityESPbaja.pdf\"><img src=\"assets/images/slide7.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetManagedWiFiESPreentrega.pdf\"><img src=\"assets/images/slide8.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetVirtualDatacenterESP.PDF\"><img src=\"assets/images/slide9.png\"></a>\r\n										</div>\r\n	                </div>\r\n	              </div>\r\n	              <a class=\"left carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"prev\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n	              </a>\r\n	              <a class=\"right carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"next\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n	              </a>\r\n	            </div>\r\n	          </div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-6 col-lg-offset-1 col-md-6 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_contenedor_texto_derecho_formulario\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Escucha las ponencias que tenemos preparadas para ti en nuestras salas VIP\r\n						</p>\r\n						<p>\r\n							<ul class=\"text_medium p_texto_negro\">\r\n								<li>Retail Analytics</li>\r\n								<li>Security Transformation y su rol en la transformaciÃ³n digital</li>\r\n								<li>ColaboraciÃ³n en Colaboraciones Unificadas</li>\r\n								<li>Caso de Ã‰xito (Invitado Especial)</li>\r\n							</ul>\r\n						</p>\r\n						<p class=\"text_bold p_texto_negro\">\r\n							<span id=\"rosa\">Lugar</span> <span class=\"mayuscula\">SalÃ³n DalÃ­ y SalÃ³n Picasso 3er Nivel</span>\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12 background_azul\">\r\n					<div id=\"div_contenedor_formulario\">\r\n						<div id=\"div_parrafo_superior_formulario\" class=\"centrar\">\r\n							<p class=\"text_book p_texto_blanco\">\r\n								RegÃ­strate ya y disfruta <br>de Ã©stas increÃ­bles ponencias <br>en nuestro Business Lounge\r\n							</p>\r\n						</div>\r\n						<form class=\"form-horizontal\" method=\"post\" id=\"form_register\">\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"1\" placeholder=\"NOMBRES:\" name=\"nombre\" id=\"nombre\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"2\" placeholder=\"1er APELLIDO:\" name=\"apellido_1\" id=\"apellido_1\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"3\" placeholder=\"2do. APELLIDO:\" name=\"apellido_2\" id=\"apellido_2\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"4\" placeholder=\"ESPECIALIDAD:\" name=\"especialidad\" id=\"especialidad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"5\" placeholder=\"No. COLEGIADO:\" name=\"colegiado\" id=\"colegiado\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"6\" placeholder=\"No. CELULAR:\" name=\"celular\" id=\"celular\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"7\" placeholder=\"EMAIL:\" name=\"email\" id=\"email\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"8\" placeholder=\"CIUDAD:\" name=\"ciudad\" id=\"ciudad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"9\" placeholder=\"PAÃS:\" name=\"pais\" id=\"pais\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"10\" placeholder=\"DIRECCIÃ“N:\" name=\"direccion\" id=\"direccion\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"11\" placeholder=\"TELÃ‰FONO:\" name=\"telefono\" id=\"telefono\" onkeypress=\"doKey(arguments[0] || window.event)\" maxlength=\"13\" />\r\n							<input type=\"hidden\" name=\"url\" id=\"url\" value=\"controller/controller.php\"/>\r\n							<input type=\"hidden\" name=\"url_gracias\" id=\"url_gracias\" value=\"view/gracias.html\"/>\r\n							<input type=\"hidden\" value=\"150\" name=\"id_evento\" id=\"id_evento\">\r\n	            <div class=\"center-button\">\r\n	            	<button type=\"submit\" class=\"btn button-form\">CONFIRMAR</button>\r\n	            </div>\r\n		        </form>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row content-footer\" id=\"row_footer\">\r\n	      <div>\r\n	        <div class=\"col-xs-12 col-sm-3 col-md-3\">\r\n	          <img src=\"assets/images/logo_footer.png\" class=\"img-responsive logo-header\">\r\n	        </div>\r\n	        <div class=\"col-xs-12 col-sm-9 col-md-8 col-md-offset-1\">\r\n	          <div class=\"row\">\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://www.facebook.com/candwbusiness\"><img src=\"assets/images/C&W_Landing_FB.png\" class=\"img-responsive logo-header\"><span>candwbusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://twitter.com/CandWBusiness\"><img src=\"assets/images/C&W_Landing_TW.png\" class=\"img-responsive logo-header\"><span>@CandWBusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://vimeo.com/cwbusiness\"><img src=\"assets/images/C&W_Landing_YT.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n		<div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n		<div class=\"a\"><a target=\"_blank\" href=\"https://www.linkedin.com/company/c&w-business\"><img src=\"assets/images/logo_linkedin.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n	          </div>\r\n	  <div class=\"row\">\r\n		<div class=\"col-xs-12 col-sm-12 col-md-12 a\">\r\n			<p class=\"a text-center\">BogotÃ¡, Calle 108 45-30 Torre 3, Piso 7-9 y 10, Edif. Paralelo 108. TelÃ©fono: +5714291400.</p>\r\n			<p class=\"a text-center\"><a href=\"http://palmera.marketing/wp-content/uploads/2018/05/Notice_of_Privacy.pdf\" target=\"_blank\" style=\"text-decoration:none;font-size: 12px; \">Aviso de Privacidad - ProtecciÃ³n de datos personales Palmera Marketing S.A.S.</a></p>\r\n	            </div>\r\n	  </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n		</div>\r\n	 <!-- JS -->\r\n	 <script src=\"assets/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n	 <script src=\"assets/js/validate.js\"></script>\r\n	 </body>\r\n</html>\r\n', 'f848c5ee', 'Activo'),
(3, 1, 'Landing 2', '<!DOCTYPE html>\r\n<html lang=es>\r\n	 <head>\r\n			<meta charset=\"utf-8\">\r\n			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n			<title>CHECK-IN</title>\r\n			<meta content=\"http://mundialcw.com/images/cropped-favicon-270x270.png\" name=\"msapplication-TileImage\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-32x32.png\" rel=\"icon\" sizes=\"32x32\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-192x192.png\" rel=\"icon\" sizes=\"192x192\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-180x180.png\" rel=\"apple-touch-icon-precomposed\">\r\n			<!-- Bootstrap y CSS -->\r\n			<link href=\"assets/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/fonts.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/index.css\" rel=\"stylesheet\">\r\n			<!-- Jquery -->\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-3.2.1.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery.validate.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-ui.min.js\"></script>\r\n	 </head>\r\n	 <body>\r\n		<div class=\"container-fluid\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header_logo\" class=\"centrar\">\r\n						<img src=\"assets/images/logo_header.png\" alt=\"\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header\">\r\n						<img src=\"assets/images/header.png\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones justificar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							El <span class=\"text_bold\">TechDay</span> es el punto de encuentro para los profesionales de IT de todos los paÃ­ses de CentroamÃ©rica y Caribe, junto con las empresas lÃ­deres de TecnologÃ­as de la InformaciÃ³n a nivel mundial y <span class=\"text_bold\">C&W Business</span> lo pone a tu alcance.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							EdiciÃ³n tras ediciÃ³n los asistentes a este evento son testigos de cÃ³mo esta experiencia sirve de plataforma para los mÃ¡s importantes anuncios, innovaciones y tendencias que marcarÃ¡n la pauta en el Mercado IT en los aÃ±os por venir.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							Aprende de los mejores asistiendo a las charlas que mÃ¡s relevancia tengan para tu negocio o empresa.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_morado\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_agenda\" class=\"espacio_secciones\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								AGENDA\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_imagen_agenda\">\r\n							<img src=\"assets/images/tabla_agenda.png\" alt=\"\" width=\"100%\">\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones centrar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							AdemÃ¡s podrÃ¡s visitar nuestro stand de <span class=\"text_bold\">C&W Business</span> y conocer los productos y servicios que ayudarÃ¡n a tu negocio a llegar mÃ¡s lejos y a alcanzar tus metas.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_bold p_texto_morado mayuscula\">\r\n							Stand 9-11 SalÃ³n de Convenciones. 2do. Nivel.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_gris\">\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_parrafo_seccion_video\" class=\"justificar\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Conoce mÃ¡s de C&W Business\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_negro\">\r\n							La mejor combinaciÃ³n de tecnologÃ­a con una red de malla Ãºnica de mÃ¡s de 60.000 km de fibra Ã³ptica que conecta a mÃ¡s de 40 paÃ­ses.\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">\r\n					<div id=\"div_contenedor_video\">\r\n						<video controls id=\"video_player\" width=\"100%\" height=\"100%\">\r\n						  <!-- <source src=\"videos/Crucero1080.mp4\" type=\"video/mp4\"> -->\r\n						  <source src=\"assets/videos/CBS-Datacenter-espaÃ±ol-2015-_2.webm\" type=\"video/webm\">\r\n						</video>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_carrousel\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_carrousel\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								Nuestros Productos\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_contenedor_carrousel\">\r\n							<div id=\"carousel-reviews\" class=\"carousel slide\" data-ride=\"carousel\">\r\n	              <div class=\"carousel-inner\" style=\"text-align: center;\">\r\n	                <div class=\"item active\">\r\n	            	    <div class=\"col-md-4 col-sm-6\">\r\n				  				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessDatasheetManagedBranchUTMSP.PDF\"><img src=\"assets/images/slide1.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetDDoSProtectionESP.PDF\"><img src=\"assets/images/slide2.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DatasheetCWRETAILANALYTICSSP.pdf\"><img src=\"assets/images/slide3.png\"></a>\r\n										</div>\r\n	              	</div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/ManagedSwitchesSP.pdf\"><img src=\"assets/images/slide4.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/HCSDataSheetESPmuestra4.pdf\"><img src=\"assets/images/slide5.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DRaaSX86SP.pdf\"><img src=\"assets/images/slide6.png\"></a>\r\n										</div>\r\n	                </div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWbrochureManagedSecurityESPbaja.pdf\"><img src=\"assets/images/slide7.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetManagedWiFiESPreentrega.pdf\"><img src=\"assets/images/slide8.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetVirtualDatacenterESP.PDF\"><img src=\"assets/images/slide9.png\"></a>\r\n										</div>\r\n	                </div>\r\n	              </div>\r\n	              <a class=\"left carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"prev\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n	              </a>\r\n	              <a class=\"right carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"next\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n	              </a>\r\n	            </div>\r\n	          </div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-6 col-lg-offset-1 col-md-6 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_contenedor_texto_derecho_formulario\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Escucha las ponencias que tenemos preparadas para ti en nuestras salas VIP\r\n						</p>\r\n						<p>\r\n							<ul class=\"text_medium p_texto_negro\">\r\n								<li>Retail Analytics</li>\r\n								<li>Security Transformation y su rol en la transformaciÃ³n digital</li>\r\n								<li>ColaboraciÃ³n en Colaboraciones Unificadas</li>\r\n								<li>Caso de Ã‰xito (Invitado Especial)</li>\r\n							</ul>\r\n						</p>\r\n						<p class=\"text_bold p_texto_negro\">\r\n							<span id=\"rosa\">Lugar</span> <span class=\"mayuscula\">SalÃ³n DalÃ­ y SalÃ³n Picasso 3er Nivel</span>\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12 background_azul\">\r\n					<div id=\"div_contenedor_formulario\">\r\n						<div id=\"div_parrafo_superior_formulario\" class=\"centrar\">\r\n							<p class=\"text_book p_texto_blanco\">\r\n								RegÃ­strate ya y disfruta <br>de Ã©stas increÃ­bles ponencias <br>en nuestro Business Lounge\r\n							</p>\r\n						</div>\r\n						<form class=\"form-horizontal\" method=\"post\" id=\"form_register\">\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"1\" placeholder=\"NOMBRES:\" name=\"nombre\" id=\"nombre\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"2\" placeholder=\"1er APELLIDO:\" name=\"apellido_1\" id=\"apellido_1\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"3\" placeholder=\"2do. APELLIDO:\" name=\"apellido_2\" id=\"apellido_2\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"4\" placeholder=\"ESPECIALIDAD:\" name=\"especialidad\" id=\"especialidad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"5\" placeholder=\"No. COLEGIADO:\" name=\"colegiado\" id=\"colegiado\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"6\" placeholder=\"No. CELULAR:\" name=\"celular\" id=\"celular\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"7\" placeholder=\"EMAIL:\" name=\"email\" id=\"email\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"8\" placeholder=\"CIUDAD:\" name=\"ciudad\" id=\"ciudad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"9\" placeholder=\"PAÃS:\" name=\"pais\" id=\"pais\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"10\" placeholder=\"DIRECCIÃ“N:\" name=\"direccion\" id=\"direccion\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"11\" placeholder=\"TELÃ‰FONO:\" name=\"telefono\" id=\"telefono\" onkeypress=\"doKey(arguments[0] || window.event)\" maxlength=\"13\" />\r\n							<input type=\"hidden\" name=\"url\" id=\"url\" value=\"controller/controller.php\"/>\r\n							<input type=\"hidden\" name=\"url_gracias\" id=\"url_gracias\" value=\"view/gracias.html\"/>\r\n							<input type=\"hidden\" value=\"150\" name=\"id_evento\" id=\"id_evento\">\r\n	            <div class=\"center-button\">\r\n	            	<button type=\"submit\" class=\"btn button-form\">CONFIRMAR</button>\r\n	            </div>\r\n		        </form>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row content-footer\" id=\"row_footer\">\r\n	      <div>\r\n	        <div class=\"col-xs-12 col-sm-3 col-md-3\">\r\n	          <img src=\"assets/images/logo_footer.png\" class=\"img-responsive logo-header\">\r\n	        </div>\r\n	        <div class=\"col-xs-12 col-sm-9 col-md-8 col-md-offset-1\">\r\n	          <div class=\"row\">\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://www.facebook.com/candwbusiness\"><img src=\"assets/images/C&W_Landing_FB.png\" class=\"img-responsive logo-header\"><span>candwbusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://twitter.com/CandWBusiness\"><img src=\"assets/images/C&W_Landing_TW.png\" class=\"img-responsive logo-header\"><span>@CandWBusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://vimeo.com/cwbusiness\"><img src=\"assets/images/C&W_Landing_YT.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n		<div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n		<div class=\"a\"><a target=\"_blank\" href=\"https://www.linkedin.com/company/c&w-business\"><img src=\"assets/images/logo_linkedin.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n	          </div>\r\n	  <div class=\"row\">\r\n		<div class=\"col-xs-12 col-sm-12 col-md-12 a\">\r\n			<p class=\"a text-center\">BogotÃ¡, Calle 108 45-30 Torre 3, Piso 7-9 y 10, Edif. Paralelo 108. TelÃ©fono: +5714291400.</p>\r\n			<p class=\"a text-center\"><a href=\"http://palmera.marketing/wp-content/uploads/2018/05/Notice_of_Privacy.pdf\" target=\"_blank\" style=\"text-decoration:none;font-size: 12px; \">Aviso de Privacidad - ProtecciÃ³n de datos personales Palmera Marketing S.A.S.</a></p>\r\n	            </div>\r\n	  </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n		</div>\r\n	 <!-- JS -->\r\n	 <script src=\"assets/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n	 <script src=\"assets/js/validate.js\"></script>\r\n	 </body>\r\n</html>\r\n', '9ecdb598', 'Activo'),
(4, 1, 'Landing 3', '<!DOCTYPE html>\r\n<html lang=es>\r\n	 <head>\r\n			<meta charset=\"utf-8\">\r\n			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n			<title>CHECK-IN</title>\r\n			<meta content=\"http://mundialcw.com/images/cropped-favicon-270x270.png\" name=\"msapplication-TileImage\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-32x32.png\" rel=\"icon\" sizes=\"32x32\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-192x192.png\" rel=\"icon\" sizes=\"192x192\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-180x180.png\" rel=\"apple-touch-icon-precomposed\">\r\n			<!-- Bootstrap y CSS -->\r\n			<link href=\"assets/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/fonts.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/index.css\" rel=\"stylesheet\">\r\n			<!-- Jquery -->\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-3.2.1.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery.validate.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-ui.min.js\"></script>\r\n      <script type=\"text/javascript\" src=\"assets/plugins/datatable/jquery.dataTables.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/datatable/dataTables.bootstrap.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/datatable/dataTables.buttons.min.js\"></script>\r\n	 </head>\r\n	 <body>\r\n		<div class=\"container-fluid\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header_logo\" class=\"centrar\">\r\n						<img src=\"assets/images/logo_header.png\" alt=\"\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header\">\r\n						<img src=\"assets/images/header.png\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones justificar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							El <span class=\"text_bold\">TechDay</span> es el punto de encuentro para los profesionales de IT de todos los paÃ­ses de CentroamÃ©rica y Caribe, junto con las empresas lÃ­deres de TecnologÃ­as de la InformaciÃ³n a nivel mundial y <span class=\"text_bold\">C&W Business</span> lo pone a tu alcance.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							EdiciÃ³n tras ediciÃ³n los asistentes a este evento son testigos de cÃ³mo esta experiencia sirve de plataforma para los mÃ¡s importantes anuncios, innovaciones y tendencias que marcarÃ¡n la pauta en el Mercado IT en los aÃ±os por venir.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							Aprende de los mejores asistiendo a las charlas que mÃ¡s relevancia tengan para tu negocio o empresa.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_morado\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_agenda\" class=\"espacio_secciones\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								AGENDA\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_imagen_agenda\">\r\n							<img src=\"assets/images/tabla_agenda.png\" alt=\"\" width=\"100%\">\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones centrar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							AdemÃ¡s podrÃ¡s visitar nuestro stand de <span class=\"text_bold\">C&W Business</span> y conocer los productos y servicios que ayudarÃ¡n a tu negocio a llegar mÃ¡s lejos y a alcanzar tus metas.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_bold p_texto_morado mayuscula\">\r\n							Stand 9-11 SalÃ³n de Convenciones. 2do. Nivel.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_gris\">\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_parrafo_seccion_video\" class=\"justificar\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Conoce mÃ¡s de C&W Business\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_negro\">\r\n							La mejor combinaciÃ³n de tecnologÃ­a con una red de malla Ãºnica de mÃ¡s de 60.000 km de fibra Ã³ptica que conecta a mÃ¡s de 40 paÃ­ses.\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">\r\n					<div id=\"div_contenedor_video\">\r\n						<video controls id=\"video_player\" width=\"100%\" height=\"100%\">\r\n						  <!-- <source src=\"videos/Crucero1080.mp4\" type=\"video/mp4\"> -->\r\n						  <source src=\"assets/videos/CBS-Datacenter-espaÃ±ol-2015-_2.webm\" type=\"video/webm\">\r\n						</video>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_carrousel\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_carrousel\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								Nuestros Productos\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_contenedor_carrousel\">\r\n							<div id=\"carousel-reviews\" class=\"carousel slide\" data-ride=\"carousel\">\r\n	              <div class=\"carousel-inner\" style=\"text-align: center;\">\r\n	                <div class=\"item active\">\r\n	            	    <div class=\"col-md-4 col-sm-6\">\r\n				  				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessDatasheetManagedBranchUTMSP.PDF\"><img src=\"assets/images/slide1.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetDDoSProtectionESP.PDF\"><img src=\"assets/images/slide2.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DatasheetCWRETAILANALYTICSSP.pdf\"><img src=\"assets/images/slide3.png\"></a>\r\n										</div>\r\n	              	</div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/ManagedSwitchesSP.pdf\"><img src=\"assets/images/slide4.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/HCSDataSheetESPmuestra4.pdf\"><img src=\"assets/images/slide5.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DRaaSX86SP.pdf\"><img src=\"assets/images/slide6.png\"></a>\r\n										</div>\r\n	                </div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWbrochureManagedSecurityESPbaja.pdf\"><img src=\"assets/images/slide7.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetManagedWiFiESPreentrega.pdf\"><img src=\"assets/images/slide8.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetVirtualDatacenterESP.PDF\"><img src=\"assets/images/slide9.png\"></a>\r\n										</div>\r\n	                </div>\r\n	              </div>\r\n	              <a class=\"left carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"prev\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n	              </a>\r\n	              <a class=\"right carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"next\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n	              </a>\r\n	            </div>\r\n	          </div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-6 col-lg-offset-1 col-md-6 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_contenedor_texto_derecho_formulario\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Escucha las ponencias que tenemos preparadas para ti en nuestras salas VIP\r\n						</p>\r\n						<p>\r\n							<ul class=\"text_medium p_texto_negro\">\r\n								<li>Retail Analytics</li>\r\n								<li>Security Transformation y su rol en la transformaciÃ³n digital</li>\r\n								<li>ColaboraciÃ³n en Colaboraciones Unificadas</li>\r\n								<li>Caso de Ã‰xito (Invitado Especial)</li>\r\n							</ul>\r\n						</p>\r\n						<p class=\"text_bold p_texto_negro\">\r\n							<span id=\"rosa\">Lugar</span> <span class=\"mayuscula\">SalÃ³n DalÃ­ y SalÃ³n Picasso 3er Nivel</span>\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12 background_azul\">\r\n					<div id=\"div_contenedor_formulario\">\r\n						<div id=\"div_parrafo_superior_formulario\" class=\"centrar\">\r\n							<p class=\"text_book p_texto_blanco\">\r\n								RegÃ­strate ya y disfruta <br>de Ã©stas increÃ­bles ponencias <br>en nuestro Business Lounge\r\n							</p>\r\n						</div>\r\n						<form class=\"form-horizontal\" method=\"post\" id=\"form_register\">\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"1\" placeholder=\"NOMBRES:\" name=\"nombre\" id=\"nombre\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"2\" placeholder=\"1er APELLIDO:\" name=\"apellido_1\" id=\"apellido_1\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"3\" placeholder=\"2do. APELLIDO:\" name=\"apellido_2\" id=\"apellido_2\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"4\" placeholder=\"ESPECIALIDAD:\" name=\"especialidad\" id=\"especialidad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"5\" placeholder=\"No. COLEGIADO:\" name=\"colegiado\" id=\"colegiado\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"6\" placeholder=\"No. CELULAR:\" name=\"celular\" id=\"celular\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"7\" placeholder=\"EMAIL:\" name=\"email\" id=\"email\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"8\" placeholder=\"CIUDAD:\" name=\"ciudad\" id=\"ciudad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"9\" placeholder=\"PAÃS:\" name=\"pais\" id=\"pais\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"10\" placeholder=\"DIRECCIÃ“N:\" name=\"direccion\" id=\"direccion\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"11\" placeholder=\"TELÃ‰FONO:\" name=\"telefono\" id=\"telefono\" onkeypress=\"doKey(arguments[0] || window.event)\" maxlength=\"13\" />\r\n							<input type=\"hidden\" name=\"url\" id=\"url\" value=\"controller/controller.php\"/>\r\n							<input type=\"hidden\" name=\"url_gracias\" id=\"url_gracias\" value=\"view/gracias.html\"/>\r\n							<input type=\"hidden\" value=\"16\" name=\"id_evento\" id=\"id_evento\">\r\n							<input type=\"hidden\" value=\"Sin asistencia\" name=\"asistencia\" id=\"asistencia\">\r\n	            <div class=\"center-button\">\r\n	            	<button type=\"submit\" class=\"btn button-form\">CONFIRMAR</button>\r\n	            </div>\r\n		        </form>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row content-footer\" id=\"row_footer\">\r\n	      <div>\r\n	        <div class=\"col-xs-12 col-sm-3 col-md-3\">\r\n	          <img src=\"assets/images/logo_footer.png\" class=\"img-responsive logo-header\">\r\n	        </div>\r\n	        <div class=\"col-xs-12 col-sm-9 col-md-8 col-md-offset-1\">\r\n	          <div class=\"row\">\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://www.facebook.com/candwbusiness\"><img src=\"assets/images/C&W_Landing_FB.png\" class=\"img-responsive logo-header\"><span>candwbusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://twitter.com/CandWBusiness\"><img src=\"assets/images/C&W_Landing_TW.png\" class=\"img-responsive logo-header\"><span>@CandWBusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://vimeo.com/cwbusiness\"><img src=\"assets/images/C&W_Landing_YT.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n		<div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n		<div class=\"a\"><a target=\"_blank\" href=\"https://www.linkedin.com/company/c&w-business\"><img src=\"assets/images/logo_linkedin.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n	          </div>\r\n	  <div class=\"row\">\r\n		<div class=\"col-xs-12 col-sm-12 col-md-12 a\">\r\n			<p class=\"a text-center\">BogotÃ¡, Calle 108 45-30 Torre 3, Piso 7-9 y 10, Edif. Paralelo 108. TelÃ©fono: +5714291400.</p>\r\n			<p class=\"a text-center\"><a href=\"http://palmera.marketing/wp-content/uploads/2018/05/Notice_of_Privacy.pdf\" target=\"_blank\" style=\"text-decoration:none;font-size: 12px; \">Aviso de Privacidad - ProtecciÃ³n de datos personales Palmera Marketing S.A.S.</a></p>\r\n	            </div>\r\n	  </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n		</div>\r\n	 <!-- JS -->\r\n	 <script src=\"assets/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n	 <script src=\"assets/js/validate.js\"></script>\r\n	 </body>\r\n</html>\r\n', 'f5014e4a', 'Inactivo');
INSERT INTO `landing_registro` (`id`, `id_evento`, `nombre_landing`, `data_html`, `hash_id`, `estatus`) VALUES
(5, 2, 'Landing de Pruebas 1', '<!DOCTYPE html>\r\n<html lang=es>\r\n	 <head>\r\n			<meta charset=\"utf-8\">\r\n			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n			<title>CHECK-IN</title>\r\n			<meta content=\"http://mundialcw.com/images/cropped-favicon-270x270.png\" name=\"msapplication-TileImage\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-32x32.png\" rel=\"icon\" sizes=\"32x32\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-192x192.png\" rel=\"icon\" sizes=\"192x192\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-180x180.png\" rel=\"apple-touch-icon-precomposed\">\r\n			<!-- Bootstrap y CSS -->\r\n			<link href=\"assets/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/fonts.css\" rel=\"stylesheet\">\r\n			<link href=\"assets/css/index.css\" rel=\"stylesheet\">\r\n			<!-- Jquery -->\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-3.2.1.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery.validate.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/jquery/jquery-ui.min.js\"></script>\r\n      <script type=\"text/javascript\" src=\"assets/plugins/datatable/jquery.dataTables.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/datatable/dataTables.bootstrap.js\"></script>\r\n			<script type=\"text/javascript\" src=\"assets/plugins/datatable/dataTables.buttons.min.js\"></script>\r\n	 </head>\r\n	 <body>\r\n		<div class=\"container-fluid\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header_logo\" class=\"centrar\">\r\n						<img src=\"assets/images/logo_header.png\" alt=\"\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header\">\r\n						<img src=\"assets/images/header.png\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones justificar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							El <span class=\"text_bold\">TechDay</span> es el punto de encuentro para los profesionales de IT de todos los paÃ­ses de CentroamÃ©rica y Caribe, junto con las empresas lÃ­deres de TecnologÃ­as de la InformaciÃ³n a nivel mundial y <span class=\"text_bold\">C&W Business</span> lo pone a tu alcance.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							EdiciÃ³n tras ediciÃ³n los asistentes a este evento son testigos de cÃ³mo esta experiencia sirve de plataforma para los mÃ¡s importantes anuncios, innovaciones y tendencias que marcarÃ¡n la pauta en el Mercado IT en los aÃ±os por venir.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							Aprende de los mejores asistiendo a las charlas que mÃ¡s relevancia tengan para tu negocio o empresa.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_morado\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_agenda\" class=\"espacio_secciones\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								AGENDA\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_imagen_agenda\">\r\n							<img src=\"assets/images/tabla_agenda.png\" alt=\"\" width=\"100%\">\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones centrar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							AdemÃ¡s podrÃ¡s visitar nuestro stand de <span class=\"text_bold\">C&W Business</span> y conocer los productos y servicios que ayudarÃ¡n a tu negocio a llegar mÃ¡s lejos y a alcanzar tus metas.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_bold p_texto_morado mayuscula\">\r\n							Stand 9-11 SalÃ³n de Convenciones. 2do. Nivel.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_gris\">\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_parrafo_seccion_video\" class=\"justificar\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Conoce mÃ¡s de C&W Business\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_negro\">\r\n							La mejor combinaciÃ³n de tecnologÃ­a con una red de malla Ãºnica de mÃ¡s de 60.000 km de fibra Ã³ptica que conecta a mÃ¡s de 40 paÃ­ses.\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">\r\n					<div id=\"div_contenedor_video\">\r\n						<video controls id=\"video_player\" width=\"100%\" height=\"100%\">\r\n						  <!-- <source src=\"videos/Crucero1080.mp4\" type=\"video/mp4\"> -->\r\n						  <source src=\"assets/videos/CBS-Datacenter-espaÃ±ol-2015-_2.webm\" type=\"video/webm\">\r\n						</video>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_carrousel\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_carrousel\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								Nuestros Productos\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_contenedor_carrousel\">\r\n							<div id=\"carousel-reviews\" class=\"carousel slide\" data-ride=\"carousel\">\r\n	              <div class=\"carousel-inner\" style=\"text-align: center;\">\r\n	                <div class=\"item active\">\r\n	            	    <div class=\"col-md-4 col-sm-6\">\r\n				  				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessDatasheetManagedBranchUTMSP.PDF\"><img src=\"assets/images/slide1.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetDDoSProtectionESP.PDF\"><img src=\"assets/images/slide2.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DatasheetCWRETAILANALYTICSSP.pdf\"><img src=\"assets/images/slide3.png\"></a>\r\n										</div>\r\n	              	</div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/ManagedSwitchesSP.pdf\"><img src=\"assets/images/slide4.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/HCSDataSheetESPmuestra4.pdf\"><img src=\"assets/images/slide5.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DRaaSX86SP.pdf\"><img src=\"assets/images/slide6.png\"></a>\r\n										</div>\r\n	                </div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWbrochureManagedSecurityESPbaja.pdf\"><img src=\"assets/images/slide7.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetManagedWiFiESPreentrega.pdf\"><img src=\"assets/images/slide8.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetVirtualDatacenterESP.PDF\"><img src=\"assets/images/slide9.png\"></a>\r\n										</div>\r\n	                </div>\r\n	              </div>\r\n	              <a class=\"left carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"prev\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n	              </a>\r\n	              <a class=\"right carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"next\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n	              </a>\r\n	            </div>\r\n	          </div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-6 col-lg-offset-1 col-md-6 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_contenedor_texto_derecho_formulario\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Escucha las ponencias que tenemos preparadas para ti en nuestras salas VIP\r\n						</p>\r\n						<p>\r\n							<ul class=\"text_medium p_texto_negro\">\r\n								<li>Retail Analytics</li>\r\n								<li>Security Transformation y su rol en la transformaciÃ³n digital</li>\r\n								<li>ColaboraciÃ³n en Colaboraciones Unificadas</li>\r\n								<li>Caso de Ã‰xito (Invitado Especial)</li>\r\n							</ul>\r\n						</p>\r\n						<p class=\"text_bold p_texto_negro\">\r\n							<span id=\"rosa\">Lugar</span> <span class=\"mayuscula\">SalÃ³n DalÃ­ y SalÃ³n Picasso 3er Nivel</span>\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12 background_azul\">\r\n					<div id=\"div_contenedor_formulario\">\r\n						<div id=\"div_parrafo_superior_formulario\" class=\"centrar\">\r\n							<p class=\"text_book p_texto_blanco\">\r\n								RegÃ­strate ya y disfruta <br>de Ã©stas increÃ­bles ponencias <br>en nuestro Business Lounge\r\n							</p>\r\n						</div>\r\n						<form class=\"form-horizontal\" method=\"post\" id=\"form_register\">\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"1\" placeholder=\"NOMBRES:\" name=\"nombre\" id=\"nombre\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"2\" placeholder=\"1er APELLIDO:\" name=\"apellido_1\" id=\"apellido_1\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"3\" placeholder=\"2do. APELLIDO:\" name=\"apellido_2\" id=\"apellido_2\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"4\" placeholder=\"ESPECIALIDAD:\" name=\"especialidad\" id=\"especialidad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"5\" placeholder=\"No. COLEGIADO:\" name=\"colegiado\" id=\"colegiado\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"6\" placeholder=\"No. CELULAR:\" name=\"celular\" id=\"celular\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"7\" placeholder=\"EMAIL:\" name=\"email\" id=\"email\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"8\" placeholder=\"CIUDAD:\" name=\"ciudad\" id=\"ciudad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"9\" placeholder=\"PAÃS:\" name=\"pais\" id=\"pais\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"10\" placeholder=\"DIRECCIÃ“N:\" name=\"direccion\" id=\"direccion\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"11\" placeholder=\"TELÃ‰FONO:\" name=\"telefono\" id=\"telefono\" onkeypress=\"doKey(arguments[0] || window.event)\" maxlength=\"13\" />\r\n							<input type=\"hidden\" name=\"url\" id=\"url\" value=\"controller/controller.php\"/>\r\n							<input type=\"hidden\" name=\"url_gracias\" id=\"url_gracias\" value=\"view/gracias.html\"/>\r\n							<input type=\"hidden\" value=\"16\" name=\"id_evento\" id=\"id_evento\">\r\n							<input type=\"hidden\" value=\"Sin asistencia\" name=\"asistencia\" id=\"asistencia\">\r\n	            <div class=\"center-button\">\r\n	            	<button type=\"submit\" class=\"btn button-form\">CONFIRMAR</button>\r\n	            </div>\r\n		        </form>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row content-footer\" id=\"row_footer\">\r\n	      <div>\r\n	        <div class=\"col-xs-12 col-sm-3 col-md-3\">\r\n	          <img src=\"assets/images/logo_footer.png\" class=\"img-responsive logo-header\">\r\n	        </div>\r\n	        <div class=\"col-xs-12 col-sm-9 col-md-8 col-md-offset-1\">\r\n	          <div class=\"row\">\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://www.facebook.com/candwbusiness\"><img src=\"assets/images/C&W_Landing_FB.png\" class=\"img-responsive logo-header\"><span>candwbusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://twitter.com/CandWBusiness\"><img src=\"assets/images/C&W_Landing_TW.png\" class=\"img-responsive logo-header\"><span>@CandWBusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://vimeo.com/cwbusiness\"><img src=\"assets/images/C&W_Landing_YT.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n		<div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n		<div class=\"a\"><a target=\"_blank\" href=\"https://www.linkedin.com/company/c&w-business\"><img src=\"assets/images/logo_linkedin.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n	          </div>\r\n	  <div class=\"row\">\r\n		<div class=\"col-xs-12 col-sm-12 col-md-12 a\">\r\n			<p class=\"a text-center\">BogotÃ¡, Calle 108 45-30 Torre 3, Piso 7-9 y 10, Edif. Paralelo 108. TelÃ©fono: +5714291400.</p>\r\n			<p class=\"a text-center\"><a href=\"http://palmera.marketing/wp-content/uploads/2018/05/Notice_of_Privacy.pdf\" target=\"_blank\" style=\"text-decoration:none;font-size: 12px; \">Aviso de Privacidad - ProtecciÃ³n de datos personales Palmera Marketing S.A.S.</a></p>\r\n	            </div>\r\n	  </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n		</div>\r\n	 <!-- JS -->\r\n	 <script src=\"assets/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n	 <script src=\"assets/js/validate.js\"></script>\r\n	 </body>\r\n</html>\r\n', '24a8278e', 'Activo'),
(6, 2, 'Landing sin php', '<!DOCTYPE html>\r\n<html lang=es>\r\n	 <head>\r\n			<meta charset=\"utf-8\">\r\n			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n			<title>CHECK-IN</title>\r\n			<meta content=\"http://mundialcw.com/images/cropped-favicon-270x270.png\" name=\"msapplication-TileImage\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-32x32.png\" rel=\"icon\" sizes=\"32x32\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-192x192.png\" rel=\"icon\" sizes=\"192x192\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-180x180.png\" rel=\"apple-touch-icon-precomposed\">\r\n			<!-- Bootstrap y CSS -->\r\n			<link href=\"../items/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n			<link href=\"../items/css/fonts.css\" rel=\"stylesheet\">\r\n			<link href=\"../items/css/index.css\" rel=\"stylesheet\">\r\n			<!-- Jquery -->\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery-3.2.1.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery.validate.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery-ui.min.js\"></script>\r\n      <script type=\"text/javascript\" src=\"../items/plugins/datatable/jquery.dataTables.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/datatable/dataTables.bootstrap.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/datatable/dataTables.buttons.min.js\"></script>\r\n	 </head>\r\n	 <body>\r\n		<div class=\"container-fluid\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header_logo\" class=\"centrar\">\r\n						<img src=\"../items/images/logo_header.png\" alt=\"\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header\">\r\n						<img src=\"../items/images/header.png\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones justificar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							El <span class=\"text_bold\">TechDay</span> es el punto de encuentro para los profesionales de IT de todos los paÃ­ses de CentroamÃ©rica y Caribe, junto con las empresas lÃ­deres de TecnologÃ­as de la InformaciÃ³n a nivel mundial y <span class=\"text_bold\">C&W Business</span> lo pone a tu alcance.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							EdiciÃ³n tras ediciÃ³n los asistentes a este evento son testigos de cÃ³mo esta experiencia sirve de plataforma para los mÃ¡s importantes anuncios, innovaciones y tendencias que marcarÃ¡n la pauta en el Mercado IT en los aÃ±os por venir.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							Aprende de los mejores asistiendo a las charlas que mÃ¡s relevancia tengan para tu negocio o empresa.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_morado\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_agenda\" class=\"espacio_secciones\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								AGENDA\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_imagen_agenda\">\r\n							<img src=\"../items/images/tabla_agenda.png\" alt=\"\" width=\"100%\">\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones centrar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							AdemÃ¡s podrÃ¡s visitar nuestro stand de <span class=\"text_bold\">C&W Business</span> y conocer los productos y servicios que ayudarÃ¡n a tu negocio a llegar mÃ¡s lejos y a alcanzar tus metas.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_bold p_texto_morado mayuscula\">\r\n							Stand 9-11 SalÃ³n de Convenciones. 2do. Nivel.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_gris\">\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_parrafo_seccion_video\" class=\"justificar\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Conoce mÃ¡s de C&W Business\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_negro\">\r\n							La mejor combinaciÃ³n de tecnologÃ­a con una red de malla Ãºnica de mÃ¡s de 60.000 km de fibra Ã³ptica que conecta a mÃ¡s de 40 paÃ­ses.\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">\r\n					<div id=\"div_contenedor_video\">\r\n						<video controls id=\"video_player\" width=\"100%\" height=\"100%\">\r\n						  <!-- <source src=\"videos/Crucero1080.mp4\" type=\"video/mp4\"> -->\r\n						  <source src=\"../items/videos/CBS-Datacenter-espaÃ±ol-2015-_2.webm\" type=\"video/webm\">\r\n						</video>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_carrousel\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_carrousel\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								Nuestros Productos\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_contenedor_carrousel\">\r\n							<div id=\"carousel-reviews\" class=\"carousel slide\" data-ride=\"carousel\">\r\n	              <div class=\"carousel-inner\" style=\"text-align: center;\">\r\n	                <div class=\"item active\">\r\n	            	    <div class=\"col-md-4 col-sm-6\">\r\n				  				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessDatasheetManagedBranchUTMSP.PDF\"><img src=\"../items/images/slide1.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetDDoSProtectionESP.PDF\"><img src=\"../items/images/slide2.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DatasheetCWRETAILANALYTICSSP.pdf\"><img src=\"../items/images/slide3.png\"></a>\r\n										</div>\r\n	              	</div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/ManagedSwitchesSP.pdf\"><img src=\"../items/images/slide4.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/HCSDataSheetESPmuestra4.pdf\"><img src=\"../items/images/slide5.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DRaaSX86SP.pdf\"><img src=\"../items/images/slide6.png\"></a>\r\n										</div>\r\n	                </div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWbrochureManagedSecurityESPbaja.pdf\"><img src=\"../items/images/slide7.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetManagedWiFiESPreentrega.pdf\"><img src=\"../items/images/slide8.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetVirtualDatacenterESP.PDF\"><img src=\"../items/images/slide9.png\"></a>\r\n										</div>\r\n	                </div>\r\n	              </div>\r\n	              <a class=\"left carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"prev\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n	              </a>\r\n	              <a class=\"right carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"next\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n	              </a>\r\n	            </div>\r\n	          </div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-6 col-lg-offset-1 col-md-6 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_contenedor_texto_derecho_formulario\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Escucha las ponencias que tenemos preparadas para ti en nuestras salas VIP\r\n						</p>\r\n						<p>\r\n							<ul class=\"text_medium p_texto_negro\">\r\n								<li>Retail Analytics</li>\r\n								<li>Security Transformation y su rol en la transformaciÃ³n digital</li>\r\n								<li>ColaboraciÃ³n en Colaboraciones Unificadas</li>\r\n								<li>Caso de Ã‰xito (Invitado Especial)</li>\r\n							</ul>\r\n						</p>\r\n						<p class=\"text_bold p_texto_negro\">\r\n							<span id=\"rosa\">Lugar</span> <span class=\"mayuscula\">SalÃ³n DalÃ­ y SalÃ³n Picasso 3er Nivel</span>\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12 background_azul\">\r\n					<div id=\"div_contenedor_formulario\">\r\n						<div id=\"div_parrafo_superior_formulario\" class=\"centrar\">\r\n							<p class=\"text_book p_texto_blanco\">\r\n								RegÃ­strate ya y disfruta <br>de Ã©stas increÃ­bles ponencias <br>en nuestro Business Lounge\r\n							</p>\r\n						</div>\r\n						<form class=\"form-horizontal\" method=\"post\" id=\"form_register\">\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"1\" placeholder=\"NOMBRES:\" name=\"nombre\" id=\"nombre\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"2\" placeholder=\"1er APELLIDO:\" name=\"apellido_1\" id=\"apellido_1\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"3\" placeholder=\"2do. APELLIDO:\" name=\"apellido_2\" id=\"apellido_2\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"4\" placeholder=\"ESPECIALIDAD:\" name=\"especialidad\" id=\"especialidad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"5\" placeholder=\"No. COLEGIADO:\" name=\"colegiado\" id=\"colegiado\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"6\" placeholder=\"No. CELULAR:\" name=\"celular\" id=\"celular\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"7\" placeholder=\"EMAIL:\" name=\"email\" id=\"email\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"8\" placeholder=\"CIUDAD:\" name=\"ciudad\" id=\"ciudad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"9\" placeholder=\"PAÃS:\" name=\"pais\" id=\"pais\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"10\" placeholder=\"DIRECCIÃ“N:\" name=\"direccion\" id=\"direccion\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"11\" placeholder=\"TELÃ‰FONO:\" name=\"telefono\" id=\"telefono\" onkeypress=\"doKey(arguments[0] || window.event)\" maxlength=\"13\" />\r\n							<input type=\"hidden\" name=\"url\" id=\"url\" value=\"controller/controller.php\"/>\r\n							<input type=\"hidden\" name=\"url_gracias\" id=\"url_gracias\" value=\"view/gracias.html\"/>\r\n							<input type=\"hidden\" value=\"16\" name=\"id_evento\" id=\"id_evento\">\r\n							<input type=\"hidden\" value=\"Sin asistencia\" name=\"asistencia\" id=\"asistencia\">\r\n	            <div class=\"center-button\">\r\n	            	<button type=\"submit\" class=\"btn button-form\">CONFIRMAR</button>\r\n	            </div>\r\n		        </form>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row content-footer\" id=\"row_footer\">\r\n	      <div>\r\n	        <div class=\"col-xs-12 col-sm-3 col-md-3\">\r\n	          <img src=\"../items/images/logo_footer.png\" class=\"img-responsive logo-header\">\r\n	        </div>\r\n	        <div class=\"col-xs-12 col-sm-9 col-md-8 col-md-offset-1\">\r\n	          <div class=\"row\">\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://www.facebook.com/candwbusiness\"><img src=\"../items/images/C&W_Landing_FB.png\" class=\"img-responsive logo-header\"><span>candwbusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://twitter.com/CandWBusiness\"><img src=\"../items/images/C&W_Landing_TW.png\" class=\"img-responsive logo-header\"><span>@CandWBusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://vimeo.com/cwbusiness\"><img src=\"../items/images/C&W_Landing_YT.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n		<div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n		<div class=\"a\"><a target=\"_blank\" href=\"https://www.linkedin.com/company/c&w-business\"><img src=\"../items/images/logo_linkedin.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n	          </div>\r\n	  <div class=\"row\">\r\n		<div class=\"col-xs-12 col-sm-12 col-md-12 a\">\r\n			<p class=\"a text-center\">BogotÃ¡, Calle 108 45-30 Torre 3, Piso 7-9 y 10, Edif. Paralelo 108. TelÃ©fono: +5714291400.</p>\r\n			<p class=\"a text-center\"><a href=\"http://palmera.marketing/wp-content/uploads/2018/05/Notice_of_Privacy.pdf\" target=\"_blank\" style=\"text-decoration:none;font-size: 12px; \">Aviso de Privacidad - ProtecciÃ³n de datos personales Palmera Marketing S.A.S.</a></p>\r\n	            </div>\r\n	  </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n		</div>\r\n	 <!-- JS -->\r\n	 <script src=\"../items/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n	 <script src=\"../items/js/validate.js\"></script>\r\n	 </body>\r\n</html>\r\n', '5e0066d7', 'Activo');
INSERT INTO `landing_registro` (`id`, `id_evento`, `nombre_landing`, `data_html`, `hash_id`, `estatus`) VALUES
(7, 2, 'Visitador Medico', '\r\n\r\n<!DOCTYPE html>\r\n<html lang=es>\r\n	 <head>\r\n			<meta charset=\"utf-8\">\r\n			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n			<title>CHECK-IN</title>\r\n			<meta content=\"http://mundialcw.com/images/cropped-favicon-270x270.png\" name=\"msapplication-TileImage\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-32x32.png\" rel=\"icon\" sizes=\"32x32\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-192x192.png\" rel=\"icon\" sizes=\"192x192\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-180x180.png\" rel=\"apple-touch-icon-precomposed\">\r\n			<!-- Bootstrap y CSS -->\r\n			<link href=\"../items/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n			<link href=\"../items/css/fonts.css\" rel=\"stylesheet\">\r\n			<link href=\"../items/css/index.css\" rel=\"stylesheet\">\r\n			<!-- Jquery -->\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery-3.2.1.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery.validate.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery-ui.min.js\"></script>\r\n      <script type=\"text/javascript\" src=\"../items/plugins/datatable/jquery.dataTables.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/datatable/dataTables.bootstrap.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/datatable/dataTables.buttons.min.js\"></script>\r\n	 </head>\r\n	 <body>\r\n		<div class=\"container-fluid\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header_logo\" class=\"centrar\">\r\n						<img src=\"../items/images/menarini_icon.jpg\" alt=\"\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<!-- <div  style=\"text-align: right; margin: 10px auto; margin-right: 20px;\">\r\n				<a href=\"../controller/salir.php\">SALIR <img src=\"../items/images/close.jpg\" alt=\"\" width=\"40px\"></a>\r\n			</div> -->\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header\">\r\n						<img src=\"../items/images/header.jpg\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_contenedor_texto_derecho_formulario\">\r\n						<p class=\"text_helvetica p_texto_negro\">\r\n							El evento mÃ¡s esperado por la comunidad odontolÃ³gica estÃ¡ aquÃ­ y usted tiene la oportunidad de asistir y actualizar sus conocimientos en compaÃ±Ã­a de los mejores, solo debe llenar el formulario de registro para confirmar su asistencia.\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12 col-xs-offset-0\" id=\"form_background\">\r\n					<div id=\"div_contenedor_formulario\">\r\n						<div id=\"div_parrafo_superior_formulario\" class=\"centrar\">\r\n							<p class=\"text_book p_texto_blanco\">\r\n								Complete sus datos para asistir:\r\n							</p>\r\n						</div>\r\n						<form class=\"form-horizontal\" method=\"post\" id=\"form_register\">\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"1\" placeholder=\"NOMBRES:\" name=\"nombre\" id=\"nombre\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"2\" placeholder=\"1er APELLIDO:\" name=\"apellido_1\" id=\"apellido_1\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"3\" placeholder=\"2do. APELLIDO:\" name=\"apellido_2\" id=\"apellido_2\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"4\" placeholder=\"ESPECIALIDAD:\" name=\"especialidad\" id=\"especialidad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"5\" placeholder=\"No. COLEGIADO:\" name=\"colegiado\" id=\"colegiado\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"6\" placeholder=\"No. CELULAR:\" name=\"celular\" id=\"celular\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"7\" placeholder=\"EMAIL:\" name=\"email\" id=\"email\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"8\" placeholder=\"CIUDAD:\" name=\"ciudad\" id=\"ciudad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"9\" placeholder=\"PAÃS:\" name=\"pais\" id=\"pais\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"10\" placeholder=\"DIRECCIÃ“N:\" name=\"direccion\" id=\"direccion\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"11\" placeholder=\"TELÃ‰FONO:\" name=\"telefono\" id=\"telefono\" onkeypress=\"doKey(arguments[0] || window.event)\" maxlength=\"13\" />\r\n	            <div id=\"div_checkbox_terminos\">\r\n              	<input type=\"checkbox\" value=\"1\" name=\"terminos\" id=\"terminos\" tabindex=\"12\" class=\"ui-corner-all\"><span id=\"span_terminos\">*Acepto las polÃ­ticas de manejo de datos</span>\r\n              </div>\r\n							<input type=\"hidden\" name=\"url\" id=\"url\" value=\"../controller/controller.php\">\r\n							<input type=\"hidden\" name=\"url_gracias\" id=\"url_gracias\" value=\"../view/gracias.html\"/>\r\n							<input type=\"hidden\" value=\"150\" name=\"id_evento\" id=\"id_evento\">\r\n              <input type=\"hidden\" value=\"Sin asistencia\" name=\"asistencia\" id=\"asistencia\">\r\n	            <div class=\"center-button\">\r\n	            	<button type=\"submit\" class=\"btn button-form\">ENVIAR</button>\r\n	            </div>\r\n		        </form>\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 agenda_background\">\r\n					<div id=\"div_titutlo_agenda\">\r\n						<span class=\"text_helvetica\">AGENDA</span>\r\n					</div>\r\n					<div id=\"div_agenda\">\r\n						<img src=\"../items/images/agenda.jpg\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"row\">\r\n       <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 margen_carousel\">\r\n         <div id=\"div_titutlo_conferencistas\">\r\n           <span class=\"mayuscula gris text_helvetica\">conferencistas</span>\r\n         </div>\r\n         <div id=\"myCarousel2\" class=\"carousel slide\" data-ride=\"carousel\">\r\n          <!-- Indicators -->\r\n          <ol class=\"carousel-indicators\">\r\n            <li data-target=\"#myCarousel2\" data-slide-to=\"0\" class=\"active\"></li>\r\n            <li data-target=\"#myCarousel2\" data-slide-to=\"1\"></li>\r\n            <li data-target=\"#myCarousel2\" data-slide-to=\"2\"></li>\r\n          </ol>\r\n\r\n          <!-- Wrapper for slides -->\r\n          <div class=\"carousel-inner\">\r\n            <div class=\"item active\">\r\n              <div class=\"row\">\r\n                <div class=\"col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n                  <div class=\"div_img_conferencista\">\r\n                    <img src=\"../items/images/conf_1.jpg\" alt=\"\" class=\"img-responsive\">\r\n                  </div>\r\n                </div>\r\n                <div class=\"col-lg-6 col-lg-offset-0 col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1\">\r\n                  <div class=\"div_texto_conferencista\">\r\n                    <span class=\"negrita mayuscula span_nombres gris\">Dr. JosÃ© Luis Cobos Serrano</span><br>\r\n                    <p class=\"p_texto_conferencista gris\">\r\n                      Profesor del mÃ¡ster de implantologÃ­a y rehabilitaciÃ³n oral en la Universidad Europea de Madrid, EspaÃ±a.\r\n                    </p>\r\n                    <div style=\"width: 100%; text-align: right; margin-left:-60px;\"><button type=\"button\" class=\"btn btn-link negrita span_leer_mas\" data-toggle=\"modal\" data-target=\"#myModal_1\">Leer mÃ¡s</button></div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n\r\n            <div class=\"item\">\r\n              <div class=\"row\">\r\n                <div class=\"col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n                  <div class=\"div_img_conferencista\">\r\n                    <img src=\"../items/images/conf_2.jpg\" alt=\"\" class=\"img-responsive\">\r\n                  </div>\r\n                </div>\r\n                <div class=\"col-lg-6 col-lg-offset-0 col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1\">\r\n                  <div class=\"div_texto_conferencista\">\r\n                    <span class=\"negrita mayuscula span_nombres gris\">Guillermo UzcÃ¡tegui</span><br>\r\n                    <p class=\"p_texto_conferencista gris\">\r\n                      Director de IngenierÃ­a para Caribe, Centro AmÃ©rica y paÃ­ses Andinos, con 24 aÃ±os de experiencia en la industria, 18 aÃ±os trabajando para Cisco en diversos roles, tanto en AmÃ©rica Latina como en Europa.  \r\n                    </p>\r\n                    <div style=\"width: 100%; text-align: right; margin-left:-60px;\"><button type=\"button\" class=\"btn btn-link negrita span_leer_mas\" data-toggle=\"modal\" data-target=\"#myModal_2\">Leer mÃ¡s</button></div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          \r\n            <div class=\"item\">\r\n              <div class=\"row\">\r\n                <div class=\"col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n                  <div class=\"div_img_conferencista\">\r\n                    <img src=\"../items/images/conf_3.jpg\" alt=\"\" class=\"img-responsive\">\r\n                  </div>\r\n                </div>\r\n                <div class=\"col-lg-6 col-lg-offset-0 col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1\">\r\n                  <div class=\"div_texto_conferencista\">\r\n                    <span class=\"negrita mayuscula span_nombres gris\">Robert Landires</span><br>\r\n                    <p class=\"p_texto_conferencista gris\">\r\n                      Consultor de Cisco en Redes Empresariales para Caribe, Centro AmÃ©rica y paÃ­ses Andinos. Mas de 13 aÃ±os de experiencia en la industria y 7 aÃ±os de experiencia, trabajando para Cisco en diversos roles.  \r\n                    </p>\r\n                    <div style=\"width: 100%; text-align: right; margin-left:-60px;\"><button type=\"button\" class=\"btn btn-link negrita span_leer_mas\" data-toggle=\"modal\" data-target=\"#myModal_3\">Leer mÃ¡s</button></div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n	          <!-- Left and right controls -->\r\n	          <a class=\"left carousel-control\" href=\"#myCarousel2\" data-slide=\"prev\">\r\n	            <img src=\"../items/images/le.png\" class=\"arroy_slider_2\">\r\n	          </a>\r\n	          <a class=\"right carousel-control\" href=\"#myCarousel2\" data-slide=\"next\">\r\n	            <img src=\"../items/images/ri.png\" class=\"arroy_slider_2\">\r\n	          </a>\r\n	        </div>\r\n	       </div>\r\n	     </div>\r\n	   </div>\r\n\r\n	  	<!-- Modal -->\r\n	    <div class=\"modal fade\" id=\"myModal_1\" role=\"dialog\">\r\n	      <div class=\"modal-dialog\">\r\n	      \r\n	        <!-- Modal content-->\r\n	        <div class=\"modal-content\">\r\n	          <div class=\"modal-header\">\r\n	            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n	            <span class=\"modal-title negrita mayuscula span_nombres gris\">Dr. JosÃ© Luis Cobos Serrano</span>\r\n	          </div>\r\n	          <div class=\"modal-body\">\r\n	            <p class=\"p_texto_conferencista gris\">\r\n	              Es un profesional experimentado en productos y servicios de misiÃ³n crÃ­tica con mÃ¡s de 15 aÃ±os en el diseÃ±o y gestiÃ³n de soluciones de TI complejas. <br>\r\n	              Actualmente es Director Regional de IngeniarÃ­a de Ventas en LATAM para CW Business. Lidera el equipo regional de expertos que trabaja directamente con los clientes, enfocados en entender las necesidades del negocio para organizaciones de todos los tamaÃ±os, y en el asesoramiento en procesos complejos de transformaciÃ³n y adopciÃ³n de TI. <br>\r\n	              Tiene un MBA y es Ingeniero Sistemas, con varios estudios de postgrados en alta gerencia y direcciÃ³n estratÃ©gica, cuenta con diversas certificaciones de reconocimiento internacional en la industria de TI. Es un orador frecuente en conferencias internacionales y eventos regionales sobre los temas de ciberseguridad, servicios en la nube y mejores prÃ¡cticas en proceso de transformaciÃ³n.\r\n	            </p>\r\n	          </div>\r\n	          <div class=\"modal-footer\">\r\n	            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Cerrar</button>\r\n	          </div>\r\n	        </div>\r\n	        \r\n	      </div>\r\n	    </div>\r\n\r\n	    <!-- Modal -->\r\n	    <div class=\"modal fade\" id=\"myModal_2\" role=\"dialog\">\r\n	      <div class=\"modal-dialog\">\r\n	      \r\n	        <!-- Modal content-->\r\n	        <div class=\"modal-content\">\r\n	          <div class=\"modal-header\">\r\n	            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n	            <span class=\"modal-title negrita mayuscula span_nombres gris\">Guillermo UzcÃ¡tegui</span>\r\n	          </div>\r\n	          <div class=\"modal-body\">\r\n	            <p class=\"p_texto_conferencista gris\">\r\n	              Director de IngenierÃ­a para Caribe, Centro AmÃ©rica y paÃ­ses Andinos, con 24 aÃ±os de experiencia en la industria, 18 aÃ±os trabajando para Cisco en diversos roles, tanto en AmÃ©rica Latina como en Europa.  \r\n								<br>\r\n								Durante la Ãºltima dÃ©cada estuvo a cargo de la expansiÃ³n en la regiÃ³n de Centro AmÃ©rica y Caribes de proveedores de â€œManaged Servicesâ€ definiendo la oferta de servicios y el modelo de operaciÃ³n en paÃ­ses como PanamÃ¡, Guatemala y Rep. Dominicana.  \r\n								<br>\r\n								En el 2017 se une a una de las top 5 compaÃ±Ã­as de Cyber Seguridad en el mundo, Fortinet,  para atender y desarrollar el mercado de proveedores de servicios y telcoÂ´s debido el impacto que pueden tener en la seguridad con su importante numero de clientes corporativos y de consumo.  \r\n								<br>\r\n								Actualmente es Director Regional de IngeniarÃ­a de Ventas en LATAM para CW Business. Lidera el equipo regional d\r\n								e expertos que trabaja directamente con los clientes, enfocados en entender las necesidades del negocio para organizaciones de todos los tamaÃ±os, y en el asesoramiento en procesos complejos de transformaciÃ³n y adopciÃ³n de TI. Tiene un MBA y es Ingeniero Sistemas, con varios estudios de postgrados en alta gerencia y direcciÃ³n estratÃ©gica, cuenta con diversas certificaciones de reconocimiento internacional en la industria de TI. Es un orador frecuente en conferencias internacionales y eventos regionales sobre los temas de ciberseguridad, servicios en la nube y mejores prÃ¡cticas en proceso de transformaciÃ³n.\r\n	            </p>\r\n	          </div>\r\n	          <div class=\"modal-footer\">\r\n	            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Cerrar</button>\r\n	          </div>\r\n	        </div>\r\n	        \r\n	      </div>\r\n	    </div>\r\n\r\n	    <!-- Modal -->\r\n	    <div class=\"modal fade\" id=\"myModal_3\" role=\"dialog\">\r\n	      <div class=\"modal-dialog\">\r\n	      \r\n	        <!-- Modal content-->\r\n	        <div class=\"modal-content\">\r\n	          <div class=\"modal-header\">\r\n	            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n	            <span class=\"modal-title negrita mayuscula span_nombres gris\">Robert Landires</span>\r\n	          </div>\r\n	          <div class=\"modal-body\">\r\n	            <p class=\"p_texto_conferencista gris\">\r\n	              Consultor de Cisco en Redes Empresariales para Caribe, Centro AmÃ©rica y paÃ­ses Andinos. Mas de 13 aÃ±os de experiencia en la industria y 7 aÃ±os de experiencia, trabajando para Cisco en diversos roles.  \r\n								<br>\r\n								Durante la Ãºltima dÃ©cada estuvo a cargo de la expansiÃ³n en la regiÃ³n de Centro AmÃ©rica y Caribes de proveedores de â€œManaged Servicesâ€ definiendo la oferta de servicios y el modelo de operaciÃ³n en paÃ­ses como PanamÃ¡, Guatemala y Rep. Dominicana.  \r\n								<br>\r\n								En el 2017 se une a una de las top 5 compaÃ±Ã­as de Cyber Seguridad en el mundo, Fortinet,  para atender y desarrollar el mercado de proveedores de servicios y telcoÂ´s debido el impacto que pueden tener en la seguridad con su importante numero de clientes corporativos y de consumo.  \r\n								<br>\r\n								Actualmente es Director Regional de IngeniarÃ­a de Ventas en LATAM para CW Business. Lidera el equipo regional d\r\n								e expertos que trabaja directamente con los clientes, enfocados en entender las necesidades del negocio para organizaciones de todos los tamaÃ±os, y en el asesoramiento en procesos complejos de transformaciÃ³n y adopciÃ³n de TI. Tiene un MBA y es Ingeniero Sistemas, con varios estudios de postgrados en alta gerencia y direcciÃ³n estratÃ©gica, cuenta con diversas certificaciones de reconocimiento internacional en la industria de TI. Es un orador frecuente en conferencias internacionales y eventos regionales sobre los temas de ciberseguridad, servicios en la nube y mejores prÃ¡cticas en proceso de transformaciÃ³n.\r\n	            </p>\r\n	          </div>\r\n	          <div class=\"modal-footer\">\r\n	            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Cerrar</button>\r\n	          </div>\r\n	        </div>\r\n	      </div>\r\n	    </div>\r\n\r\n			<div id=\"div_contenedor_asistir\">\r\n		    <div class=\"row\">\r\n		    	<div class=\"col-lg-12 col-lg-offset-0 col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-10 col-xs-offset-1\">\r\n			    	<div id=\"div_contenedor_asistir\">\r\n			    		<div id=\"div_texto_asistir\">\r\n			    			<span id=\"span_texto_asistir\">\r\n			    				No pierda ningÃºn detalle <br>\r\n									de este simposium\r\n			    			</span>\r\n			    		</div>\r\n			    		<div id=\"div_boton_asistir\">\r\n			    			<a href=\"#form_background\"><button class=\"btn\" id=\"boton_asistir\"><span class=\"mayuscula negrita text_helvetica\" id=\"span_texto_boton\">ASISTIR</span></button></a>\r\n			    		</div>\r\n			    	</div>	\r\n		    	</div>\r\n		    </div>\r\n		    <div class=\"row\">\r\n		    	<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n		    		<div class=\"row\" id=\"margen_redes_sociales\">\r\n		    			<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n		    				<a href=\"https://www.facebook.com/MenariniCA/\" target=\"_blank\">\r\n			    				<div class=\"div_img_redes_sociales\">\r\n			    					<img src=\"../items/images/C&W_Landing_FB.png\" alt=\"\" width=\"23px\">\r\n			    				</div>\r\n			    				<div class=\"div_texto_redes_sociales\">\r\n			    					<span class=\"span_texto_redes_sociales\">MenariniCA</span>\r\n			    				</div>\r\n			    			</a>\r\n		    			</div>\r\n		    			<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n		    				<a href=\"https://twitter.com/menarinica?lang=es\" target=\"_blank\">\r\n			    				<div class=\"div_img_redes_sociales\">\r\n			    					<img src=\"../items/images/C&W_Landing_TW.png\" alt=\"\" width=\"23px\">\r\n			    				</div>\r\n			    				<div class=\"div_texto_redes_sociales\">\r\n			    					<span class=\"span_texto_redes_sociales\">@MenariniCA</span>\r\n			    				</div>\r\n			    			</a>\r\n		    			</div>\r\n		    			<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n		    				<a href=\"https://www.youtube.com/user/MenariniCA\" target=\"_blank\">\r\n			    				<div class=\"div_img_redes_sociales\">\r\n			    					<img src=\"../items/images/C&W_Landing_YT.png\" alt=\"\" width=\"23px\">\r\n			    				</div>\r\n			    				<div class=\"div_texto_redes_sociales\">\r\n			    					<span class=\"span_texto_redes_sociales\">MenariniCA</span>\r\n			    				</div>\r\n		    				</a>\r\n		    			</div>\r\n		    			<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-6\">\r\n		    				<a href=\"https://www.linkedin.com/company/grupomenarinicentroam%C3%A9ricayelcaribe/?originalSubdomain=ve\" target=\"_blank\">\r\n			    				<div class=\"div_img_redes_sociales\">\r\n			    					<img src=\"../items/images/logo_linkedin.png\" alt=\"\" width=\"23px\">\r\n			    				</div>\r\n			    				<div class=\"div_texto_redes_sociales\">\r\n			    					<span class=\"span_texto_redes_sociales\">grupomenarini_ca</span>\r\n			    				</div>\r\n			    			</a>\r\n		    			</div>\r\n		    		</div>\r\n		    	</div>\r\n		    </div>\r\n			</div>\r\n\r\n			<div class=\"row\" id=\"div_background_footer_web\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_web_footer\">\r\n						<span class=\"negrita text_helvetica\"><a href=\"http://www.menarini-ca.com/\" id=\"enlace_web\">www.menarini-ca.com</a></span>\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_terminos\">\r\n						<p class=\"text_helvetica negrita\" id=\"terminos_condiciones\">\r\n							*PolÃ­tica de privacidad: <br>\r\n							En cumplimiento de la ley 1581 de 2012 y el Decreto 1377 de 2013 sobre protecciÃ³n de datos personales, le manifestamos que la informaciÃ³n aquÃ­ suministrada se encontrarÃ¡ incluida en nuestras bases de datos y tendrÃ¡ el siguiente tratamiento:<br>\r\n							Autorizo a MENARINI /o la agencia Palmera Marketing S.A.S. para recolectar, procesar y utilizar lo datos personales contenidos en el presente formulario y para administrarlos en desarrollo de su objeto.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n    </div>\r\n  </body>\r\n	<!-- JS -->\r\n	<script src=\"../items/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n	<script src=\"../items/js/validate.js\"></script>\r\n</html>\r\n', '6df4e73b', 'Activo'),
(8, 16, 'Landing de prueba', '<!DOCTYPE html>\r\n<html lang=es>\r\n	 <head>\r\n			<meta charset=\"utf-8\">\r\n			<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n			<title>CHECK-IN</title>\r\n			<meta content=\"http://mundialcw.com/images/cropped-favicon-270x270.png\" name=\"msapplication-TileImage\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-32x32.png\" rel=\"icon\" sizes=\"32x32\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-192x192.png\" rel=\"icon\" sizes=\"192x192\">\r\n			<link href=\"http://mundialcw.com/images/cropped-favicon-180x180.png\" rel=\"apple-touch-icon-precomposed\">\r\n			<!-- Bootstrap y CSS -->\r\n			<link href=\"../items/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n			<link href=\"../items/css/fonts.css\" rel=\"stylesheet\">\r\n			<link href=\"../items/css/index.css\" rel=\"stylesheet\">\r\n			<!-- Jquery -->\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery-3.2.1.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery.validate.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/jquery/jquery-ui.min.js\"></script>\r\n      <script type=\"text/javascript\" src=\"../items/plugins/datatable/jquery.dataTables.min.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/datatable/dataTables.bootstrap.js\"></script>\r\n			<script type=\"text/javascript\" src=\"../items/plugins/datatable/dataTables.buttons.min.js\"></script>\r\n	 </head>\r\n	 <body>\r\n		<div class=\"container-fluid\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header_logo\" class=\"centrar\">\r\n						<img src=\"../items/images/logo_header.png\" alt=\"\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding\">\r\n					<div id=\"imagen_header\">\r\n						<img src=\"../items/images/header.png\" alt=\"\" width=\"100%\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones justificar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							El <span class=\"text_bold\">TechDay</span> es el punto de encuentro para los profesionales de IT de todos los paÃ­ses de CentroamÃ©rica y Caribe, junto con las empresas lÃ­deres de TecnologÃ­as de la InformaciÃ³n a nivel mundial y <span class=\"text_bold\">C&W Business</span> lo pone a tu alcance.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							EdiciÃ³n tras ediciÃ³n los asistentes a este evento son testigos de cÃ³mo esta experiencia sirve de plataforma para los mÃ¡s importantes anuncios, innovaciones y tendencias que marcarÃ¡n la pauta en el Mercado IT en los aÃ±os por venir.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_morado\">\r\n							Aprende de los mejores asistiendo a las charlas que mÃ¡s relevancia tengan para tu negocio o empresa.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_morado\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_agenda\" class=\"espacio_secciones\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								AGENDA\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_imagen_agenda\">\r\n							<img src=\"../items/images/tabla_agenda.png\" alt=\"\" width=\"100%\">\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div class=\"espacio_secciones centrar\">\r\n						<p class=\"text_medium p_texto_morado\">\r\n							AdemÃ¡s podrÃ¡s visitar nuestro stand de <span class=\"text_bold\">C&W Business</span> y conocer los productos y servicios que ayudarÃ¡n a tu negocio a llegar mÃ¡s lejos y a alcanzar tus metas.\r\n						</p>\r\n						<br>\r\n						<p class=\"text_bold p_texto_morado mayuscula\">\r\n							Stand 9-11 SalÃ³n de Convenciones. 2do. Nivel.\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_gris\">\r\n				<div class=\"col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_parrafo_seccion_video\" class=\"justificar\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Conoce mÃ¡s de C&W Business\r\n						</p>\r\n						<br>\r\n						<p class=\"text_medium p_texto_negro\">\r\n							La mejor combinaciÃ³n de tecnologÃ­a con una red de malla Ãºnica de mÃ¡s de 60.000 km de fibra Ã³ptica que conecta a mÃ¡s de 40 paÃ­ses.\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">\r\n					<div id=\"div_contenedor_video\">\r\n						<video controls id=\"video_player\" width=\"100%\" height=\"100%\">\r\n						  <!-- <source src=\"videos/Crucero1080.mp4\" type=\"video/mp4\"> -->\r\n						  <source src=\"../items/videos/CBS-Datacenter-espaÃ±ol-2015-_2.webm\" type=\"video/webm\">\r\n						</video>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\" id=\"background_carrousel\">\r\n				<div class=\"col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1 quitar_padding\">\r\n					<div id=\"div_contenedor_carrousel\">\r\n						<div id=\"div_titulo\">\r\n							<h1 id=\"h1_titulo\" class=\"mayuscula\">\r\n								Nuestros Productos\r\n							</h1>\r\n						</div>\r\n						<div id=\"div_contenedor_carrousel\">\r\n							<div id=\"carousel-reviews\" class=\"carousel slide\" data-ride=\"carousel\">\r\n	              <div class=\"carousel-inner\" style=\"text-align: center;\">\r\n	                <div class=\"item active\">\r\n	            	    <div class=\"col-md-4 col-sm-6\">\r\n				  				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessDatasheetManagedBranchUTMSP.PDF\"><img src=\"../items/images/slide1.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetDDoSProtectionESP.PDF\"><img src=\"../items/images/slide2.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DatasheetCWRETAILANALYTICSSP.pdf\"><img src=\"../items/images/slide3.png\"></a>\r\n										</div>\r\n	              	</div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/ManagedSwitchesSP.pdf\"><img src=\"../items/images/slide4.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/HCSDataSheetESPmuestra4.pdf\"><img src=\"../items/images/slide5.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/DRaaSX86SP.pdf\"><img src=\"../items/images/slide6.png\"></a>\r\n										</div>\r\n	                </div>\r\n	                <div class=\"item\">\r\n	                  <div class=\"col-md-4 col-sm-6\">\r\n	        				    <a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWbrochureManagedSecurityESPbaja.pdf\"><img src=\"../items/images/slide7.png\"></a>\r\n										</div>\r\n	            			<div class=\"col-md-4 col-sm-6 hidden-xs\">\r\n							    		<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetManagedWiFiESPreentrega.pdf\"><img src=\"../items/images/slide8.png\"></a>\r\n										</div>\r\n										<div class=\"col-md-4 col-sm-6 hidden-sm hidden-xs\">\r\n											<a target=\"blank\" href=\"http://cw-eventos.com/ADJUNTOS/001/CWBusinessdatasheetVirtualDatacenterESP.PDF\"><img src=\"../items/images/slide9.png\"></a>\r\n										</div>\r\n	                </div>\r\n	              </div>\r\n	              <a class=\"left carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"prev\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n	              </a>\r\n	              <a class=\"right carousel-control\" href=\"#carousel-reviews\" role=\"button\" data-slide=\"next\">\r\n	                  <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n	              </a>\r\n	            </div>\r\n	          </div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-6 col-lg-offset-1 col-md-6 col-md-offset-1 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1\">\r\n					<div id=\"div_contenedor_texto_derecho_formulario\">\r\n						<p class=\"text_bold p_texto_negro\">\r\n							Escucha las ponencias que tenemos preparadas para ti en nuestras salas VIP\r\n						</p>\r\n						<p>\r\n							<ul class=\"text_medium p_texto_negro\">\r\n								<li>Retail Analytics</li>\r\n								<li>Security Transformation y su rol en la transformaciÃ³n digital</li>\r\n								<li>ColaboraciÃ³n en Colaboraciones Unificadas</li>\r\n								<li>Caso de Ã‰xito (Invitado Especial)</li>\r\n							</ul>\r\n						</p>\r\n						<p class=\"text_bold p_texto_negro\">\r\n							<span id=\"rosa\">Lugar</span> <span class=\"mayuscula\">SalÃ³n DalÃ­ y SalÃ³n Picasso 3er Nivel</span>\r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12 background_azul\">\r\n					<div id=\"div_contenedor_formulario\">\r\n						<div id=\"div_parrafo_superior_formulario\" class=\"centrar\">\r\n							<p class=\"text_book p_texto_blanco\">\r\n								RegÃ­strate ya y disfruta <br>de Ã©stas increÃ­bles ponencias <br>en nuestro Business Lounge\r\n							</p>\r\n						</div>\r\n						<form class=\"form-horizontal\" method=\"post\" id=\"form_register\">\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"1\" placeholder=\"NOMBRES:\" name=\"nombre\" id=\"nombre\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"2\" placeholder=\"1er APELLIDO:\" name=\"apellido_1\" id=\"apellido_1\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"3\" placeholder=\"2do. APELLIDO:\" name=\"apellido_2\" id=\"apellido_2\"/>\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"4\" placeholder=\"ESPECIALIDAD:\" name=\"especialidad\" id=\"especialidad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"5\" placeholder=\"No. COLEGIADO:\" name=\"colegiado\" id=\"colegiado\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"6\" placeholder=\"No. CELULAR:\" name=\"celular\" id=\"celular\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"7\" placeholder=\"EMAIL:\" name=\"email\" id=\"email\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"8\" placeholder=\"CIUDAD:\" name=\"ciudad\" id=\"ciudad\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"9\" placeholder=\"PAÃS:\" name=\"pais\" id=\"pais\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"10\" placeholder=\"DIRECCIÃ“N:\" name=\"direccion\" id=\"direccion\" />\r\n	            <input class=\"form-control input-form\" type=\"text\" tabindex=\"11\" placeholder=\"TELÃ‰FONO:\" name=\"telefono\" id=\"telefono\" onkeypress=\"doKey(arguments[0] || window.event)\" maxlength=\"13\" />\r\n							<input type=\"hidden\" name=\"url\" id=\"url\" value=\"controller/controller.php\"/>\r\n							<input type=\"hidden\" name=\"url_gracias\" id=\"url_gracias\" value=\"view/gracias.html\"/>\r\n							<input type=\"hidden\" value=\"16\" name=\"id_evento\" id=\"id_evento\">\r\n							<input type=\"hidden\" value=\"Sin asistencia\" name=\"asistencia\" id=\"asistencia\">\r\n	            <div class=\"center-button\">\r\n	            	<button type=\"submit\" class=\"btn button-form\">CONFIRMAR</button>\r\n	            </div>\r\n		        </form>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"row content-footer\" id=\"row_footer\">\r\n	      <div>\r\n	        <div class=\"col-xs-12 col-sm-3 col-md-3\">\r\n	          <img src=\"../items/images/logo_footer.png\" class=\"img-responsive logo-header\">\r\n	        </div>\r\n	        <div class=\"col-xs-12 col-sm-9 col-md-8 col-md-offset-1\">\r\n	          <div class=\"row\">\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://www.facebook.com/candwbusiness\"><img src=\"../items/images/C&W_Landing_FB.png\" class=\"img-responsive logo-header\"><span>candwbusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://twitter.com/CandWBusiness\"><img src=\"../items/images/C&W_Landing_TW.png\" class=\"img-responsive logo-header\"><span>@CandWBusiness</span></a></div>\r\n	            </div>\r\n	            <div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n			<div class=\"a\"><a target=\"_blank\" href=\"https://vimeo.com/cwbusiness\"><img src=\"../items/images/C&W_Landing_YT.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n		<div class=\"col-xs-5 col-xs-offset-1 col-sm-5 col-sm-offset-1 col-md-3 col-md-offset-0\">\r\n		<div class=\"a\"><a target=\"_blank\" href=\"https://www.linkedin.com/company/c&w-business\"><img src=\"../items/images/logo_linkedin.png\" class=\"img-responsive logo-header\"><span>C&W Business</span></a></div>\r\n	            </div>\r\n	          </div>\r\n	  <div class=\"row\">\r\n		<div class=\"col-xs-12 col-sm-12 col-md-12 a\">\r\n			<p class=\"a text-center\">BogotÃ¡, Calle 108 45-30 Torre 3, Piso 7-9 y 10, Edif. Paralelo 108. TelÃ©fono: +5714291400.</p>\r\n			<p class=\"a text-center\"><a href=\"http://palmera.marketing/wp-content/uploads/2018/05/Notice_of_Privacy.pdf\" target=\"_blank\" style=\"text-decoration:none;font-size: 12px; \">Aviso de Privacidad - ProtecciÃ³n de datos personales Palmera Marketing S.A.S.</a></p>\r\n	            </div>\r\n	  </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n		</div>\r\n	 <!-- JS -->\r\n	 <script src=\"../items/plugins/bootstrap/js/bootstrap.min.js\"></script>\r\n	 <script src=\"../items/js/validate.js\"></script>\r\n	 </body>\r\n</html>\r\n', '781ffcb2', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_evento`
--

DROP TABLE IF EXISTS `lista_evento`;
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
(1, 'evento1', '2017-11-08', 'direccionaa', NULL, 1),
(2, 'evento2', '2017-11-22', 'direccion2', NULL, 1),
(3, 'evento3', '2017-11-15', 'direccion3', NULL, 1),
(4, 'evento4', '2017-11-30', 'la direccion', NULL, 1),
(5, 'evento5', '2017-11-29', 'En Los Teques', NULL, 1),
(6, 'evento6', '2017-12-14', 'En Caracas', NULL, 0),
(7, 'evento7', '2017-12-27', 'En Valencia', NULL, 0),
(8, 'evento8', '2017-12-29', 'Aragua', NULL, 0),
(9, 'evento9', '2017-12-29', 'San Homero', NULL, 0),
(10, 'evento9', '2017-12-31', 'San Homero', NULL, 0),
(11, 'evento7', '2017-12-25', 'Aragua', NULL, 0),
(12, 'evento7', '2017-12-31', 'Aragua', NULL, 0),
(13, 'evento7', '2017-12-31', 'Aragua', NULL, 0),
(14, 'ddd', '2017-12-19', 'qeeee', NULL, 0),
(15, 'Evento de Prueba con Check In', '2018-08-10', 'Caracas', NULL, 1),
(16, 'Salida a Produccion', '2018-09-01', 'Hotel Alba CCS', NULL, 1),
(17, 'Prueba de Usuario 1', '2018-09-07', 'Hotel Pestana', NULL, 0),
(18, 'Prueba de Usuario', '2018-09-07', 'Hotel Pestana', NULL, 0),
(19, 'pRUBEAS DOS', '2018-08-31', 'Hotel Pestana', NULL, 1),
(20, 'pRUBEAS DOS', '2018-08-31', 'Hotel Pestana', NULL, 1),
(21, 'pRUBEAS DOS', '2018-08-31', 'Hotel Pestana', NULL, 1),
(22, 'pRUBEAS DOS', '2018-08-31', 'Hotel Pestana', NULL, 1),
(23, 'pRUBEAS DOS', '2018-08-31', 'Hotel Pestana', NULL, 1),
(24, 'pRUEBA 2', '2018-08-31', 'Hotel Alba CCS', NULL, 1),
(25, 'pRUEBA 2', '2018-08-31', 'Hotel Alba CCS', NULL, 1),
(26, 'pRUEBA 2', '2018-09-02', 'Hotel Alba CCS', NULL, 1),
(27, 'pRUEBA 2', '2018-09-02', 'Hotel Alba CCS', NULL, 1),
(28, 'pRUEBA 2', '2018-09-02', 'Hotel Alba CCS', NULL, 0),
(29, 'pRUEBA 2', '2018-09-02', 'Hotel Alba CCS', NULL, 1),
(34, 'aaaaa', '2018-08-22', 'aaaaa', NULL, 0),
(35, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 0),
(36, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 1),
(37, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 1),
(38, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 1),
(39, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 1),
(40, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 1),
(41, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 0),
(42, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 0),
(43, 'Pruebas  de Usuario 3', '2018-09-01', 'Hotel Pestana', NULL, 1),
(44, 'Prueba de Usuario 3', '2018-09-02', 'Hotel Pestana', NULL, 1),
(45, 'Meeting IT', '2018-08-31', 'Hotel Marriot CCS', NULL, 1),
(46, 'Prueba funcional 2', '2018-08-30', 'Hotel Alba CCS', NULL, 0),
(47, 'PF4', '2018-08-30', 'Hotel Alba CCS', NULL, 1),
(48, 'BlizzCon', '2018-11-02', 'Anaheim Convention Center de Anaheim, California.', NULL, 1),
(49, 'BlizzCon2', '2018-08-30', 'Anaheim Convention Center de Anaheim, California.', NULL, 1),
(50, 'BlizzCon 2018', '2018-08-15', 'Anaheim Convention Center de Anaheim', NULL, 0),
(51, 'Encuesta State of Union', '2018-09-03', 'Oficinas PALM ERA CCS', NULL, 0),
(52, 'Encuesta PALM ERA', '2018-09-05', 'Hotel Renassisenn', NULL, 0),
(53, 'ENCUESTA Palmera', '2018-09-05', 'Hotel Renassisenn', NULL, 0),
(54, 'BPO Summit', '2018-11-09', 'Guatemala', NULL, 0),
(55, 'BPO Summit 2', '2018-10-15', 'Guatemala', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

DROP TABLE IF EXISTS `participante`;
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
  `estatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`id`, `nombre`, `apellido_1`, `apellido_2`, `especialidad`, `colegiado`, `celular`, `email`, `ciudad`, `pais`, `direccion`, `telefono`, `asistencia`, `estatus`) VALUES
(10, 'Yanuelwwwww', 'Leal2', 'Tortoza2', 'Programacion2', '12345', '04166228987', 'yanueltexx@gmail.com', 'Caracas2', 'Venezuela2', 'Los Teques2', '3234234234234', 'Sin asistencia', 1),
(15, 'Yanuel Prueba', 'Leal', 'Tortoza', 'Programacion', '550321', '04166228987', 'prueba@esprueba.com', 'Caracas', 'Venezuela', 'Los Teques', '0416622898777', 'Sin asistencia', 1),
(18, 'Yanuel P1', 'Leal P1', 'Tortoza P1', 'Programado P1', '123456789', '1112312312312', 'Prueba1@prueba1.com', 'Los teques', 'Venezuela', 'los teques', '3234234234234', 'Con asistencia', 1),
(19, 'Yanuel P2', 'Leal P2', 'Tortoza P2', 'Programado P2', '123456789', '1112312312312', 'Prueba2@prueba.com', 'Los teques', 'Venezuela3', 'Los Teques', '0416622898777', 'Sin asistencia', 1),
(20, 'Yanuel P2', 'Leal P2', 'Tortoza P2', 'Programado P2', '123456789', '04166228987', 'Prueba2@prueba1.com', 'Los teques', 'Venezuela3', 'Los Teques', '04126515', 'Con asistencia', 1),
(24, 'Dariana', 'Garcia', 'Martinez', 'Web Master', '852', '04123971680', 'dariana@palmera.marketing', 'Caracas', 'Venezuela', 'Altamira', '02128374657', 'Con asistencia', 1),
(30, 'vielman', 'paredes', 'espinoza', 'medico', '2224', '42525245', 'vielman2@palmera.marketing', 'caracas', 'venezuela', 'altamira', '45454545', 'Sin asistencia', 1),
(31, 'Yanuel', 'Leal', 'Tortoza', 'Programacion', '0123456', '04166228987', 'yanuel@palmera.marketing', 'Caracas', 'Venezuela', 'Los Teques', '02123216202', 'Con asistencia', 1),
(33, 'vielman', 'paredes', 'espinoza', 'medico', '2224', '42525245', 'vielman@palmera.marketing', 'caracas', 'venezuela', 'altamira', '45454545', 'Con asistencia', 1),
(41, 'Ana MarÃ¬a', 'Palacios', 'Moreno', 'OdontologÃ­a', '413258', '04125427709', 'carmenmende55@gmail.com', 'Caracas', 'Colombia', 'La Candelaria', '04126104574', 'Con asistencia', 1),
(47, 'Angel', 'Palacios', 'Mendez', 'pediatria', '963241', '04128524712', 'mileydi@palmera.marketing', 'Caracas', 'Venezuela', 'victaria', '041485473201', 'Con asistencia', 1),
(48, 'Myriam', 'pereez', 'olivares', 'ginecologÃ­a', '063818', '04125427709', 'daniel@palmera.marketing', 'BogotÃ¡', 'Colombia', 'La Candelaria', '04126104574', 'Con asistencia', 1),
(49, 'Daniela', 'Palacios', 'Ãturbe', 'OdontologÃ­a', '044618', '04125427709', 'mileidysantos@yahoo.com', 'BogotÃ¡', 'Colombia', 'Calle 49', '02129847412', 'Sin asistencia', 1),
(51, 'Yanuel', 'Leal', 'Tortoza', 'Programador', '20746625', '04166228987', 'yanueltex@gmail.com', 'Los teques', 'Venezuela', 'Los Teques', '02123216202', 'Con asistencia', 1),
(52, 'Dariana', 'Garcia', 'Martinez', 'Web master', '153', '04169986532', 'darimartinez_26@hotmail.com', 'Caracas', 'Venezuela', 'Altamira', '02123659874', 'Con asistencia', 1),
(53, 'Luis', 'Hernadez', 'Perez', 'Dermatologo', '785', '04169986532', 'luis@hotmail.com', 'Valencia', 'Venezuela', 'Las palmeras', '02120529974', 'Con asistencia', 1),
(54, 'Alejandro', 'Tortoza', 'Leal', 'Programador', '21746625', '04166228987', 'neongelion@hotmail.com', 'Los teques', 'Venezuela', 'Los Teques', '3234234234234', 'Con asistencia', 1),
(55, 'Ana MaeÃ­a', 'PerÃ©z', 'Monasterios', 'PediatrÃ­a', '061718', '04125427709', 'mileidy.santos@gmail.com', 'Caracas', 'Venezuela', 'Plaza Venezuela', '041485473201', 'Sin asistencia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
CREATE TABLE `respuesta` (
  `id` int(255) NOT NULL,
  `id_pregunta` int(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `id_pregunta`, `descripcion`) VALUES
(125, 85, 'Mucho'),
(124, 84, 'Nada'),
(123, 84, 'Poco'),
(122, 84, 'Bastante'),
(47, 61, 'Opcion2'),
(46, 61, 'Opcion1'),
(127, 85, 'Poco'),
(121, 84, 'Mucho'),
(120, 83, 'Nada'),
(119, 83, 'Poco'),
(38, 57, 'Opcion3'),
(37, 57, 'Opcion2'),
(36, 57, 'Opcion1'),
(126, 85, 'Bastante'),
(53, 64, '1'),
(54, 64, '2'),
(55, 64, '3'),
(56, 64, '4'),
(57, 65, '1'),
(58, 65, '2'),
(128, 85, 'Nada'),
(60, 67, '11'),
(61, 67, '22'),
(65, 69, 'Verde'),
(66, 69, 'Azul'),
(67, 69, 'Amarillo'),
(68, 69, 'Rojo'),
(148, 90, 'pollo con vegetales'),
(147, 90, 'pizza'),
(146, 90, 'lasaÃ±a'),
(84, 75, 'Con leche'),
(83, 74, 'Viernes'),
(82, 74, 'Jueves'),
(81, 74, 'Lunes'),
(80, 74, 'Sabado'),
(85, 75, 'Guayoyo'),
(86, 75, 'Mokachino'),
(87, 75, 'Late Light'),
(88, 75, 'Late Vainilla'),
(89, 75, 'Chocalate'),
(90, 76, 'Respuesta Libre'),
(91, 77, 'AzÃºl'),
(92, 77, 'Morado'),
(93, 77, 'MarrÃ³n'),
(94, 77, 'Gris'),
(95, 77, 'Negro'),
(96, 77, 'Rojo'),
(97, 77, 'Rosado'),
(108, 79, 'Vacaciones permanentes'),
(107, 79, 'Super casas'),
(106, 79, 'Amor'),
(105, 79, 'Dinero'),
(109, 79, 'Super autos'),
(110, 79, 'Super poderes'),
(118, 83, 'Mucho'),
(112, 81, 'Respuesta Libre'),
(113, 82, '11'),
(114, 82, '12'),
(115, 82, '13'),
(116, 82, '14'),
(117, 82, '15'),
(129, 86, 'Mucho'),
(130, 86, 'Bastante'),
(131, 86, 'Poco'),
(132, 86, 'Nada'),
(133, 87, 'Compromiso'),
(134, 87, 'Respeto'),
(135, 87, 'InterÃ©s por las asignaciones'),
(136, 88, 'Carolina Vila'),
(137, 88, 'Alfredo Ceballos'),
(138, 88, 'Simon Gabay'),
(139, 88, 'Mayli Mesa'),
(140, 88, 'Daniel Molina'),
(141, 88, 'Jose Pena'),
(142, 89, 'Dinero'),
(143, 89, 'Reconocimiento'),
(144, 89, 'Aprendizaje'),
(145, 89, 'Crecimiento Profesional '),
(149, 90, 'crema de vegetales'),
(150, 91, 'Naranja'),
(151, 91, 'Melon'),
(152, 91, 'Parchita'),
(153, 91, 'Guanabana'),
(154, 91, 'patilla'),
(155, 92, 'Edificio'),
(156, 92, 'Casa'),
(157, 92, 'choza'),
(158, 92, 'rancho'),
(159, 92, 'palafito'),
(160, 93, 'Respuesta Libre'),
(161, 94, 'Reto Cooking'),
(162, 94, 'Vestido de novia'),
(163, 94, 'Game of thrones'),
(164, 94, 'Liga BBVA'),
(165, 94, 'FÃºtbol EspaÃ±ol'),
(166, 95, 'casual'),
(167, 95, 'deportivo'),
(168, 95, 'formal'),
(169, 95, 'escalada'),
(170, 96, 'Perros'),
(171, 96, 'Aves'),
(172, 96, 'Gatos'),
(173, 96, 'Reptiles'),
(174, 96, 'Roedores'),
(178, 98, 'Respuesta Libre'),
(179, 99, 'Opcion 1'),
(180, 99, 'Opcion 2'),
(181, 99, 'Opcion ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_evento`
--

DROP TABLE IF EXISTS `respuesta_evento`;
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
(50, 38, 73, 'Me siento muy bien'),
(51, 44, 74, ''),
(52, 44, 78, ''),
(59, 43, 86, ''),
(60, 43, 80, ''),
(61, 43, 89, ''),
(62, 43, 90, 'Te odio!!!!'),
(63, 55, 86, ''),
(64, 55, 87, ''),
(65, 55, 89, ''),
(66, 55, 80, ''),
(67, 55, 89, ''),
(68, 55, 90, 'Teodio'),
(69, 72, 92, ''),
(70, 65, 97, ''),
(71, 71, 91, ''),
(72, 71, 98, ''),
(73, 72, 94, ''),
(74, 72, 110, ''),
(75, 72, 111, 'Te odio'),
(76, 65, 92, ''),
(77, 65, 105, ''),
(78, 65, 111, 'Te odio'),
(79, 55, 91, ''),
(80, 55, 105, ''),
(81, 55, 110, ''),
(82, 55, 111, 'CONOOOOO EEEH TU MADREEEEE!!!!!'),
(83, 72, 92, ''),
(84, 72, 108, ''),
(85, 79, 91, ''),
(86, 79, 108, ''),
(87, 79, 94, ''),
(88, 79, 106, ''),
(89, 79, 126, ''),
(90, 79, 122, ''),
(91, 79, 128, ''),
(92, 79, 124, ''),
(93, 79, 118, ''),
(94, 79, 128, ''),
(95, 79, 120, ''),
(96, 79, 129, ''),
(97, 79, 133, ''),
(98, 79, 140, ''),
(99, 79, 142, ''),
(100, 79, 125, ''),
(101, 79, 124, ''),
(102, 79, 125, ''),
(103, 79, 124, ''),
(104, 71, 120, ''),
(105, 71, 142, ''),
(106, 85, 118, ''),
(107, 85, 122, ''),
(108, 85, 128, ''),
(109, 85, 131, ''),
(110, 85, 135, ''),
(111, 85, 138, ''),
(112, 85, 145, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
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
(27, 'sss@palmera.marketing', 'ssss', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 1, 0),
(28, 'mileidy.santos@gmail.com', 'Mimi San', '64178bf83cb7cc8292b626bc65ae89ce', 'admin', 1, 1),
(29, 'prueba2@prueba.com', 'prueba2', '96080775c113b0e5c3e32bdd26214aec', 'admin', 1, 1),
(30, 'mariale@palmera.marketing', 'Mariale FernÃ¡ndez', 'bc3b03752471f39d94ad3a8d9ae70706', 'admin', 1, 0),
(31, 'rodolfo@palmera.marketing', 'Rodolfo Mendez ', '6a97eec79683f8582de1c9531c858682', 'admin', 1, 0),
(32, 'daniel@palmera.marketing', 'daniel', '972c1cd7b1ef449a8eaccffa6e7e17ff', 'superadmin', 0, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_respuesta_evento`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `vista_respuesta_evento`;
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
,`estatus` int(1)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_respuesta_evento`
--
DROP TABLE IF EXISTS `vista_respuesta_evento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_respuesta_evento`  AS  select `rese`.`id_participante` AS `id_participante`,`rese`.`id_respuesta` AS `id_respuesta`,`rese`.`respuesta_libre` AS `respuesta_libre`,`res`.`id_pregunta` AS `id_pregunta`,`res`.`descripcion` AS `descripcion`,`cues`.`id_evento` AS `id_evento`,`cues`.`pregunta` AS `pregunta`,`cues`.`tipo` AS `tipo`,`liste`.`nombre` AS `nombre`,`liste`.`fecha` AS `fecha`,`liste`.`direccion` AS `direccion`,`liste`.`estatus` AS `estatus` from (((`respuesta_evento` `rese` left join `respuesta` `res` on((`rese`.`id_respuesta` = `res`.`id`))) left join `cuestionario` `cues` on((`res`.`id_pregunta` = `cues`.`id`))) left join `lista_evento` `liste` on((`cues`.`id_evento` = `liste`.`id`))) ;

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
-- Indices de la tabla `custom_fields`
--
ALTER TABLE `custom_fields`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash_id` (`hash_id`);

--
-- Indices de la tabla `lista_evento`
--
ALTER TABLE `lista_evento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- AUTO_INCREMENT de la tabla `certificado`
--
ALTER TABLE `certificado`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `evento_participante`
--
ALTER TABLE `evento_participante`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `evento_usuario`
--
ALTER TABLE `evento_usuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `landing_registro`
--
ALTER TABLE `landing_registro`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `lista_evento`
--
ALTER TABLE `lista_evento`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT de la tabla `respuesta_evento`
--
ALTER TABLE `respuesta_evento`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
