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

		case 'registrar_encuesta':
			echo json_encode($encuesta->registrar_encuesta($_POST));
			break;

		case 'registrar':
			echo json_encode($encuesta->registrar_pregunta($_POST));
			break;

		case 'get_cuestionario':
			echo json_encode($encuesta->get_cuestionario($_POST["id_cuestionario"]));
			break;

		case 'modificar':
			echo json_encode($encuesta->modificar_encuesta($_POST));
			break;

		case 'cambiar_estatus_encuesta':
			echo json_encode($encuesta->cambiar_estatus_encuesta($_POST["id"]));
			break;

		case 'eliminar':
			echo json_encode($encuesta->eliminar_pregunta($_POST));
			break;

		case 'eliminar_respuesta':
			echo json_encode($encuesta->eliminar_respuesta($_POST));
			break;

		case 'buscar-respuestas':
			echo json_encode($encuesta->listar($_POST, "respuesta", "id_pregunta"));
			break;

		case 'buscar-cuestionario':
			echo json_encode($encuesta->listar($_POST, "cuestionario", "id_evento"));
			break;

		default:
			echo json_encode($encuesta->listar_encuesta($_POST['id_evento']));
			break;
	}
}
?>
