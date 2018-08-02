<?php
require "../db/conexion.php";
include "../model/modelo_encuesta.php";

error_reporting(0);

$modelo_encuesta = new Encuesta();

switch ($_POST["accion"]) {

	case 'buscar_participante':
		echo json_encode($modelo_encuesta->buscar_participante($_POST["datos"]));
		break;

	case 'comprobar_cargar':
		echo json_encode($modelo_encuesta->comprobar_cargar($_POST["datos"]));
		break;
	
	default:
		# code...
		break;
}
?>