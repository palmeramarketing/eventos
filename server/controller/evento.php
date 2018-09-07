<?php

error_reporting(0);

include "../model/Evento.php";
include "../model/Usuario.php";

if (isset($_POST)){
	$evento = new Evento();
	switch ($_POST["tipo"]) {
		case 'registrar':
			$result = $evento->registrar_evento($_POST);
			if ($result["status"] == 200) {
				$_POST["id_evento"] = $result["data"];
				$usuario = new Usuario();
				$usuario->asignar_evento($_POST);
			}
			echo json_encode($result);
			break;

		case 'modificar':
			echo json_encode($evento->modificar_evento($_POST));
			break;

		case 'eliminar':
			echo json_encode($evento->estatus_evento($_POST));
			break;

		case 'imprimir_certificado_evento':
			$evento->imprimir_certificado_evento($_POST["id_certificado"],true);
			break;

		default:
			echo json_encode($evento->listar_eventos($_POST));
			break;
	}
}
?>
