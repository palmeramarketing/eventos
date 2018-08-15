<?php

error_reporting(0);

include "../model/Evento.php";

if (isset($_POST)){
	$evento = new Evento();
	switch ($_POST["tipo"]) {
		case 'registrar':
			echo json_encode($evento->registrar_evento($_POST));
			break;

		case 'modificar':
			echo json_encode($evento->modificar_evento($_POST));
			break;

		case 'eliminar':
			echo json_encode($evento->estatus_evento($_POST));
			break;

		default:
			echo json_encode($evento->listar_eventos($_POST));
			break;
	}
}
?>
