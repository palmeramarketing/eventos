<?php
require "../model/conexion.php";
include "../model/cliente.php";
include "../model/gestion_evento.php";

error_reporting(0);

$cliente = new Cliente();
$gestion_evento = new Gestion_Evento();

switch ($_POST["accion"]) {

	case 'get_event_ready':
		echo json_encode($gestion_evento->preparar_evento($cliente->get_event_ready($_POST["id_event"])));
		break;

	case 'check_and_get_all_event':
		$evento = $gestion_evento->comprobar_evento_existente();
		if ($evento["status"] == 404) {
			echo json_encode($cliente->get_all_event());
		}else{
			echo json_encode($evento);
		}
		break;

	case 'visualize_event':
		echo json_encode($gestion_evento->visualize_event());
		break;

	case 'get_event':
		echo json_encode($cliente->get_event($_POST["id_event"]));
		break;

	case 'get_all_poll':
		echo json_encode($cliente->get_all_poll($_POST["id_event"]));
		break;

	case 'get_user':
		echo json_encode($cliente->get_user($_POST["id_user"]));
		break;

	case 'buscar_un_participante':
		echo json_encode($gestion_evento->buscar_un_participante($_POST["email"]));
		break;

	case 'registrar_nuevo_participante':
		echo json_encode($gestion_evento->registrar_nuevo_participante($_POST["datos"]));
		break;

	case 'cargar_encuesta':
		echo json_encode($gestion_evento->cargar_encuesta());
		break;
	
	default:
		# code...
		break;
}
?>