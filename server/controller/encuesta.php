<?php

error_reporting(0);

include "../model/Encuesta.php";
include "../model/Evento.php";


if (isset($_POST)){
	$participante = new Participante();
	switch ($_POST["tipo"]) {
		case 'select':
			$evento = new Evento();
			echo json_encode($evento->listar_eventos());
			break;

		case 'registrar':
			echo json_encode($participante->registrar_participante($_POST));
			break;

		case 'modificar':
			echo json_encode($participante->modificar_participante($_POST));
			break;

		case 'eliminar':
			echo json_encode($participante->estatus_participante($_POST));
			break;
		
		default:
			echo json_encode($participante->listar_participantes($_POST));
			break;
	}
}
?>