<?php

error_reporting(0);

include "../model/Graficar.php";

if (isset($_POST)){
	$graficar = new Graficar();
	switch ($_POST["tipo"]) {
		case 'evento':
			echo json_encode($graficar->getAllEvent($_POST["id_event"]));
			break;

		case 'registrar':
			echo json_encode($graficar->registrar_encuesta($_POST));
			break;

		case 'modificar':
			echo json_encode($graficar->modificar_encuesta($_POST));
			break;

		case 'eliminar':
			echo json_encode($graficar->eliminar_pregunta($_POST));
			break;

		case 'buscar-respuestas':
			echo json_encode($graficar->listar($_POST, "respuesta", "id_pregunta"));
			break;
		
		default:
			echo json_encode($graficar->listar($_POST, "cuestionario", "id_evento"));
			break;
	}
}
?>