<?php

error_reporting(0);

include "../model/Encuesta.php";
include "../model/Evento.php";


if (isset($_POST)){
	$encuesta = new Encuesta();
	switch ($_POST["tipo"]) {
		case 'select':
			$evento = new Evento();
			echo json_encode($evento->listar_eventos($_POST));
			break;

		case 'registrar':
			echo json_encode($encuesta->registrar_encuesta($_POST));
			break;

		case 'modificar':
			echo json_encode($encuesta->modificar_encuesta($_POST));
			break;

		case 'eliminar':
			echo json_encode($encuesta->eliminar_pregunta($_POST));
			break;

		case 'buscar-respuestas':
			echo json_encode($encuesta->listar($_POST, "respuesta", "id_pregunta"));
			break;

		default:
			echo json_encode($encuesta->listar($_POST, "cuestionario", "id_evento"));
			break;
	}
}
?>
